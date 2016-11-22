unit AddProdItemFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel, Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit;
                                                                                                       
type
  TfrmAddProdItem = class(TForm)
    pnAllclients: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    btnOK: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    btnSearchProd: TSpeedButton;
    RzLabel7: TRzLabel;
    edProdCode: TRzEdit;
    edProdName: TRzEdit;
    edProdCDE: TRzEdit;
    edUnitCode: TRzEdit;
    btnSearchUnit: TSpeedButton;
    edUnitName: TRzEdit;
    edPackingCode: TRzEdit;
    btnSeachPacking: TSpeedButton;
    edPackingName: TRzEdit;
    edQty: TRzNumericEdit;
    RzLabel8: TRzLabel;
    edUnitPrice: TcxCurrencyEdit;
    RzLabel9: TRzLabel;
    RzNumericEdit1: TRzNumericEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchProdClick(Sender: TObject);
    procedure btnSearchUnitClick(Sender: TObject);
    procedure btnSeachPackingClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edProdCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUnitCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPackingCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FProdCode: integer;
    FUnitPrice: currency;
    FUnitCode: integer;
    FPackingCode: integer;
    FWarehouseCode: integer;
    FQty: integer;
    FIsOK: boolean;
    FProdCDE: string;
    FIssueReqCode: integer;
    FIsNew: boolean;
    FPackingName: string;
    FProdName: string;
    FUnitname: string;
    procedure SetProdCode(const Value: integer);
    procedure SetPackingCode(const Value: integer);
    procedure SetUnitCode(const Value: integer);
    procedure SetUnitPrice(const Value: currency);
    procedure SetWarehouseCode(const Value: integer);
    procedure SetQty(const Value: integer);
    procedure SetIsOK(const Value: boolean);

    procedure getProductInfo(ProdCode:integer);
    procedure getUnitInfo(UniCode:integer);
    procedure getPackingInfo(PackingCode:integer);


    procedure SetProdCDE(const Value: string);
    procedure SetIssueReqCode(const Value: integer);
    procedure SetIsNew(const Value: boolean);
    procedure SetPackingName(const Value: string);
    procedure SetProdName(const Value: string);
    procedure SetUnitname(const Value: string);


    { Private declarations }
  public
    { Public declarations }
    property IsNew : boolean read FIsNew write SetIsNew;
    property IssueReqCode : integer read FIssueReqCode write SetIssueReqCode;
    property ProdCode : integer read FProdCode write SetProdCode;
    property ProdCDE : string read FProdCDE write SetProdCDE;
    property WarehouseCode : integer read FWarehouseCode write SetWarehouseCode;
    property UnitCode : integer read FUnitCode write SetUnitCode;
    property PackingCode : integer read FPackingCode write SetPackingCode;
    property UnitPrice : currency read FUnitPrice write SetUnitPrice;
    property Qty : integer read FQty write SetQty;
    property IsOK : boolean read FIsOK write SetIsOK;

    property ProdName : string read FProdName write SetProdName;
    property Unitname : string read FUnitname write SetUnitname;
    property PackingName : string read FPackingName write SetPackingName;
  end;

var
  frmAddProdItem: TfrmAddProdItem;

implementation

uses CommonLIB, STDLIB, CommonUtils, STK_LIB;

{$R *.dfm}

procedure TfrmAddProdItem.btnCancelClick(Sender: TObject);
begin
  FIsOK := false;
  Close;
end;

procedure TfrmAddProdItem.btnOKClick(Sender: TObject);
begin
  FUnitPrice := edUnitPrice.Value;
  FQty := edQty.IntValue;

  FIsOK := true;
  Close;
end;

procedure TfrmAddProdItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnOKClick(nil);
  if Key=VK_F6 then  btnSearchProdClick(nil);
end;

procedure TfrmAddProdItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton) then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End;
end;

procedure TfrmAddProdItem.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
end;

procedure TfrmAddProdItem.btnSearchProdClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
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


  _SQL :=//' select PRDCOD,PRDCDE,PRDNAE,PRDNAT,PRDRMK from ICMTTPRD where PRDACT=''A'' ';
 ' select prd.PRDCOD,prd.PRDCDE,prd.PRDNAE,prd.PRDNAT,prd.PRDRMK  '+
 ' from ICMTTPRD prd  , ICMTTSTK stk  '+
 ' where           '+
 ' 	stk.STKPRD=prd.PRDCOD   '+
 ' and prd.PRDACT=''A'' and stk.STKQTY>0 and stk.STKWH0='+IntToStr(WarehouseCode);


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'PRDCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    FProdCode := StrToInt(_Parameter.SelectCode);
    self.Caption := IntToStr(FProdCode);
    getProductInfo(FProdCode);

  end;



end;

procedure TfrmAddProdItem.SetProdCode(const Value: integer);
begin
  FProdCode := Value;
  getProductInfo(FProdCode);
end;

procedure TfrmAddProdItem.SetPackingCode(const Value: integer);
begin
  FPackingCode := Value;
  getPackingInfo(FPackingCode);
end;

procedure TfrmAddProdItem.SetUnitCode(const Value: integer);
begin
  FUnitCode := Value;
  getUnitInfo(FUnitCode);
end;

procedure TfrmAddProdItem.SetUnitPrice(const Value: currency);
begin
  FUnitPrice := Value;
  edUnitPrice.EditValue := FUnitPrice;
  edUnitPrice.Value := FUnitPrice;
end;

procedure TfrmAddProdItem.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;

end;

procedure TfrmAddProdItem.SetQty(const Value: integer);
begin
  FQty := Value;
  edQty.Value := FQty;
end;

procedure TfrmAddProdItem.SetIsOK(const Value: boolean);
begin
  FIsOK := Value;
end;

procedure TfrmAddProdItem.getProductInfo(ProdCode: integer);
var cdsTemp : TClientDataSet;
begin
  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.Data := GetDataSet('select * from ICMTTPRD where PRDCOD='+IntToStr(ProdCode));
  if cdsTemp.Active then
    if cdsTemp.RecordCount>0 then
      begin
        FProdCode := cdsTemp.fieldbyname('PRDCOD').AsInteger;
        FProdCDE := cdsTemp.fieldbyname('PRDCDE').AsString;
        FProdName := Trim(cdsTemp.fieldbyname('PRDNAT').AsString);

        edProdCode.text := cdsTemp.fieldbyname('PRDCOD').AsString;
        edProdName.Text := trim(cdsTemp.fieldbyname('PRDNAT').AsString) + '('+Trim(cdsTemp.fieldbyname('PRDNAE').AsString)+')';
        edProdCDE.Text :=  trim(cdsTemp.fieldbyname('PRDCDE').AsString);

        getUnitInfo(cdsTemp.fieldbyname('PRDUNI').AsInteger);
      end;
end;

procedure TfrmAddProdItem.SetProdCDE(const Value: string);
begin
  FProdCDE := Value;
end;

procedure TfrmAddProdItem.btnSearchUnitClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('UNICOD','รหัส'));
  _SearchType.Add(TStringValue.Create('UNINAM','ชื่อไทย'));


  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('UNICOD','รหัส'));
  _Cols.Add(TStringValue.Create('UNINAM','ชื่อไทย'));


  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','150'));

  Parameter.SearchTitle:='รายชื่อหน่วยสินค้า';
  executilsdxInitialize;


  _SQL :=' select UNICOD,UNINAM from ICMTTUNI  where UNIACT=''A'' order by UNICOD ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'UNICOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    FUnitCode := StrToInt(_Parameter.SelectCode);
    getUnitInfo(FUnitCode);
  end;



end;

procedure TfrmAddProdItem.getUnitInfo(UniCode: integer);
var cdsTemp : TClientDataSet;
begin
  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.Data := GetDataSet('select * from ICMTTUNI where UNICOD='+IntToStr(UniCode));
  if cdsTemp.Active then
    if cdsTemp.RecordCount>0 then
      begin
        FUnitCode := cdsTemp.fieldbyname('UNICOD').AsInteger;
        edUnitName.Text := cdsTemp.fieldbyname('UNINAM').AsString;
        FUnitname := Trim(cdsTemp.fieldbyname('UNINAM').AsString);
        edUnitCode.Text := cdsTemp.fieldbyname('UNICOD').AsString;
      end;
end;

procedure TfrmAddProdItem.btnSeachPackingClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('PACCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('PACNAM','ชื่อขนาดบรรจุ'));
  _SearchType.Add(TStringValue.Create('PACRAT','ขนาดบรรจุ'));


  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('PACCOD','รหัส'));
  _Cols.Add(TStringValue.Create('PACNAM','ชื่อขนาดบรรจุ'));
  _Cols.Add(TStringValue.Create('PACRAT','ขนาดบรรจุ'));


  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','150'));
  _ColsWidth.Add(TStringValue.Create('3','50'));

  Parameter.SearchTitle:='รายชื่อหน่วยสินค้า';
  executilsdxInitialize;


  _SQL :=' select PACCOD,PACNAM,PACRAT from ICMTTPAC where PACACT=''A'' and PACUNI='+IntToStr(FUnitCode)+' order by PACCOD ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'PACCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    FPackingCode := StrToInt(_Parameter.SelectCode);
    getPackingInfo(FPackingCode);
  end;



end;

procedure TfrmAddProdItem.getPackingInfo(PackingCode: integer);
var cdsTemp : TClientDataSet;
begin
  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.Data := GetDataSet('select * from ICMTTPAC where PACCOD='+IntToStr(PackingCode));
  if cdsTemp.Active then
    if cdsTemp.RecordCount>0 then
      begin
        FPackingCode := cdsTemp.fieldbyname('PACCOD').AsInteger;
        edPackingCode.Text := cdsTemp.fieldbyname('PACCOD').AsString;
        edPackingName.Text := cdsTemp.fieldbyname('PACNAM').AsString;
        FPackingName := Trim(cdsTemp.fieldbyname('PACNAM').AsString);
      end;
end;

procedure TfrmAddProdItem.SetIssueReqCode(const Value: integer);
begin
  FIssueReqCode := Value;
end;

procedure TfrmAddProdItem.SetIsNew(const Value: boolean);
begin
  FIsNew := Value;

  btnSearchProd.Enabled := FIsNew;
  btnSearchUnit.Enabled := FIsNew;
  btnSeachPacking.Enabled := FIsNew;
end;

procedure TfrmAddProdItem.FormShow(Sender: TObject);
begin
  if not FIsNew then
  begin
    edQty.SetFocus;
    edQty.SelectAll;
  end;

end;

procedure TfrmAddProdItem.SetPackingName(const Value: string);
begin
  FPackingName := Value;
end;

procedure TfrmAddProdItem.SetProdName(const Value: string);
begin
  FProdName := Value;
end;

procedure TfrmAddProdItem.SetUnitname(const Value: string);
begin
  FUnitname := Value;
end;

procedure TfrmAddProdItem.edProdCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edProdCode.Text)<>'' then
    begin
      if getExistMTTCode('PRD',trim(edProdCode.Text)) then
      begin
        FProdCode := getMTTCOD('PRD',trim(edProdCode.Text));
        getProductInfo(FProdCode);
      end
      else
        Application.MessageBox(pchar('ไม่พบสินค้าต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      btnSearchProdClick(sender);
  end;
end;

procedure TfrmAddProdItem.edUnitCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edUnitCode.Text)<>'' then
    begin
      if getExistMTTCode('UNI',trim(edUnitCode.Text)) then
      begin
        FUnitCode := getMTTCOD('UNI',trim(edUnitCode.Text));
         getUnitInfo(FUnitCode);
      end
      else
        Application.MessageBox(pchar('ไม่พบหน่วยสินค้าต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      btnSearchUnitClick(sender);
  end;
end;

procedure TfrmAddProdItem.edPackingCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edPackingCode.Text)<>'' then
    begin
      if getExistMTTCode('PAC',trim(edPackingCode.Text)) then
      begin
        FPackingCode := getMTTCOD('PAC',trim(edPackingCode.Text));
         getPackingInfo(FPackingCode);
      end
      else
        Application.MessageBox(pchar('ไม่พบขนาดบรรจุที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      btnSeachPackingClick(sender);
  end;
end;

end.
