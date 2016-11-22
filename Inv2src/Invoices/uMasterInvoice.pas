unit uMasterInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel,CommonLIB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxImageComboBox, cxLabel, cxCalendar, cxCurrencyEdit,
  RzDBEdit, Buttons, Mask, RzEdit, RzButton, RzCmboBx, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzTabs, ComCtrls, cxContainer, DBClient, RzDTP,
  RzDBDTP, cxNavigator;

type
  TfrmMasterInvoice = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    TabList: TTabSheet;
    Splitter1: TSplitter;
    pnMiddle: TRzPanel;
    pgWarehouseProduct: TRzPageControl;
    TabWarehouseProducts: TRzTabSheet;
    grdAllInvoices: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabWarehouseProductLots: TRzTabSheet;
    Splitter2: TSplitter;
    grdPOReceives: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    grdPOLIST: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    grdPOListColF13: TcxGridDBColumn;
    grdPOListColFLR: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    pnTop: TRzPanel;
    RzLabel17: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    cmbCustomer: TRzComboBox;
    cmbPaytype: TRzComboBox;
    cmbPayStatus: TRzComboBox;
    btnRefreshAllInvoice: TRzBitBtn;
    edSearch: TRzEdit;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    btnNewKeyIN: TRzBitBtn;
    btnDeletePO: TRzBitBtn;
    btnHoldPO: TRzBitBtn;
    btnNewPOReceive: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    TabData: TTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    btnSearchCust: TSpeedButton;
    btnSearchPayType: TSpeedButton;
    btnSearchRate: TSpeedButton;
    btnSearchVAT: TSpeedButton;
    RzLabel11: TRzLabel;
    RzLabel13: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    btnAddItem: TRzBitBtn;
    btnEditItem: TRzBitBtn;
    btnReceiveFromPO: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzDBEdit9: TRzDBEdit;
    btnNew: TRzBitBtn;
    btnDeleteItem: TRzBitBtn;
    RzDBEdit10: TRzDBEdit;
    edCustCode: TRzEdit;
    edCustName: TRzEdit;
    edPayTypeCode: TRzEdit;
    edPayTypeName: TRzEdit;
    edRateCode: TRzEdit;
    edRateName: TRzEdit;
    edVATCode: TRzEdit;
    edVATName: TRzEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    ckShowUnitCod: TCheckBox;
    btnCancelReceive: TRzBitBtn;
    btnPrint: TRzBitBtn;
    RzPanel4: TRzPanel;
    grdPoItems: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColRCDPRD: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBTableView2Column4: TcxGridDBColumn;
    cxGridDBColRCDUNI: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColRCDPAC: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel5: TRzPanel;
    lbStatus: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    btnRevise: TRzBitBtn;
    btnLock: TRzBitBtn;
    btnApprove: TRzBitBtn;
    RzLabel21: TRzLabel;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    lbInvoiceAMT: TcxLabel;
    lbInvoiceVatAmt: TcxLabel;
    lbInvoiceDiscountAmt: TcxLabel;
    lbInvoiceNetAmt: TcxLabel;
    cdsAllInvoice: TClientDataSet;
    dsAllInvoice: TDataSource;
    cdsInvoiceHdr: TClientDataSet;
    dsInvoiceHdr: TDataSource;
    cdsInvoiceDtl: TClientDataSet;
    dsInvoiceDtl: TDataSource;
    RzLabel12: TRzLabel;
    RzLabel25: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel1: TRzLabel;
    edVatTypeCode: TRzEdit;
    btnSearchVatType: TSpeedButton;
    edVatTypeName: TRzEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    cdsCustomer: TClientDataSet;
    dsCustomer: TDataSource;
    btnDiscountP: TSpeedButton;
    btnDiscountA: TSpeedButton;
    RzLabel8: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    RzLabel27: TRzLabel;
    lbInvoiceAmount: TcxLabel;
    RzLabel28: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    RzLabel29: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel30: TRzLabel;
    RzDBEdit13: TRzDBEdit;
    RzLabel20: TRzLabel;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnNewKeyINClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSearchCustClick(Sender: TObject);
    procedure edCustCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchVATClick(Sender: TObject);
    procedure edVATCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchVatTypeClick(Sender: TObject);
    procedure edVatTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchRateClick(Sender: TObject);
    procedure edRateCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchPayTypeClick(Sender: TObject);
    procedure edPayTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnDiscountPClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure btnDeleteItemClick(Sender: TObject);
    procedure btnEditItemClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRefreshAllInvoiceClick(Sender: TObject);
    procedure cmbCustomerChange(Sender: TObject);
    procedure cmbPaytypeChange(Sender: TObject);
    procedure cmbPayStatusChange(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FDLLParameter: TDLLParameter;
    FInvoiceCode: integer;
    FInvoiceAmt: currency;
    FRateCode: integer;
    FVatCode: integer;
    FPayTypeCode: integer;
    FVatTypeCode: integer;
    FCustCode: integer;
    FVat: currency;
    FVatType: string;
    FInvoiceVat: currency;
    FInvoiceDiscount: currency;
    FInvoiceGoods: currency;
    FInvoiceNet: currency;
    FDisCountFlag: string;
    FRate: currency;
    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure getAllInvoice;
    procedure getData(code:integer);
    procedure SetInvoiceCode(const Value: integer);
    procedure SetInvoiceAmt(const Value: currency);
    procedure SetCustCode(const Value: integer);
    procedure SetPayTypeCode(const Value: integer);
    procedure SetRateCode(const Value: integer);
    procedure SetVatCode(const Value: integer);
    procedure SetVatTypeCode(const Value: integer);
    procedure SetVat(const Value: currency);
    procedure SetVatType(const Value: string);
    procedure InvoiceCalc;
    procedure SetInvoiceDiscount(const Value: currency);
    procedure SetInvoiceGoods(const Value: currency);
    procedure SetInvoiceNet(const Value: currency);
    procedure SetInvoiceVat(const Value: currency);
    procedure SetDisCountFlag(const Value: string);
    procedure SetRate(const Value: currency);

    procedure InitCmb;
    { Private declarations }
  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property InvoiceCode : integer read FInvoiceCode write SetInvoiceCode;
    property InvoiceAmt : currency read FInvoiceAmt write SetInvoiceAmt;
    property InvoiceVat : currency read FInvoiceVat write SetInvoiceVat;
    property InvoiceGoods : currency read FInvoiceGoods write SetInvoiceGoods;
    property InvoiceDiscount : currency read FInvoiceDiscount write SetInvoiceDiscount;
    property InvoiceNet :currency read FInvoiceNet write SetInvoiceNet;

    property CustCode : integer read FCustCode write SetCustCode;
    property VatCode : integer read FVatCode write SetVatCode;
    property VatTypeCode : integer read FVatTypeCode write SetVatTypeCode;
    property RateCode : integer read FRateCode write SetRateCode;
    property PayTypeCode : integer read FPayTypeCode write SetPayTypeCode;

    property Vat : currency read FVat write SetVat;
    property VatType : string read FVatType write SetVatType;
    property Rate : currency read FRate write SetRate;
    property DisCountFlag : string read FDisCountFlag write SetDisCountFlag;
  end;

var
  frmMasterInvoice: TfrmMasterInvoice;

implementation

uses DevCoreLIB, CdeLIB, STK_LIB, CommonUtils, AddProdItemFrm, STDLIB;

{$R *.dfm}

{ TfrmMasterInvoice }

procedure TfrmMasterInvoice.getAllInvoice;
var strSQL:string;
    INHCUS,INHPAT:string;
begin

  INHCUS := TString(cmbCustomer.Items.Objects[cmbCustomer.ItemIndex]).Str;
  INHPAT := TString(cmbPaytype.Items.Objects[cmbPaytype.ItemIndex]).Str;


  strSQL := 'select inh.* from ICMTTINH inh '+
' where  (  ( inh.INHCUS='+INHCUS+'  and '+INHCUS+'<>0 ) or  ( inh.INHCUS<>'+INHCUS+' and '+INHCUS+'=0) )  '+
' and   ( ( inh.INHPAT='+INHPAT+' and  '+INHPAT+'<>0 ) or ( inh.INHPAT<>'+INHPAT+' and  '+INHPAT+'=0 )  ) '+
' and (INHCDE like ''%'+edSearch.Text+'%'' or INHPOC like ''%'+edSearch.Text+'%'' ) ';

//'	and  ( ( sup.SUPCDE='''+SUPCDE+''' and '''+SUPCDE+'''<>''00'' ) or ( sup.SUPCDE<>'''+SUPCDE+''' and '''+SUPCDE+'''=''00'' ) ) '+
//'	and  ( ( typ.POTCDE='''+POTCDE+''' and '''+POTCDE+'''<>''00'' ) or ( typ.POTCDE<>'''+POTCDE+''' and '''+POTCDE+'''=''00'' ) ) ';
  cdsAllInvoice.Data:=SAMGetDataSet(strsql);



  TCurrencyField(cdsAllInvoice.FieldByName('INHGDM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsAllInvoice.FieldByName('INHDCM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsAllInvoice.FieldByName('INHVAM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsAllInvoice.FieldByName('INHNET')).DisplayFormat:='#,##0.00';
end;

procedure TfrmMasterInvoice.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterInvoice.btnRefreshClick(Sender: TObject);
begin
  getAllInvoice;
end;

procedure TfrmMasterInvoice.getData(code: integer);
begin
  pgAllClients.ActivePage:=TabData;

  btnDiscountP.Down:=true;
  DisCountFlag := 'P';

  cdsInvoiceHdr.Data :=SAMGetDataSet('select * from ICMTTINH where INHCOD='+IntToStr(code));
  cdsInvoiceDtl.Data :=SAMGetDataSet('select * from ICMTTIND where INDCOD='+IntToStr(code));


  CustCode := cdsInvoiceHdr.FieldByName('INHCUS').AsInteger;
  RateCode:=cdsInvoiceHdr.FieldByName('INHRAT').AsInteger;
  PayTypeCode:=cdsInvoiceHdr.FieldByName('INHPAT').AsInteger;
  VatCode:=cdsInvoiceHdr.FieldByName('INHVAC').AsInteger;
//  cdsInvoiceHdr.FieldByName('INHJOB').AsInteger := FJobCode;
  VatTypeCode:=cdsInvoiceHdr.FieldByName('INHVTY').AsInteger;
  FInvoiceCode := cdsInvoiceHdr.fieldbyname('INHCOD').AsInteger;

  Vat:= cdsInvoiceHdr.FieldByName('INHVAT').AsCurrency;
  InvoiceVat := cdsInvoiceHdr.FieldByName('INHVAM').AsCurrency;
  InvoiceAmt:= cdsInvoiceHdr.FieldByName('INHAMT').AsCurrency;
  InvoiceGoods:= cdsInvoiceHdr.FieldByName('INHGDM').AsCurrency;
  InvoiceNet :=  cdsInvoiceHdr.FieldByName('INHNET').AsCurrency;

  DisCountFlag := cdsInvoiceHdr.FieldByName('INHDCF').AsString;
  btnDiscountP.Down :=cdsInvoiceHdr.FieldByName('INHDCF').AsString ='P';
  btnDiscountA.Down :=cdsInvoiceHdr.FieldByName('INHDCF').AsString ='A';


  TCurrencyField(cdsInvoiceHdr.FieldByName('INHGDM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsInvoiceHdr.FieldByName('INHDCM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsInvoiceHdr.FieldByName('INHVAM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsInvoiceHdr.FieldByName('INHNET')).DisplayFormat:='#,##0.00';

  TCurrencyField(cdsInvoiceDtl.FieldByName('INDQTY')).DisplayFormat:='#,##0';
  TCurrencyField(cdsInvoiceDtl.FieldByName('INDCOS')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsInvoiceDtl.FieldByName('INDPRI')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsInvoiceDtl.FieldByName('INDAMT')).DisplayFormat:='#,##0.00';

  InvoiceCalc;
end;

procedure TfrmMasterInvoice.btnNewKeyINClick(Sender: TObject);
begin
  getData(0);
end;

procedure TfrmMasterInvoice.FormShow(Sender: TObject);
begin
  InitCmb;
  pgAllClients.ActivePage:=TabList;
  getAllInvoice;
end;

procedure TfrmMasterInvoice.btnSaveClick(Sender: TObject);
var IsNew : boolean;
  irow : integer;
  lotNo : string;
begin
  IsNew := false;
  lotNo:='';

  if cdsInvoiceDtl.State in [dsedit,dsinsert] then cdsInvoiceDtl.Post;
  if not (cdsInvoiceHdr.State in [dsedit,dsinsert]) then cdsInvoiceHdr.Edit;

  cdsInvoiceHdr.FieldByName('INHCUS').AsInteger := FCustCode;
  cdsInvoiceHdr.FieldByName('INHRAT').AsInteger := FRateCode;
  cdsInvoiceHdr.FieldByName('INHPAT').AsInteger := FPayTypeCode;
  cdsInvoiceHdr.FieldByName('INHVAC').AsInteger := FVatCode;
//  cdsInvoiceHdr.FieldByName('INHJOB').AsInteger := FJobCode;
  cdsInvoiceHdr.FieldByName('INHVTY').AsInteger := FVatTypeCode;
  cdsInvoiceHdr.FieldByName('INHCSC').AsString := cdsCustomer.fieldbyname('CSHCON').AsString;

  if cdsInvoiceHdr.FieldByName('INHDTE').IsNull then
    cdsInvoiceHdr.FieldByName('INHDTE').AsDateTime := Now;
  if cdsInvoiceHdr.FieldByName('INHDUE').IsNull then
    cdsInvoiceHdr.FieldByName('INHDUE').AsDateTime := Now;






//  cdsQuotationHdr.FieldByName('IUHIRC').AsInteger := cdsIssueReqHeader.fieldbyname('IRHCOD').AsInteger;
//  cdsQuotationHdr.FieldByName('IUHWH0').AsInteger := cdsIssueReqHeader.fieldbyname('IRHWH0').AsInteger;
 // cdsQuotationHdr.FieldByName('CUHWH1').AsInteger := FDepCode;
 // cdsQuotationHdr.FieldByName('IUHDTE').AsDateTime := getServerDate;

  if cdsInvoiceHdr.State in [dsinsert] then
  begin
    IsNew :=true;
    if cdsInvoiceHdr.FieldByName('INHACT').IsNull then
      cdsInvoiceHdr.FieldByName('INHACT').AsString:='A';

    cdsInvoiceHdr.FieldByName('INHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','MTT_INHCOD','CDENM1');
    cdsInvoiceHdr.FieldByName('INHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','MTT_INHCOD','CDEPRE')
                                                        ,cdsInvoiceHdr.FieldByName('INHCOD').AsInteger,getCde('SETTING','RUNNING','MTT_INHCOD_LEN','CDENM1'));
    cdsInvoiceHdr.FieldByName('INHREV').AsInteger := 1;

    setEntryUSRDT(cdsInvoiceHdr,DLLParameter.UserID);
    setSystemCMP(cdsInvoiceHdr,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);    
  end;

    if cdsInvoiceDtl.RecordCount>0 then
      begin
        // Fill COD
        cdsInvoiceDtl.First;
        while not cdsInvoiceDtl.Eof do
        begin

          if not (cdsInvoiceDtl.State in [dsedit,dsinsert]) then cdsInvoiceDtl.Edit;
          cdsInvoiceDtl.FieldByName('INDCOD').AsInteger := cdsInvoiceHdr.FieldByName('INHCOD').AsInteger;
          //cdsQuotationDtl.FieldByName('CUDIRC').AsInteger := cdsQuotationHdr.FieldByName('CUHCOD').AsInteger;

          setEntryUSRDT(cdsInvoiceDtl,DLLParameter.UserID);
          setSystemCMP(cdsInvoiceDtl,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);


          cdsInvoiceDtl.Post;
          cdsInvoiceDtl.Next;
        end;





      end;












  if not ( cdsInvoiceHdr.State in [dsinsert,dsedit]) then cdsInvoiceHdr.Edit;


 //   cdsQuotationHdr.FieldByName('CUHAMT').AsCurrency := FCuttAmount;
 //   cdsQuotationHdr.FieldByName('CUHWH1').AsInteger := DepCode;
//    cdsQuotationHdr.FieldByName('CUHJOB').AsInteger := CuttProjectCode;
//    cdsQuotationHdr.FieldByName('CUHTYP').AsInteger := CUttTypeCode;

    cdsInvoiceHdr.FieldByName('INHVAT').AsCurrency := FVat;
    cdsInvoiceHdr.FieldByName('INHVAM').AsCurrency := FInvoiceVat;
    cdsInvoiceHdr.FieldByName('INHAMT').AsCurrency := FInvoiceAmt;
    cdsInvoiceHdr.FieldByName('INHGDM').AsCurrency := FInvoiceGoods;
    cdsInvoiceHdr.FieldByName('INHDCP').AsCurrency := FRate;
    cdsInvoiceHdr.FieldByName('INHDCF').AsString := FDisCountFlag;
    cdsInvoiceHdr.FieldByName('INHDPM').AsCurrency := InvoiceDiscount;



    cdsInvoiceHdr.FieldByName('INHNET').AsCurrency := FInvoiceNet;
    cdsInvoiceHdr.FieldByName('INHTHB').AsString := TextBaht(FInvoiceNet);


    
    setModifyUSRDT(cdsInvoiceHdr,DLLParameter.UserID);
   cdsInvoiceHdr.Post;



  if cdsInvoiceDtl.State in [dsEdit,dsInsert] then cdsInvoiceDtl.Post;
  if cdsInvoiceDtl.ChangeCount>0 then
  begin
    //UpdateDataset(cdsIssueDetail,'select * from ICTRNRCD limit 0');
    SAMUpdateDataset(cdsInvoiceDtl,'select * from ICMTTIND where INDCOD='+IntToStr(FInvoiceCode)+' order by INDSEQ');
  end;


  if cdsInvoiceHdr.State in [dsEdit,dsInsert] then cdsInvoiceHdr.Post;
  if cdsInvoiceHdr.ChangeCount>0 then
  begin
    SAMUpdateDataset(cdsInvoiceHdr,'select * from ICMTTINH limit 0');
    FInvoiceCode := cdsInvoiceHdr.FieldByName('INHCOD').AsInteger;

    if IsNew then
    begin
      setCdeRun('SETTING','RUNNING','MTT_INHCOD','CDENM1');

    end;

   { if lotNo<>'' then
      setCdeRun('SETTING','RUNNING','LOTNO','CDENM1');
      }


  end;

  ShowMessage('Successfull.');
  getData(FInvoiceCode);

end;


procedure TfrmMasterInvoice.SetInvoiceCode(const Value: integer);
begin
  FInvoiceCode := Value;
end;

procedure TfrmMasterInvoice.cxGridDBTableView1DblClick(Sender: TObject);
begin
  getData(cdsAllInvoice.fieldbyname('INHCOD').AsInteger);
end;

procedure TfrmMasterInvoice.btnAddItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  Seq , ans ,ItemQTY : integer;
  ItemPrice ,ItemAmount: currency;

begin
  try

    if (FCustCode=0) or (FVatCode=0) or (FVatTypeCode=0) or (FPayTypeCode=0)  or (FRateCode=0) then
    begin
      Application.MessageBox(pchar('กรุณาระบุข้อมูลให้ครบถ้วน'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;
    

    frmAddItem := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := true;
    frmAddItem.InvoiceCode := FInvoiceCode;
    frmAddItem.ProdCode := 0;
    frmAddItem.WarehouseCode := 0;
    frmAddItem.UnitCode := 0;
    frmAddItem.PackingCode:=0;
    frmAddItem.Qty := 1;
    frmAddItem.UnitPrice := 0;
    frmAddItem.ShowModal;

    Seq := cdsInvoiceDtl.RecordCount+1;

    if cdsInvoiceDtl.Active then
      if frmAddItem.IsOK then
      begin
        if cdsInvoiceDtl.Locate('INDPRD;INDUNI;INDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        begin
          ans := Application.MessageBox(pchar('พบรายการสินค้าซ้ำ '+#10#13+'[Yes]-ต้องการแก้ไข '+#10#13+'[No]-เพิ่มจำนวน '+#10#13+'[Cancel]-ยกเลิก !!!'),pchar('Confirm'),MB_YESNOCANCEL or MB_ICONWARNING);


          ItemQTY:= cdsInvoiceDtl.FieldByName('INDQTY').AsInteger;
          ItemPrice := cdsInvoiceDtl.FieldByName('INDCOS').AsCurrency ;
          ItemAmount := cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency;

          if ans = mrYes then
          begin
            InvoiceAmt := InvoiceAmt - cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency; // POAMOUNT

            cdsInvoiceDtl.Edit;
            cdsInvoiceDtl.FieldByName('INDQTY').AsInteger := frmAddItem.Qty;
            cdsInvoiceDtl.FieldByName('INDCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

            InvoiceAmt := InvoiceAmt + cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency; // POAMOUNT
          end else
          if ans = mrNo then
          begin
            InvoiceAmt := InvoiceAmt - ItemAmount; // POAMOUNT
            cdsInvoiceDtl.Edit;
            cdsInvoiceDtl.FieldByName('INDQTY').AsInteger := ItemQTY + frmAddItem.Qty;
            //cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency := (ItemQTY + frmAddItem.Qty)*ItemPrice;

            InvoiceAmt := InvoiceAmt + ((ItemQTY + frmAddItem.Qty)*ItemPrice); // POAMOUNT
          end else
          if ans=mrCancel then Exit;

        end else
        begin
          cdsInvoiceDtl.Append ;
          Seq := cdsInvoiceDtl.RecordCount+1;
          cdsInvoiceDtl.FieldByName('INDSEQ').AsInteger := Seq;
          InvoiceAmt := InvoiceAmt + (frmAddItem.Qty*frmAddItem.UnitPrice);  // POAMOUNT

          cdsInvoiceDtl.FieldByName('INDQTY').AsInteger := frmAddItem.Qty;
          cdsInvoiceDtl.FieldByName('INDCOS').AsCurrency := frmAddItem.UnitPrice;
          cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;
        end;


          //cdsPODetail.Append;
          cdsInvoiceDtl.FieldByName('INDCOD').AsInteger := FInvoiceCode;
          cdsInvoiceDtl.FieldByName('INDCDE').AsString  := frmAddItem.ProdCDE;
          cdsInvoiceDtl.FieldByName('INDPRD').AsInteger := frmAddItem.ProdCode;

          cdsInvoiceDtl.FieldByName('INDWH0').AsInteger := frmAddItem.WarehouseCode;
          cdsInvoiceDtl.FieldByName('INDUNI').AsInteger := frmAddItem.UnitCode;

          cdsInvoiceDtl.FieldByName('INDPAC').AsInteger := frmAddItem.PackingCode;



          cdsInvoiceDtl.FieldByName('INDSEQ').AsInteger := Seq;

          cdsInvoiceDtl.FieldByName('INDPCN').AsString := frmAddItem.PackingName;
          cdsInvoiceDtl.FieldByName('INDUNA').AsString := frmAddItem.Unitname;
          cdsInvoiceDtl.FieldByName('INDPNA').AsString := frmAddItem.ProdName;

          cdsInvoiceDtl.Post;

      end;
  finally
    frmAddItem.free;
  end;
end;


procedure TfrmMasterInvoice.SetInvoiceAmt(const Value: currency);
begin
  FInvoiceAmt := Value;
  lbInvoiceAmount.Caption:= FormatCurr('#,##0.00',FInvoiceAmt);
  InvoiceCalc;
end;

procedure TfrmMasterInvoice.btnPrintClick(Sender: TObject);
var dllParams : TDLLParameter;
  DefaltValue:TList;
begin

    DefaltValue:=TList.Create;
    DefaltValue.Add(TStringValue.Create('INHCOD',IntToStr(FInvoiceCode)));
    //DefaltValue.Add(TStringValue.Create('RCHCOD',IntToStr(FPOCode)));
    dllParams.ReportCode:='BL00-002';
    ShowReportGenerator(Application,nil,swModal,dllParams,DefaltValue,true,GetReportGroup);

end;

procedure TfrmMasterInvoice.SetCustCode(const Value: integer);
begin
  FCustCode := Value;
  edCustCode.Text := getMTTCDE('CSH',IntToStr(FCustCode));
  edCustName.Text := getMTTName('CSH',IntToStr(FCustCode));

  cdsCustomer.Data := SAMGetDataSet('select * from ICMTTCSH where CSHCOD='+IntToStr(FCustCode));
end;

procedure TfrmMasterInvoice.SetPayTypeCode(const Value: integer);
begin
  FPayTypeCode := Value;
  edPayTypeCode.Text := getMTTCDE('PAT',IntToStr(FPayTypeCode));
  edPayTypeName.Text := getMTTName('PAT',IntToStr(FPayTypeCode));
end;

procedure TfrmMasterInvoice.SetRateCode(const Value: integer);
begin
  FRateCode := Value;
  edRateCode.Text := getMTTCDE('RA1',IntToStr(FRateCode));
  edRateName.Text := getMTTName('RA1',IntToStr(FRateCode));

  Rate := getValueCurrency('ICMTTRA1','RA1RAT','RA1',IntToStr(FRateCode));
  InvoiceCalc;
end;

procedure TfrmMasterInvoice.SetVatCode(const Value: integer);
begin
  FVatCode := Value;

  Vat := getValueCurrency('ICMTTVAT','VATRAT','VAT',IntToStr(FVatCode));

  edVATCode.Text := getMTTCDE('VAT',IntToStr(FVatCode));
  edVATName.Text := getMTTName('VAT',IntToStr(FVatCode));

  InvoiceCalc;
end;

procedure TfrmMasterInvoice.SetVatTypeCode(const Value: integer);
begin
  FVatTypeCode := Value;
  edVatTypeCode.Text := getMTTCDE('VTY',IntToStr(FVatTypeCode));
  edVatTypeName.Text := getMTTName('VTY',IntToStr(FVatTypeCode));

  VatType := getValueString('ICMTTVTY','VTYFLG','VTY',IntToStr(FVatTypeCode));

  InvoiceCalc;
end;

procedure TfrmMasterInvoice.btnSearchCustClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('CSHCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('CSHCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('CSHNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('CSHCOD','รหัส'));
  _Cols.Add(TStringValue.Create('CSHCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('CSHNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อลูกค้า';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTCSH where CSHACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'CSHCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      CustCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterInvoice.edCustCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edCustCode.Text)<>'' then
    begin
      if IsInteger(trim(edCustCode.Text))
      then
       if getExistMTTCode('CSH',trim(edCustCode.Text)) then
          CustCode := getMTTCOD('CSH',trim(edCustCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบลูกค้าที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchCustClick(sender);
  end;
end;

procedure TfrmMasterInvoice.btnSearchVATClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('VATCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('VATCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('VATNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('VATCOD','รหัส'));
  _Cols.Add(TStringValue.Create('VATCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('VATNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อประเภทชำระเงิน';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTVAT where VATACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'VATCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      VatCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterInvoice.edVATCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edVATCode.Text)<>'' then
    begin
      if IsInteger(trim(edVATCode.Text))
      then
       if getExistMTTCode('VAT',trim(edVATCode.Text)) then
          VatCode := getMTTCOD('VAT',trim(edVATCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบข้อมูลที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchVATClick(sender);
  end;
end;

procedure TfrmMasterInvoice.btnSearchVatTypeClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('VTYCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('VTYCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('VTYNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('VTYCOD','รหัส'));
  _Cols.Add(TStringValue.Create('VTYCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('VTYNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อประเภทภาษี';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTVTY where VTYACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'VTYCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      VatTypeCode := StrToInt(_Parameter.SelectCode);
  end;


end;
procedure TfrmMasterInvoice.edVatTypeCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edVatTypeCode.Text)<>'' then
    begin
      if IsInteger(trim(edVatTypeCode.Text))
      then
       if getExistMTTCode('VTY',trim(edVatTypeCode.Text)) then
          VatTypeCode := getMTTCOD('VTY',trim(edVatTypeCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบข้อมูลที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchVatTypeClick(sender);
  end;
end;

procedure TfrmMasterInvoice.btnSearchRateClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('RA1COD','รหัส'));
  _SearchType.Add(TStringValue.Create('RA1CDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('RA1NAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('RA1COD','รหัส'));
  _Cols.Add(TStringValue.Create('RA1CDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('RA1NAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่ออัตราราคา(Rate)';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTRA1 where RA1ACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'RA1COD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      RateCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterInvoice.edRateCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edRateCode.Text)<>'' then
    begin
      if IsInteger(trim(edRateCode.Text))
      then
       if getExistMTTCode('RA1',trim(edRateCode.Text)) then
          RateCode := getMTTCOD('RA1',trim(edRateCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบข้อมูลที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchRateClick(sender);
  end;
end;

procedure TfrmMasterInvoice.btnSearchPayTypeClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('PATCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('PATCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('PATNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('PATCOD','รหัส'));
  _Cols.Add(TStringValue.Create('PATCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('PATNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อประเภทชำระเงิน';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTPAT where PATACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'PATCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      PayTypeCode := StrToInt(_Parameter.SelectCode);
  end;


end;


procedure TfrmMasterInvoice.edPayTypeCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edPayTypeCode.Text)<>'' then
    begin
      if IsInteger(trim(edPayTypeCode.Text))
      then
       if getExistMTTCode('PAT',trim(edPayTypeCode.Text)) then
          PayTypeCode := getMTTCOD('PAT',trim(edPayTypeCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบข้อมูลที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchPayTypeClick(sender);
  end;
end;

procedure TfrmMasterInvoice.SetVat(const Value: currency);
begin
  FVat := Value;
  InvoiceCalc;
end;

procedure TfrmMasterInvoice.SetVatType(const Value: string);
begin
  FVatType := Value;
  InvoiceCalc;
end;

procedure TfrmMasterInvoice.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
end;

procedure TfrmMasterInvoice.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ActiveControl.Tag<>99 then
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton)  then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End;
end;

procedure TfrmMasterInvoice.InvoiceCalc;
var _DiscountAMT,_InvoiceNet:currency;

begin

 _DiscountAMT:=0;


 if UpperCase(VatType)='I' then
 begin


  //_InvoiceNet :=InvoiceNet;

  if FDisCountFlag='P' then _DiscountAMT := InvoiceAmt*(Rate/100)
  else  if FDisCountFlag='A' then _DiscountAMT := cdsInvoiceHdr.FieldByName('INHDCM').AsCurrency;

  InvoiceDiscount := _DiscountAMT;

  {
  _InvoiceNet := _InvoiceNet - _DiscountAMT;

  InvoiceVat := (_InvoiceNet*Vat)/(100+Vat);
  InvoiceNet := InvoiceAmt;
  InvoiceGoods := InvoiceAmt-InvoiceVat;
  }

  InvoiceVat := ((InvoiceAmt-_DiscountAMT)*Vat)/(100+Vat);
  InvoiceNet := InvoiceAmt-_DiscountAMT;
  InvoiceGoods := (InvoiceAmt-_DiscountAMT)-InvoiceVat;


  {
  InvoiceVat := (InvoiceNet*Vat)/(100+Vat);
  InvoiceNet := InvoiceAmt;
  InvoiceGoods := InvoiceAmt-InvoiceVat;
  }


 end
 else if UpperCase(VatType)='E' then
 begin

  if FDisCountFlag='P' then _DiscountAMT := InvoiceAmt*(Rate/100)
  else  if FDisCountFlag='A' then _DiscountAMT := cdsInvoiceHdr.FieldByName('INHDCM').AsCurrency;

  InvoiceDiscount := _DiscountAMT;

  {
  _InvoiceNet :=InvoiceNet;

  _InvoiceNet := _InvoiceNet - _DiscountAMT;
  InvoiceVat := (_InvoiceNet*Vat)/100;
  InvoiceNet := InvoiceAmt+InvoiceVat;
  InvoiceGoods := InvoiceAmt;
  }

  InvoiceVat := ((InvoiceAmt-_DiscountAMT)*Vat)/100;
  InvoiceNet := (InvoiceAmt-_DiscountAMT)+InvoiceVat;
  InvoiceGoods := InvoiceAmt-_DiscountAMT;


  {
  InvoiceVat := (InvoiceAmt*Vat)/100;
  InvoiceNet := InvoiceAmt+InvoiceVat;
  InvoiceGoods := InvoiceAmt;
  }

 end
 else  if UpperCase(VatType)='N' then
 begin

   if FDisCountFlag='P' then _DiscountAMT := InvoiceAmt*(Rate/100)
  else  if FDisCountFlag='A' then _DiscountAMT := cdsInvoiceHdr.FieldByName('INHDCM').AsCurrency;


   InvoiceDiscount := _DiscountAMT;

   InvoiceVat:=0;
   InvoiceNet :=  InvoiceAmt-_DiscountAMT;
   InvoiceGoods := InvoiceAmt-_DiscountAMT;
   {
   InvoiceVat:=0;
   InvoiceNet :=  InvoiceAmt;
   InvoiceGoods := InvoiceAmt;
   }
 end;
end;

procedure TfrmMasterInvoice.SetInvoiceDiscount(const Value: currency);
begin
  FInvoiceDiscount := Value;
  lbInvoiceDiscountAmt.Caption := FormatCurr('#,##0.00',FInvoiceDiscount);
end;

procedure TfrmMasterInvoice.SetInvoiceGoods(const Value: currency);
begin
  FInvoiceGoods := Value;
  lbInvoiceAMT.Caption:= FormatCurr('#,##0.00',FInvoiceGoods);
end;

procedure TfrmMasterInvoice.SetInvoiceNet(const Value: currency);
begin
  FInvoiceNet := Value;
  lbInvoiceNetAmt.Caption := FormatCurr('#,##0.00',FInvoiceNet);
end;

procedure TfrmMasterInvoice.SetInvoiceVat(const Value: currency);
begin
  FInvoiceVat := Value;
  lbInvoiceVatAmt.Caption := FormatCurr('#,##0.00',FInvoiceVat);
end;

procedure TfrmMasterInvoice.SetDisCountFlag(const Value: string);
begin
  FDisCountFlag := Value;
  InvoiceCalc;
end;

procedure TfrmMasterInvoice.btnDiscountPClick(Sender: TObject);
begin
  if btnDiscountP.Down then DisCountFlag := 'P' else
  if btnDiscountA.Down then DisCountFlag :='A';
end;

procedure TfrmMasterInvoice.SetRate(const Value: currency);
begin
  FRate := Value;
  InvoiceCalc;
end;

procedure TfrmMasterInvoice.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterInvoice.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterInvoice.btnDeleteItemClick(Sender: TObject);
begin
    if cdsInvoiceDtl.RecordCount>0 then
      if not cdsInvoiceDtl.FieldByName('INDCOD').IsNull then
        if Application.MessageBox(pchar('ยืนยันลบรายการสินค้า ?'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
        begin
          InvoiceAmt := InvoiceAmt - cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency; // POAMOUNT
          cdsInvoiceDtl.Delete;
        end;
end;

procedure TfrmMasterInvoice.btnEditItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  OLDAmount : Currency;
  Seq : integer;
begin
  if ( ( not cdsInvoiceDtl.Active ) or (not cdsInvoiceHdr.Active)) then Exit;


  if cdsInvoiceDtl.RecordCount<=0 then Exit;
  if cdsInvoiceDtl.FieldByName('INDCOD').IsNull then Exit;

  try
    frmAddItem        := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := false;


    frmAddItem.InvoiceCode  := FInvoiceCode;
    frmAddItem.ProdCode       := cdsInvoiceDtl.fieldbyname('INDPRD').AsInteger;
    frmAddItem.WarehouseCode  := 0 ;
    frmAddItem.UnitCode       := cdsInvoiceDtl.fieldbyname('INDUNI').AsInteger;
    frmAddItem.PackingCode    := cdsInvoiceDtl.fieldbyname('INDPAC').AsInteger;
    frmAddItem.Qty            := cdsInvoiceDtl.fieldbyname('INDQTY').AsInteger;
    frmAddItem.UnitPrice      := cdsInvoiceDtl.fieldbyname('INDCOS').AsCurrency;

    OLDAmount := cdsInvoiceDtl.fieldbyname('INDAMT').AsCurrency;




    frmAddItem.ShowModal;

    if frmAddItem.IsOK then
    begin

      if cdsInvoiceDtl.Locate('INDPRD;INDUNI;INDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        cdsInvoiceDtl.Edit
      else
      begin
        cdsInvoiceDtl.Append ;
        Seq := cdsInvoiceDtl.RecordCount+1;
        cdsInvoiceDtl.FieldByName('INDSEQ').AsInteger := Seq;
      end;



      cdsInvoiceDtl.FieldByName('INDCOD').AsInteger := FInvoiceCode;
      cdsInvoiceDtl.FieldByName('INDPRD').AsInteger := frmAddItem.ProdCode;
//      cdsInvoiceDtl.FieldByName('QUDWH0').AsInteger := frmAddItem.WarehouseCode;
      cdsInvoiceDtl.FieldByName('INDUNI').AsInteger := frmAddItem.UnitCode;
      cdsInvoiceDtl.FieldByName('INDPAC').AsInteger := frmAddItem.PackingCode;

      InvoiceAmt := InvoiceAmt - OLDAmount; // POAMOUNT
      cdsInvoiceDtl.FieldByName('INDQTY').AsInteger := frmAddItem.Qty;
      cdsInvoiceDtl.FieldByName('INDCOS').AsCurrency := frmAddItem.UnitPrice;
      cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

      InvoiceAmt := InvoiceAmt + cdsInvoiceDtl.FieldByName('INDAMT').AsCurrency; // POAMOUNT

      cdsInvoiceDtl.FieldByName('INDPCN').AsString := frmAddItem.PackingName;
      cdsInvoiceDtl.FieldByName('INDUNA').AsString := frmAddItem.Unitname;
      cdsInvoiceDtl.FieldByName('INDPNA').AsString := frmAddItem.ProdName;


      cdsInvoiceDtl.Post;

    end;
  finally
    frmAddItem.free;
  end;
end;


procedure TfrmMasterInvoice.cxGridDBTableView2DblClick(Sender: TObject);
begin
  btnEditItemClick(sender);
end;

procedure TfrmMasterInvoice.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F3 then btnAddItemClick(sender);
  if Key=VK_F2 then btnEditItemClick(sender);
  if Key=VK_F4 then btnDeleteItemClick(sender);
end;

procedure TfrmMasterInvoice.InitCmb;
var cdsTemp : TClientDataSet;
begin
  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.data := SAMGetDataSet('select 0 as CSHCOD,''-- All --'' as CSHNAM union select CSHCOD,CSHNAM from ICMTTCSH where CSHACT=''A''');
  loadCmbItems(cmbCustomer.Items,cdsTemp,'CSHCOD','CSHNAM','');

  cdsTemp.data := SAMGetDataSet('select 0 as PATCOD,''-- All --'' as PATNAM union select PATCOD,PATNAM from ICMTTPAT where PATACT=''A''');
  loadCmbItems(cmbPaytype.Items,cdsTemp,'PATCOD','PATNAM','');

  //cdsTemp.data := GetDataSet('select ''00'' as WH1CDE,''-- All --'' as WH1NAM union select WH1CDE,WH1NAM from ICMTTWH1 where WH1ACT=''A''');
  //loadCmbItems(cmbDepartments.Items,cdsTemp,'WH1CDE','WH1NAM','');

  //cdsTemp.data := GetDataSet('select ''00'' as POTCDE,''-- All --'' as POTNAM union select POTCDE,POTNAM from ICMTTPOT where POTACT=''A''');
  //loadCmbItems(cmbPOType.Items,cdsTemp,'POTCDE','POTNAM','');

  cmbCustomer.ItemIndex:=0;
  cmbPaytype.ItemIndex:=0;
//  cmbDepartments.ItemIndex:=0;
//  cmbPOType.ItemIndex:=0;

end;

procedure TfrmMasterInvoice.btnRefreshAllInvoiceClick(Sender: TObject);
begin
  getAllInvoice;
end;

procedure TfrmMasterInvoice.cmbCustomerChange(Sender: TObject);
begin
  btnRefreshAllInvoiceClick(sender);  
end;

procedure TfrmMasterInvoice.cmbPaytypeChange(Sender: TObject);
begin
  btnRefreshAllInvoiceClick(sender);
end;

procedure TfrmMasterInvoice.cmbPayStatusChange(Sender: TObject);
begin
  btnRefreshAllInvoiceClick(sender);
end;

procedure TfrmMasterInvoice.edSearchChange(Sender: TObject);
begin
  btnRefreshAllInvoiceClick(sender);
end;

procedure TfrmMasterInvoice.btnCancelClick(Sender: TObject);
begin
  if cdsInvoiceHdr.State in [dsedit,dsinsert] then cdsInvoiceHdr.Cancel;
  if cdsInvoiceDtl.State in [dsedit,dsinsert] then cdsInvoiceDtl.Cancel;

  pgAllClients.ActivePage:=TabList;

end;

end.
