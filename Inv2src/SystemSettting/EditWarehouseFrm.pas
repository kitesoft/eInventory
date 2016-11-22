unit EditWarehouseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditWarehouse = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsWarehouse: TClientDataSet;
    dsWarehouse: TDataSource;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FWarehouseCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetWarehouseCode(const Value: integer);
    procedure SetAppParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property WarehouseCode : integer read FWarehouseCode write SetWarehouseCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
  end;

var
  frmEditWarehouse: TfrmEditWarehouse;

implementation

uses CdeLIB, STDLIB;

{$R *.dfm}

{ TfrmEditWarehouse }

procedure TfrmEditWarehouse.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
  cdsWarehouse.Data :=GetDataSet('select * from ICMTTWH0 where WH0COD='+IntToStr(WarehouseCode));
end;

procedure TfrmEditWarehouse.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

procedure TfrmEditWarehouse.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsWarehouse.State in [dsinsert] then
  begin
    IsNew := true;
    cdsWarehouse.FieldByName('WH0COD').AsInteger :=getCdeRun('SETTING','RUNNING','WH0COD','CDENM1');
    if cdsWarehouse.FieldByName('WH0ACT').IsNull then
        cdsWarehouse.FieldByName('WH0ACT').AsString:='A';

    setEntryUSRDT(cdsWarehouse,FAppParameter.UserID);
    setSystemCMP(cdsWarehouse,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsWarehouse.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsWarehouse,FAppParameter.UserID);



  if cdsWarehouse.State in [dsedit,dsinsert] then cdsWarehouse.Post;
  if cdsWarehouse.ChangeCount>0 then
  begin
    UpdateDataset(cdsWarehouse,'select * from ICMTTWH0 where WH0COD='+IntToStr(FWarehouseCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','WH0COD','CDENM1');

  end;

   FWarehouseCode:= cdsWarehouse.FieldByName('WH0COD').AsInteger;
   Close;
end;

procedure TfrmEditWarehouse.btnCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmEditWarehouse.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

end.


