unit EditProjectFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, CommonLIB,StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel;

type
  TfrmEditProject = class(TForm)
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
    cdsProject: TClientDataSet;
    dsProject: TDataSource;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FProjectCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetProjectCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property ProjectCode : integer    read FProjectCode write SetProjectCode;
    property AppParameter : TDLLParameter  read FAppParameter write SetAppParameter;
  end;

var
  frmEditProject: TfrmEditProject;

implementation

uses CdeLIB, STDLIB;



{$R *.dfm}

{ TfrmEditProject }

procedure TfrmEditProject.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditProject.SetProjectCode(const Value: integer);
begin
  FProjectCode := Value;
  cdsProject.Data :=GetDataSet('select * from ICMTTJOB where JOBCOD='+IntToStr(FProjectCode));  
end;

procedure TfrmEditProject.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsProject.State in [dsinsert] then
  begin
    IsNew := true;
    cdsProject.FieldByName('JOBCOD').AsInteger :=getCdeRun('SETTING','RUNNING','JOBCOD','CDENM1');
    if cdsProject.FieldByName('JOBACT').IsNull then
        cdsProject.FieldByName('JOBACT').AsString:='A';

    setEntryUSRDT(cdsProject,FAppParameter.UserID);
    setSystemCMP(cdsProject,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsProject.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsProject,FAppParameter.UserID);



  if cdsProject.State in [dsedit,dsinsert] then cdsProject.Post;
  if cdsProject.ChangeCount>0 then
  begin
    UpdateDataset(cdsProject,'select * from ICMTTJOB where JOBCOD='+IntToStr(FProjectCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','JOBCOD','CDENM1');

  end;

   FProjectCode:= cdsProject.FieldByName('JOBCOD').AsInteger;
   Close;
end;

procedure TfrmEditProject.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditProject.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.
