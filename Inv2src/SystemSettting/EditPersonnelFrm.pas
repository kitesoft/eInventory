unit EditPersonnelFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB, RzCmboBx;

type
  TfrmEditPersonnel = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsPerson: TClientDataSet;
    dsPerson: TDataSource;
    cmbPosition: TRzComboBox;
    RzLabel2: TRzLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    FPersonnelCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetPersonnelCode(const Value: integer);
    procedure SetAppParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property PersonnelCode:integer read FPersonnelCode write SetPersonnelCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
  end;

var
  frmEditPersonnel: TfrmEditPersonnel;

implementation

uses CdeLIB, STDLIB;

{$R *.dfm}

{ TfrmEditPersonnel }

procedure TfrmEditPersonnel.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditPersonnel.SetPersonnelCode(const Value: integer);
begin
  FPersonnelCode := Value;
  cdsPerson.Data :=GetDataSet('select * from ICMTTPER where PERCOD='+IntToStr(FPersonnelCode));
end;

procedure TfrmEditPersonnel.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsPerson.State in [dsinsert] then
  begin
    IsNew := true;
    cdsPerson.FieldByName('PERCOD').AsInteger :=getCdeRun('SETTING','RUNNING','PERCOD','CDENM1');
    cdsPerson.FieldByName('PERCDE').AsString :=FormatCurr('0000',cdsPerson.FieldByName('PERCOD').AsInteger);

    if cdsPerson.FieldByName('PERACT').IsNull then
        cdsPerson.FieldByName('PERACT').AsString:='A';

    setEntryUSRDT(cdsPerson,FAppParameter.UserID);
    setSystemCMP(cdsPerson,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;


  if not ( cdsPerson.State in [dsinsert,dsedit]) then cdsPerson.Edit;
  cdsPerson.FieldByName('PERPOS').AsInteger :=StrToInt( TString(cmbPosition.Items.Objects[cmbPosition.ItemIndex]).Str);
  cdsPerson.Post;

  if cdsPerson.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsPerson,FAppParameter.UserID);


  if cdsPerson.State in [dsedit,dsinsert] then cdsPerson.Post;
  if cdsPerson.ChangeCount>0 then
  begin
    UpdateDataset(cdsPerson,'select * from ICMTTPER where PERCOD='+IntToStr(FPersonnelCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','PERCOD','CDENM1');

  end;

   FPersonnelCode:= cdsPerson.FieldByName('PERCOD').AsInteger;
   Close;
end;

procedure TfrmEditPersonnel.btnCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmEditPersonnel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

procedure TfrmEditPersonnel.FormShow(Sender: TObject);
var cdsTemp : TClientDataSet;
    defaultIndex:integer;
begin

  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet('select 0 as POSCOD,''-- All --'' as POSNAM union select POSCOD,POSNAM from ICMTTPOS where POSACT=''A''');
  defaultIndex:=loadCmbItems(cmbPosition.Items,cdsTemp,'POSCOD','POSNAM',cdsPerson.fieldbyname('PERPOS').AsString);

  cmbPosition.ItemIndex:=defaultIndex;
end;

end.
