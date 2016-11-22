unit EditWarehouseProdFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CommonLIB, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit,
  RzDBEdit, RzButton, RzLabel, ExtCtrls, RzPanel, Buttons, RzCmboBx;

type
  TfrmEditWarehouseProd = class(TForm)
    RzPanel1: TRzPanel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    cdsWarehouseProd: TClientDataSet;
    dsWarehouseProd: TDataSource;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    btnSearch: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzLabel11: TRzLabel;
    cmbProdType: TRzComboBox;
    RzLabel12: TRzLabel;
    cmbProdGroup: TRzComboBox;
    RzLabel24: TRzLabel;
    cmbMainUnit: TRzComboBox;
    RzLabel25: TRzLabel;
    cmbProdUnit: TRzComboBox;
    RzLabel3: TRzLabel;
    cmbUnitPacking: TRzComboBox;
    RzBitBtn1: TRzBitBtn;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzEdit4: TRzEdit;
    RzBitBtn4: TRzBitBtn;
    lbWarehouse: TLabel;
    lbProdCode: TLabel;
    cdsProds: TClientDataSet;
    dsProds: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cmbProdUnitChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cmbUnitPackingChange(Sender: TObject);
  private
    FAppParameter: TDLLParameter;

    FProdCode: integer;
    FWarehouseCode: integer;
    FPacCode: integer;
    FUnitCode: integer;
    FStockCode: integer;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetWarehouseCode(const Value: integer);
    procedure SetPacCode(const Value: integer);
    procedure SetProdCode(const Value: integer);
    procedure SetUnitCode(const Value: integer);
    procedure SetStockCode(const Value: integer);

    procedure getProdUnit;
    procedure getProdPacking(UnitCode:integer);
    procedure getProdInfo(ProdCode:integer);


    { Private declarations }
  public
    { Public declarations }
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
    property WarehouseCode :integer read FWarehouseCode write SetWarehouseCode;
    property ProdCode : integer read FProdCode write SetProdCode;
    property UnitCode :integer read FUnitCode write SetUnitCode;
    property PacCode : integer read FPacCode write SetPacCode;
    property StockCode : integer read FStockCode write SetStockCode;

  end;

var
  frmEditWarehouseProd: TfrmEditWarehouseProd;

implementation

uses CdeLIB, CommonUtils, STDLIB;

{$R *.dfm}

procedure TfrmEditWarehouseProd.SetAppParameter(
  const Value: TDLLParameter);
begin
  FAppParameter := Value;
  Self.Caption := FAppParameter.Company+'-'+FAppParameter.Branch;  
end;

procedure TfrmEditWarehouseProd.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditWarehouseProd.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
  lbWarehouse.Caption := 'WH: '+IntToStr(FWarehouseCode);
end;

procedure TfrmEditWarehouseProd.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin
  IsNew := false;

  if cdsWarehouseProd.State in [dsinsert] then
  begin
    IsNew :=true;
    cdsWarehouseProd.FieldByName('STKWH0').AsInteger :=FWarehouseCode;
    if cdsWarehouseProd.FieldByName('STKACT').IsNull then
      cdsWarehouseProd.FieldByName('STKACT').AsString:='A';

    cdsWarehouseProd.FieldByName('STKCOD').AsInteger :=getCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');

    setEntryUSRDT(cdsWarehouseProd,FAppParameter.UserID);
    setSystemCMP(cdsWarehouseProd,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);
  end;

  if cdsWarehouseProd.State in [dsinsert,dsedit] then
  begin
    cdsWarehouseProd.FieldByName('STKWH0').AsInteger := FWarehouseCode;
    cdsWarehouseProd.FieldByName('STKPRD').AsInteger := FProdCode;
    cdsWarehouseProd.FieldByName('STKPCD').AsString := cdsProds.fieldbyname('PRDCDE').AsString;

    cdsWarehouseProd.FieldByName('STKUNI').AsInteger := StrToInt(TString(cmbProdUnit.Items.Objects[cmbProdUnit.ItemIndex]).Str);
    cdsWarehouseProd.FieldByName('STKPAC').AsInteger := StrToInt(TString(cmbUnitPacking.Items.Objects[cmbUnitPacking.ItemIndex]).Str);

    setModifyUSRDT(cdsWarehouseProd,FAppParameter.UserID);
  end;

  if cdsWarehouseProd.State in [dsedit,dsinsert] then cdsWarehouseProd.Post;
  if cdsWarehouseProd.ChangeCount>0 then
  begin
    try
      UpdateDataset(cdsWarehouseProd,'select * from ICMTTSTK  limit 0 ') ;

    except
      on ee:Exception do
        Application.MessageBox(pchar(ee.Message),pchar('Error'), MB_OK or MB_ICONERROR);
    end;
    if IsNew then
      setCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');

  end;

  FStockCode := cdsWarehouseProd.FieldByName('STKCOD').AsInteger;
  Close;
end;

procedure TfrmEditWarehouseProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

procedure TfrmEditWarehouseProd.SetPacCode(const Value: integer);
begin
  FPacCode := Value;
end;

procedure TfrmEditWarehouseProd.SetProdCode(const Value: integer);
begin
  FProdCode := Value;
  //
  //cdsWarehouseProd.Data:=GetDataSet('select * from ICMTTSTK where STKPRD='+IntToStr(FProdCode)+' and STKWH0='+IntToStr(FWarehouseCode)+' and STKUNI='+IntToStr(FUnitCode)+' and STKPAC='+IntToStr(FProdCode)+' ');
  cdsWarehouseProd.Data:=GetDataSet('select * from ICMTTSTK where STKCOD='+IntToStr(FStockCode));
  getProdInfo(FProdCode);
end;

procedure TfrmEditWarehouseProd.SetUnitCode(const Value: integer);
begin
  FUnitCode := Value;
end;

procedure TfrmEditWarehouseProd.SetStockCode(const Value: integer);
begin
  FStockCode := Value;
end;

procedure TfrmEditWarehouseProd.getProdUnit;
var cdsTemp : TClientDataSet;
begin
  try
    cdsTemp := TClientDataSet.Create(nil);
    cdsTemp.data := GetDataSet('select * from ICMTTUNI where UNIACT=''A'' order by UNICOD' );

    if cdsTemp.Active then
      if cdsTemp.RecordCount>0 then
      begin
        cmbProdUnit.ItemIndex := loadCmbItems(cmbProdUnit.Items,cdsTemp,'UNICOD','UNINAM',cdsWarehouseProd.fieldbyname('STKUNI').AsString);
        getProdPacking(cdsWarehouseProd.fieldbyname('STKUNI').AsInteger);
      end;
  finally
    cdsTemp.Free;
  end;
end;

procedure TfrmEditWarehouseProd.FormShow(Sender: TObject);
begin
  getProdUnit;
end;

procedure TfrmEditWarehouseProd.getProdPacking(UnitCode: integer);
var cdsTemp : TClientDataSet;
begin
  try
    cdsTemp := TClientDataSet.Create(nil);

    cdsTemp.data := GetDataSet('select * from ICMTTPAC where PACUNI='+IntToStr(UnitCode) + ' order by PACCOD');
    if cdsTemp.Active then
      if cdsTemp.RecordCount>0 then
        cmbUnitPacking.ItemIndex := loadCmbItems(cmbUnitPacking.Items,cdsTemp,'PACCOD','PACNAM',cdsWarehouseProd.fieldbyname('STKPAC').AsString);
  finally
    cdsTemp.Free;
  end;
end;
procedure TfrmEditWarehouseProd.cmbProdUnitChange(Sender: TObject);
begin
  if not (cdsWarehouseProd.State in [dsedit,dsinsert]) then cdsWarehouseProd.Edit;
  getProdPacking(strtoint(TString(cmbProdUnit.Items.Objects[cmbProdUnit.ItemIndex]).Str));
end;

procedure TfrmEditWarehouseProd.btnSearchClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SelecField,_SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('PRDCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('PRDCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('PRDNAE','ชื่ออังกฤษ'));
  _SearchType.Add(TStringValue.Create('PRDNAT','ชื่อไทย'));
  _SearchType.Add(TStringValue.Create('PRDRMK','Remark'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('PRDCOD','รหัส'));
  _Cols.Add(TStringValue.Create('PRDCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('PRDNAT','ชื่ออังกฤษ'));
  _Cols.Add(TStringValue.Create('PRDNAT','ชื่อไทย'));
  _Cols.Add(TStringValue.Create('PRDRMK','Remark'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','90'));
  _ColsWidth.Add(TStringValue.Create('4','100'));
  _ColsWidth.Add(TStringValue.Create('5','120'));
  _ColsWidth.Add(TStringValue.Create('6','120'));
  _ColsWidth.Add(TStringValue.Create('7','150'));

  Parameter.SearchTitle:='รายชื่อสินค้า';
  executilsdxInitialize;


  _SQL :=' select PRDCOD,PRDCDE,PRDNAE,PRDNAT,PRDRMK from ICMTTPRD where PRDACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'PRDCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    FProdCode := StrToInt(_Parameter.SelectCode);

    if not (cdsWarehouseProd.State in [dsinsert,dsedit]) then cdsWarehouseProd.Edit;
    cdsWarehouseProd.FieldByName('STKPRD').AsInteger := FProdCode;

    lbProdCode.Caption := IntToStr(FProdCode);
    getProdInfo(FProdCode);

  end;



end;

procedure TfrmEditWarehouseProd.getProdInfo(ProdCode:integer);
begin
  cdsProds.Data := GetDataSet('select * from ICMTTPRD where PRDCOD='+IntToStr(ProdCode))
end;

procedure TfrmEditWarehouseProd.cmbUnitPackingChange(Sender: TObject);
begin
  if not (cdsWarehouseProd.State in [dsedit,dsinsert]) then cdsWarehouseProd.Edit;
end;

end.
