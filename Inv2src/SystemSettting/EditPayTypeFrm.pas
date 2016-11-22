unit EditPayTypeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditPayType = class(TForm)
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
    cdsPayType: TClientDataSet;
    dsPayType: TDataSource;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FPayTypeCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetPayTypeCode(const Value: integer);
    procedure SetAppParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property PayTypeCode:integer read FPayTypeCode write SetPayTypeCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
  end;

var
  frmEditPayType: TfrmEditPayType;

implementation

uses STK_LIB, CdeLIB, STDLIB;

{$R *.dfm}

{ TfrmEditPayType }

procedure TfrmEditPayType.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditPayType.SetPayTypeCode(const Value: integer);
begin
  FPayTypeCode := Value;
  cdsPayType.Data:=GetDataSet('select * from ICMTTPAT where PATCOD='+IntToStr(FPayTypeCode));
end;

procedure TfrmEditPayType.btnSaveClick(Sender: TObject);
var IsNew : boolean;
    strFormat : string;
begin
  IsNew := false;


  if cdsPayType.State in [dsinsert] then
  begin
    IsNew := true;
    cdsPayType.FieldByName('PATCOD').AsInteger :=getCdeRun('SETTING','RUNNING','PATCOD','CDENM1');
    if cdsPayType.FieldByName('PATACT').IsNull then
        cdsPayType.FieldByName('PATACT').AsString:='A';

    strFormat := getStrFormat(getCde('SETTING','RUNNING','PATCOD_LEN','CDENM1'));

    if cdsPayType.FieldByName('PATCDE').IsNull then
      cdsPayType.FieldByName('PATCDE').AsString:=FormatCurr(strFormat,cdsPayType.FieldByName('PATCOD').AsInteger);


    setEntryUSRDT(cdsPayType,FAppParameter.UserID);
    setSystemCMP(cdsPayType,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsPayType.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsPayType,FAppParameter.UserID);



  if cdsPayType.State in [dsedit,dsinsert] then cdsPayType.Post;
  if cdsPayType.ChangeCount>0 then
  begin
    UpdateDataset(cdsPayType,'select * from ICMTTPAT where PATCOD='+IntToStr(FPayTypeCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','PATCOD','CDENM1');

  end;

   FPayTypeCode:= cdsPayType.FieldByName('PATCOD').AsInteger;
   Close;
end;

procedure TfrmEditPayType.btnCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmEditPayType.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.
