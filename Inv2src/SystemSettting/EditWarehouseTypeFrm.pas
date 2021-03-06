unit EditWarehouseTypeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditWarehouseType = class(TForm)
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
    cdsStockType: TClientDataSet;
    dsStockType: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FStockTypeCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetStockTypeCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property StockTypeCode : integer read FStockTypeCode write SetStockTypeCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;

  end;

var
  frmEditWarehouseType: TfrmEditWarehouseType;

implementation

uses CdeLIB,  STDLIB;

{$R *.dfm}

procedure TfrmEditWarehouseType.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditWarehouseType.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsStockType.State in [dsinsert] then
  begin
    IsNew := true;
    cdsStockType.FieldByName('WTYCOD').AsInteger :=getCdeRun('SETTING','RUNNING','WTYCOD','CDENM1');
    if cdsStockType.FieldByName('WTYACT').IsNull then
        cdsStockType.FieldByName('WTYACT').AsString:='A';

    setEntryUSRDT(cdsStockType,FAppParameter.UserID);
    setSystemCMP(cdsStockType,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsStockType.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsStockType,FAppParameter.UserID);



  if cdsStockType.State in [dsedit,dsinsert] then cdsStockType.Post;
  if cdsStockType.ChangeCount>0 then
  begin
    UpdateDataset(cdsStockType,'select * from ICMTTWTY where WTYCOD='+IntToStr(FStockTypeCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','WTYCOD','CDENM1');

  end;

   FStockTypeCode:= cdsStockType.FieldByName('WTYCOD').AsInteger;
   Close;
end;

procedure TfrmEditWarehouseType.SetAppParameter(
  const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditWarehouseType.SetStockTypeCode(const Value: integer);
begin
  FStockTypeCode := Value;
  cdsStockType.Data :=GetDataSet('select * from ICMTTWTY where WTYCOD='+IntToStr(FStockTypeCode));

end;

procedure TfrmEditWarehouseType.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.
