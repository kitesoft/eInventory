unit EditSubStockFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditSubStock = class(TForm)
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
    cdsSubStock: TClientDataSet;
    dsSubStock: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FSubStockCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetSubStockCode(const Value: integer);
    procedure SetAppParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property SubStockCode : integer read FSubStockCode write SetSubStockCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
  end;

var
  frmEditSubStock: TfrmEditSubStock;



implementation

uses CdeLIB,STDLIB;

{$R *.dfm}

{ TfrmEditSubStock }

procedure TfrmEditSubStock.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditSubStock.SetSubStockCode(const Value: integer);
begin
  FSubStockCode := Value;
  cdsSubStock.Data :=GetDataSet('select * from ICMTTWH1 where WH1COD='+IntToStr(FSubStockCode));
end;

procedure TfrmEditSubStock.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditSubStock.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsSubStock.State in [dsinsert] then
  begin
    IsNew := true;
    cdsSubStock.FieldByName('WH1COD').AsInteger :=getCdeRun('SETTING','RUNNING','WH1COD','CDENM1');
    if cdsSubStock.FieldByName('WH1ACT').IsNull then
        cdsSubStock.FieldByName('WH1ACT').AsString:='A';

    setEntryUSRDT(cdsSubStock,FAppParameter.UserID);
    setSystemCMP(cdsSubStock,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsSubStock.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsSubStock,FAppParameter.UserID);



  if cdsSubStock.State in [dsedit,dsinsert] then cdsSubStock.Post;
  if cdsSubStock.ChangeCount>0 then
  begin
    UpdateDataset(cdsSubStock,'select * from ICMTTWH1 where WH1COD='+IntToStr(FSubStockCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','WH1COD','CDENM1');

  end;

   FSubStockCode:= cdsSubStock.FieldByName('WH1COD').AsInteger;
   Close;
end;

procedure TfrmEditSubStock.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.







