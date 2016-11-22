unit EditIssueReqTypeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, CommonLIB,StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel;

type
  TfrmEditIssueReqType = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    RzDBEdit2: TRzDBEdit;
    cdsIssueReqType: TClientDataSet;
    dsIssueReqType: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FIssueReqTypCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetIssueReqTypCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property IssueReqTypCode : integer   read FIssueReqTypCode write SetIssueReqTypCode;
    property AppParameter : TDLLParameter  read FAppParameter write SetAppParameter;
  end;

var
  frmEditIssueReqType: TfrmEditIssueReqType;

implementation

uses STDLIB, CommonUtils, CdeLIB;

{$R *.dfm}

{ TfrmEditIssueReqType }

procedure TfrmEditIssueReqType.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditIssueReqType.SetIssueReqTypCode(const Value: integer);
begin
  FIssueReqTypCode := Value;
  cdsIssueReqType.Data :=GetDataSet('select * from ICMTTIRT where IRTCOD='+IntToStr(FIssueReqTypCode));
end;

procedure TfrmEditIssueReqType.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditIssueReqType.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsIssueReqType.State in [dsinsert] then
  begin
    IsNew := true;
    cdsIssueReqType.FieldByName('IRTCOD').AsInteger :=getCdeRun('SETTING','RUNNING','IRTCOD','CDENM1');
    if cdsIssueReqType.FieldByName('IRTACT').IsNull then
        cdsIssueReqType.FieldByName('IRTACT').AsString:='A';

    setEntryUSRDT(cdsIssueReqType,FAppParameter.UserID);
    setSystemCMP(cdsIssueReqType,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsIssueReqType.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsIssueReqType,FAppParameter.UserID);



  if cdsIssueReqType.State in [dsedit,dsinsert] then cdsIssueReqType.Post;
  if cdsIssueReqType.ChangeCount>0 then
  begin
    UpdateDataset(cdsIssueReqType,'select * from ICMTTIRT where IRTCOD='+IntToStr(FIssueReqTypCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','IRTCOD','CDENM1');

  end;

   FIssueReqTypCode:= cdsIssueReqType.FieldByName('IRTCOD').AsInteger;
   Close;
end;

procedure TfrmEditIssueReqType.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.
