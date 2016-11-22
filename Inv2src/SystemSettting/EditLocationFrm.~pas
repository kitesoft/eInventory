unit EditLocationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditLocation = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsLocation: TClientDataSet;
    dsLocation: TDataSource;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBMemo1: TRzDBMemo;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FLocationCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetLocationCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property LocationCode : integer read FLocationCode write SetLocationCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
    
  end;

var
  frmEditLocation: TfrmEditLocation;

implementation

uses CdeLIB, STDLIB;

{$R *.dfm}

procedure TfrmEditLocation.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditLocation.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsLocation.State in [dsinsert] then
  begin
    IsNew := true;
    cdsLocation.FieldByName('LOCCOD').AsInteger :=getCdeRun('SETTING','RUNNING','LOCCOD','CDENM1');
    if cdsLocation.FieldByName('LOCACT').IsNull then
        cdsLocation.FieldByName('LOCACT').AsString:='A';

    setEntryUSRDT(cdsLocation,FAppParameter.UserID);
    setSystemCMP(cdsLocation,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsLocation.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsLocation,FAppParameter.UserID);



  if cdsLocation.State in [dsedit,dsinsert] then cdsLocation.Post;
  if cdsLocation.ChangeCount>0 then
  begin
    UpdateDataset(cdsLocation,'select * from ICMTTLOC where LOCCOD='+IntToStr(FLocationCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','LOCCOD','CDENM1');

  end;

   FLocationCode:= cdsLocation.FieldByName('LOCCOD').AsInteger;
   Close;
end;

procedure TfrmEditLocation.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;
procedure TfrmEditLocation.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditLocation.SetLocationCode(const Value: integer);
begin
  FLocationCode := Value;
  cdsLocation.Data := GetDataSet('select * from ICMTTLOC where LOCCOD='+IntToStr(FLocationCode));
end;

end.
