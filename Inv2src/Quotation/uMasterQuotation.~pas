unit uMasterQuotation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel,CommonLIB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxLabel, DBCtrls, RzDBEdit, xgButton, ComCtrls, RzDTP,
  RzDBDTP, Buttons, Mask, RzEdit, RzButton, RzCmboBx, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBClient, cxContainer;

type
  TfrmMasterQuotation = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    TabList: TTabSheet;
    Splitter1: TSplitter;
    pnMiddle: TRzPanel;
    grdAllQuotations: TcxGrid;
    grdQuotationList: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    grdQuotationListColumn1: TcxGridDBColumn;
    grdQuotationListColumn2: TcxGridDBColumn;
    grdQuotationListColumn4: TcxGridDBColumn;
    grdQuotationListColumn5: TcxGridDBColumn;
    grdQuotationListColumn6: TcxGridDBColumn;
    grdQuotationListColumn8: TcxGridDBColumn;
    grdPOListColF13: TcxGridDBColumn;
    grdQuotationListFLG: TcxGridDBColumn;
    grdQuotationListFLR: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnTop: TRzPanel;
    RzLabel17: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    cmbWarehouse: TRzComboBox;
    cmbDepartments: TRzComboBox;
    cmbSuppliers: TRzComboBox;
    btnRefresh: TRzBitBtn;
    edSearch: TRzEdit;
    cmbPOType: TRzComboBox;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    btnNewKEYIN: TRzBitBtn;
    btnNewPR: TRzBitBtn;
    btnEditPO: TRzBitBtn;
    btnDeletePO: TRzBitBtn;
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
    RzLabel8: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    btnSearchJob: TSpeedButton;
    btnSearchPOType: TSpeedButton;
    btnSearchKind: TSpeedButton;
    btnSearchCust: TSpeedButton;
    btnSearchVAT: TSpeedButton;
    RzLabel13: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel20: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    btnAddItem: TRzBitBtn;
    btnEditItem: TRzBitBtn;
    btnImportFromPR: TRzBitBtn;
    btnImportFromIssueReq: TRzBitBtn;
    RzDBEdit9: TRzDBEdit;
    btnNew: TRzBitBtn;
    btnDeleteItem: TRzBitBtn;
    RzDBEdit10: TRzDBEdit;
    edJobCode: TRzEdit;
    edJobName: TRzEdit;
    edPOTypeCode: TRzEdit;
    edPOTypeName: TRzEdit;
    edPOKndCode: TRzEdit;
    edPOKndName: TRzEdit;
    edCustCode: TRzEdit;
    edCustName: TRzEdit;
    edVATCode: TRzEdit;
    edVATName: TRzEdit;
    btnPrintQuotation: TRzBitBtn;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    btnDocument: TxgButton;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBMemo1: TRzDBMemo;
    RzPanel4: TRzPanel;
    grdPoItems: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel5: TRzPanel;
    lbAmount: TRzLabel;
    lbVat: TRzLabel;
    lbNetAmount: TRzLabel;
    lbStatus: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    btnRevise: TRzBitBtn;
    btnHold: TRzBitBtn;
    btnApprove: TRzBitBtn;
    btnCancelPO: TRzBitBtn;
    dsQuotationHdr: TDataSource;
    cdsQuotationHdr: TClientDataSet;
    cdsQuotationDtl: TClientDataSet;
    dsQuotationDtl: TDataSource;
    RzLabel21: TRzLabel;
    edRateCode: TRzEdit;
    btnSearchRate: TSpeedButton;
    edRateName: TRzEdit;
    RzLabel22: TRzLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzLabel23: TRzLabel;
    RzDBDateTimePicker3: TRzDBDateTimePicker;
    RzLabel24: TRzLabel;
    edPayTypeCode: TRzEdit;
    btnSearchPayType: TSpeedButton;
    edPayTypeName: TRzEdit;
    cdsAllQuotation: TClientDataSet;
    dsAllQuotation: TDataSource;
    edCustContact: TRzEdit;
    RzLabel1: TRzLabel;
    lbQuoAMT: TcxLabel;
    lbQuoVatAmt: TcxLabel;
    lbQuoDiscountAmt: TcxLabel;
    lbQuoNetAmt: TcxLabel;
    RzLabel25: TRzLabel;
    btnSearchVatType: TSpeedButton;
    edVatTypeCode: TRzEdit;
    edVatTypeName: TRzEdit;
    procedure btnNewKEYINClick(Sender: TObject);
    procedure edCustCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchCustClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdQuotationListDblClick(Sender: TObject);
    procedure btnSearchRateClick(Sender: TObject);
    procedure edRateCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchPayTypeClick(Sender: TObject);
    procedure edPayTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSearchVATClick(Sender: TObject);
    procedure edVATCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchJobClick(Sender: TObject);
    procedure edJobCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchVatTypeClick(Sender: TObject);
    procedure edVatTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPrintQuotationClick(Sender: TObject);
    procedure btnEditItemClick(Sender: TObject);
    procedure btnDeleteItemClick(Sender: TObject);
    procedure grdQuotationListCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    FQuotationCode : integer;

    FDLLParameter: TDLLParameter;
    FCustomerCode: integer;
    FCustContact: string;
    FRateCode: integer;
    FPayTypeCode: integer;
    FQuoAmount: currency;
    FVatCode: integer;
    FJobCode: integer;
    FQuotationDiscount: currency;
    FQuotaionNet: currency;

    FQuotationVat: currency;
    FVatTypeCode: integer;
    FVat: currency;
    FVatType: string;

    FQuoGoods: currency;

    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure getAllQuotation;
    procedure getData(code:integer);
    procedure SetCustomerCode(const Value: integer);
    procedure SetCustContact(const Value: string);
    procedure SetRateCode(const Value: integer);
    procedure SetPayTypeCode(const Value: integer);
    procedure SetQuoAmount(const Value: currency);
    procedure SetVatCode(const Value: integer);
    procedure SetJobCode(const Value: integer);
    procedure SetQuotaionNet(const Value: currency);
    procedure SetQuotationDiscount(const Value: currency);
    procedure SetQuotationVat(const Value: currency);
    procedure SetVatTypeCode(const Value: integer);
    procedure SetVat(const Value: currency);
    procedure QuotationCalc;
    procedure SetVatType(const Value: string);

    procedure SetQuoGoods(const Value: currency);
    { Private declarations }
  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property CustomerCode:integer read FCustomerCode write SetCustomerCode;
    property RateCode:integer read FRateCode write SetRateCode;
    property CustContact : string read FCustContact write SetCustContact;
    property PayTypeCode : integer read FPayTypeCode write SetPayTypeCode;
    property QuoAmount : currency read FQuoAmount write SetQuoAmount;
    property VatCode : integer read FVatCode write SetVatCode;
    property Vat : currency read FVat write SetVat;
    property VatType : string read FVatType write SetVatType;
    property JobCode : integer read FJobCode write SetJobCode;
    property VatTypeCode : integer read FVatTypeCode write SetVatTypeCode;


    property QuoGoods:currency read FQuoGoods write SetQuoGoods;
    property QuotationVat : currency read FQuotationVat write SetQuotationVat;
    property QuotationDiscount : currency read FQuotationDiscount write SetQuotationDiscount;
    property QuotaionNet : currency read FQuotaionNet write SetQuotaionNet;
  end;

var
  frmMasterQuotation: TfrmMasterQuotation;

implementation

uses DevCoreLIB, STK_LIB, CdeLIB, CommonUtils, AddProdItemFrm, STDLIB;

{$R *.dfm}

{ TfrmMasterQuotation }

procedure TfrmMasterQuotation.getAllQuotation;
begin
  cdsAllQuotation.Data:=SAMGetDataSet('select * from ICMTTQUH'); 
end;

procedure TfrmMasterQuotation.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterQuotation.btnNewKEYINClick(Sender: TObject);
begin
  getData(0);
end;

procedure TfrmMasterQuotation.getData(code: integer);
var cdsTempCust : TClientDataSet;
begin
  pgAllClients.ActivePage:=TabData;

  cdsQuotationHdr.Data :=SAMGetDataSet('select * from ICMTTQUH where QUHCOD='+IntToStr(code));
  cdsQuotationDtl.Data :=SAMGetDataSet('select * from ICMTTQUD where QUDCOD='+IntToStr(code));


  if not (cdsQuotationHdr.fieldbyname('QUHCUS').IsNull) then
  begin
   CustomerCode := cdsQuotationHdr.fieldbyname('QUHCUS').AsInteger;
   RateCode := cdsQuotationHdr.fieldbyname('QUHRAT').AsInteger;
   PayTypeCode:= cdsQuotationHdr.fieldbyname('QUHPAT').AsInteger;
   VatTypeCode:= cdsQuotationHdr.fieldbyname('QUHVTY').AsInteger;
   VatCode:= cdsQuotationHdr.fieldbyname('QUHVAC').AsInteger;
   JobCode := cdsQuotationHdr.fieldbyname('QUHJOB').AsInteger;

   QuoAmount := cdsQuotationHdr.fieldbyname('QUHAMT').AsCurrency;

   QuotationVat := cdsQuotationHdr.fieldbyname('QUHVAT').AsCurrency;
//   QuotationDiscount := cdsQuotationHdr.fieldbyname('QUHAMT').AsCurrency;
   QuotaionNet := cdsQuotationHdr.fieldbyname('QUHNET').AsCurrency;

   FQuotationCode :=cdsQuotationHdr.fieldbyname('QUHCOD').AsInteger;


   QuotationCalc;
   cdsTempCust := TClientDataSet.Create(nil);
   try
    cdsTempCust.data := SAMGetDataSet('select * from ICMTTCSH where CSHCOD='+IntToStr(CustomerCode));
    if cdsTempCust.Active then
      if cdsTempCust.RecordCount>0 then
      begin
        CustContact := cdsTempCust.fieldbyname('CSHCON').AsString;
      end;
   finally
    cdsTempCust.Free;
   end;
  end;



end;

procedure TfrmMasterQuotation.edCustCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edCustCode.Text)<>'' then
    begin
      if IsInteger(trim(edCustCode.Text))
      then
       if getExistMTTCode('CSH',trim(edCustCode.Text)) then
          CustomerCode := getMTTCOD('CSH',trim(edCustCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบลูกค้าที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchCustClick(sender);
  end;
end;

procedure TfrmMasterQuotation.btnSearchCustClick(Sender: TObject);
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
      CustomerCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterQuotation.SetCustomerCode(const Value: integer);
begin
  FCustomerCode := Value;
  edCustCode.Text := getMTTCDE('CSH',IntToStr(FCustomerCode));
  edCustName.Text := getMTTName('CSH',IntToStr(FCustomerCode));
end;

procedure TfrmMasterQuotation.btnSaveClick(Sender: TObject);
var IsNew : boolean;
  irow : integer;
  lotNo : string;
begin
  IsNew := false;
  lotNo:='';

  if cdsQuotationDtl.State in [dsedit,dsinsert] then cdsQuotationDtl.Post;
  if not (cdsQuotationHdr.State in [dsedit,dsinsert]) then cdsQuotationHdr.Edit;

    cdsQuotationHdr.FieldByName('QUHCUS').AsInteger := FCustomerCode;
    cdsQuotationHdr.FieldByName('QUHRAT').AsInteger := FRateCode;
    cdsQuotationHdr.FieldByName('QUHPAT').AsInteger := FPayTypeCode;
    cdsQuotationHdr.FieldByName('QUHVAC').AsInteger := FVatCode;
    cdsQuotationHdr.FieldByName('QUHJOB').AsInteger := FJobCode;
    cdsQuotationHdr.FieldByName('QUHVTY').AsInteger := FVatTypeCode;



//  cdsQuotationHdr.FieldByName('IUHIRC').AsInteger := cdsIssueReqHeader.fieldbyname('IRHCOD').AsInteger;
//  cdsQuotationHdr.FieldByName('IUHWH0').AsInteger := cdsIssueReqHeader.fieldbyname('IRHWH0').AsInteger;
 // cdsQuotationHdr.FieldByName('CUHWH1').AsInteger := FDepCode;
 // cdsQuotationHdr.FieldByName('IUHDTE').AsDateTime := getServerDate;

  if cdsQuotationHdr.State in [dsinsert] then
  begin
    IsNew :=true;
    if cdsQuotationHdr.FieldByName('QUHACT').IsNull then
      cdsQuotationHdr.FieldByName('QUHACT').AsString:='A';

    cdsQuotationHdr.FieldByName('QUHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','MTT_QUHCOD','CDENM1');
    cdsQuotationHdr.FieldByName('QUHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','MTT_QUHCOD','CDEPRE')
                                                        ,cdsQuotationHdr.FieldByName('QUHCOD').AsInteger,getCde('SETTING','RUNNING','MTT_QUHCOD_LEN','CDENM1'));
    cdsQuotationHdr.FieldByName('QUHREV').AsInteger := 1;
  end;

    if cdsQuotationDtl.RecordCount>0 then
      begin
        // Fill COD
        cdsQuotationDtl.First;
        while not cdsQuotationDtl.Eof do
        begin

          if not (cdsQuotationDtl.State in [dsedit,dsinsert]) then cdsQuotationDtl.Edit;
          cdsQuotationDtl.FieldByName('QUDCOD').AsInteger := cdsQuotationHdr.FieldByName('QUHCOD').AsInteger;
          //cdsQuotationDtl.FieldByName('CUDIRC').AsInteger := cdsQuotationHdr.FieldByName('CUHCOD').AsInteger;

          setEntryUSRDT(cdsQuotationDtl,DLLParameter.UserID);
          setSystemCMP(cdsQuotationDtl,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);


          cdsQuotationDtl.Post;
          cdsQuotationDtl.Next;
        end;





      end;




    setEntryUSRDT(cdsQuotationHdr,DLLParameter.UserID);
    setSystemCMP(cdsQuotationHdr,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);







  if not ( cdsQuotationHdr.State in [dsinsert,dsedit]) then cdsQuotationHdr.Edit;


//    cdsQuotationHdr.FieldByName('CUHAMT').AsCurrency := FCuttAmount;
//    cdsQuotationHdr.FieldByName('CUHWH1').AsInteger := DepCode;
//    cdsQuotationHdr.FieldByName('CUHJOB').AsInteger := CuttProjectCode;
//    cdsQuotationHdr.FieldByName('CUHTYP').AsInteger := CUttTypeCode;
    cdsQuotationHdr.FieldByName('QUHVAT').AsCurrency := FVat;
    cdsQuotationHdr.FieldByName('QUHVAM').AsCurrency := FQuotationVat;
    cdsQuotationHdr.FieldByName('QUHAMT').AsCurrency := FQuoAmount;
    cdsQuotationHdr.FieldByName('QUHGDM').AsCurrency := FQuoGoods;

    cdsQuotationHdr.FieldByName('QUHNET').AsCurrency := FQuotaionNet;
    
    setModifyUSRDT(cdsQuotationHdr,DLLParameter.UserID);
   cdsQuotationHdr.Post;



  if cdsQuotationDtl.State in [dsEdit,dsInsert] then cdsQuotationDtl.Post;
  if cdsQuotationDtl.ChangeCount>0 then
  begin
    //UpdateDataset(cdsIssueDetail,'select * from ICTRNRCD limit 0');
    SAMUpdateDataset(cdsQuotationDtl,'select * from ICMTTQUD where QUDCOD='+IntToStr(FQuotationCode)+' order by QUDSEQ');
  end;


  if cdsQuotationHdr.State in [dsEdit,dsInsert] then cdsQuotationHdr.Post;
  if cdsQuotationHdr.ChangeCount>0 then
  begin
    SAMUpdateDataset(cdsQuotationHdr,'select * from ICMTTQUH limit 0');
    FQuotationCode := cdsQuotationHdr.FieldByName('QUHCOD').AsInteger;

    if IsNew then
    begin
      setCdeRun('SETTING','RUNNING','MTT_QUHCOD','CDENM1');

    end;

   { if lotNo<>'' then
      setCdeRun('SETTING','RUNNING','LOTNO','CDENM1');
      }


  end;

  ShowMessage('Successfull.');
  getData(FQuotationCode);

end;
procedure TfrmMasterQuotation.FormShow(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabList;
  getAllQuotation;
end;

procedure TfrmMasterQuotation.grdQuotationListDblClick(Sender: TObject);
begin
  getData(cdsAllQuotation.fieldbyname('QUHCOD').AsInteger);
end;

procedure TfrmMasterQuotation.SetCustContact(const Value: string);
begin
  FCustContact := Value;
  edCustContact.Text := FCustContact;
end;

procedure TfrmMasterQuotation.btnSearchRateClick(Sender: TObject);
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

procedure TfrmMasterQuotation.SetRateCode(const Value: integer);
begin
  FRateCode := Value;
  edRateCode.Text := getMTTCDE('RA1',IntToStr(FRateCode));
  edRateName.Text := getMTTName('RA1',IntToStr(FRateCode));
end;

procedure TfrmMasterQuotation.edRateCodeKeyDown(Sender: TObject;
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

procedure TfrmMasterQuotation.SetPayTypeCode(const Value: integer);
begin
  FPayTypeCode := Value;
  edPayTypeCode.Text := getMTTCDE('PAT',IntToStr(FPayTypeCode));
  edPayTypeName.Text := getMTTName('PAT',IntToStr(FPayTypeCode));
end;

procedure TfrmMasterQuotation.btnSearchPayTypeClick(Sender: TObject);
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

procedure TfrmMasterQuotation.edPayTypeCodeKeyDown(Sender: TObject;
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


procedure TfrmMasterQuotation.btnAddItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  Seq , ans ,ItemQTY : integer;
  ItemPrice ,ItemAmount: currency;

begin
  try
    frmAddItem := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := true;
    frmAddItem.QuotationCode := FQuotationCode;
    frmAddItem.ProdCode := 0;
    frmAddItem.WarehouseCode := 0;
    frmAddItem.UnitCode := 0;
    frmAddItem.PackingCode:=0;
    frmAddItem.Qty := 1;
    frmAddItem.UnitPrice := 0;
    frmAddItem.ShowModal;

    Seq := cdsQuotationDtl.RecordCount+1;

    if cdsQuotationDtl.Active then
      if frmAddItem.IsOK then
      begin
        if cdsQuotationDtl.Locate('QUDPRD;QUDUNI;QUDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        begin
          ans := Application.MessageBox(pchar('พบรายการสินค้าซ้ำ '+#10#13+'[Yes]-ต้องการแก้ไข '+#10#13+'[No]-เพิ่มจำนวน '+#10#13+'[Cancel]-ยกเลิก !!!'),pchar('Confirm'),MB_YESNOCANCEL or MB_ICONWARNING);


          ItemQTY:= cdsQuotationDtl.FieldByName('QUDQTY').AsInteger;
          ItemPrice := cdsQuotationDtl.FieldByName('QUDCOS').AsCurrency ;
          ItemAmount := cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency;

          if ans = mrYes then
          begin
            QuoAmount := QuoAmount - cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency; // POAMOUNT

            cdsQuotationDtl.Edit;
            cdsQuotationDtl.FieldByName('QUDQTY').AsInteger := frmAddItem.Qty;
            cdsQuotationDtl.FieldByName('QUDCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

            QuoAmount := QuoAmount + cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency; // POAMOUNT
          end else
          if ans = mrNo then
          begin
            QuoAmount := QuoAmount - ItemAmount; // POAMOUNT
            cdsQuotationDtl.Edit;
            cdsQuotationDtl.FieldByName('QUDQTY').AsInteger := ItemQTY + frmAddItem.Qty;
            //cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency := (ItemQTY + frmAddItem.Qty)*ItemPrice;

            QuoAmount := QuoAmount + ((ItemQTY + frmAddItem.Qty)*ItemPrice); // POAMOUNT
          end else
          if ans=mrCancel then Exit;

        end else
        begin
          cdsQuotationDtl.Append ;
          Seq := cdsQuotationDtl.RecordCount+1;
          cdsQuotationDtl.FieldByName('QUDSEQ').AsInteger := Seq;
          QuoAmount := QuoAmount + (frmAddItem.Qty*frmAddItem.UnitPrice);  // POAMOUNT

          cdsQuotationDtl.FieldByName('QUDQTY').AsInteger := frmAddItem.Qty;
          cdsQuotationDtl.FieldByName('QUDCOS').AsCurrency := frmAddItem.UnitPrice;
          cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;
        end;


          //cdsPODetail.Append;
          cdsQuotationDtl.FieldByName('QUDCOD').AsInteger := FQuotationCode;
          cdsQuotationDtl.FieldByName('QUDCDE').AsString  := frmAddItem.ProdCDE;
          cdsQuotationDtl.FieldByName('QUDPRD').AsInteger := frmAddItem.ProdCode;

          cdsQuotationDtl.FieldByName('QUDWH0').AsInteger := frmAddItem.WarehouseCode;
          cdsQuotationDtl.FieldByName('QUDUNI').AsInteger := frmAddItem.UnitCode;

          cdsQuotationDtl.FieldByName('QUDPAC').AsInteger := frmAddItem.PackingCode;



          cdsQuotationDtl.FieldByName('QUDSEQ').AsInteger := Seq;

          cdsQuotationDtl.FieldByName('QUDPCN').AsString := frmAddItem.PackingName;
          cdsQuotationDtl.FieldByName('QUDUNA').AsString := frmAddItem.Unitname;
          cdsQuotationDtl.FieldByName('QUDPNA').AsString := frmAddItem.ProdName;

          cdsQuotationDtl.Post;

      end;
  finally
    frmAddItem.free;
  end;
end;


procedure TfrmMasterQuotation.SetQuoAmount(const Value: currency);
begin
  FQuoAmount := Value;
  QuotationCalc;
end;

procedure TfrmMasterQuotation.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
end;

procedure TfrmMasterQuotation.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmMasterQuotation.btnSearchVATClick(Sender: TObject);
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

procedure TfrmMasterQuotation.SetVatCode(const Value: integer);
begin
  FVatCode := Value;

  Vat := getValueCurrency('ICMTTVAT','VATRAT','VAT',IntToStr(FVatCode));

  edVATCode.Text := getMTTCDE('VAT',IntToStr(FVatCode));
  edVATName.Text := getMTTName('VAT',IntToStr(FVatCode));
end;

procedure TfrmMasterQuotation.edVATCodeKeyDown(Sender: TObject;
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

procedure TfrmMasterQuotation.btnSearchJobClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('JOBCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('JOBCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('JOBNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('JOBCOD','รหัส'));
  _Cols.Add(TStringValue.Create('JOBCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('JOBNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อโครงการ';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTJOB where JOBACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'JOBCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      JobCode := StrToInt(_Parameter.SelectCode);
  end;


end;


procedure TfrmMasterQuotation.SetJobCode(const Value: integer);
begin
  FJobCode := Value;
  edJobCode.Text := getMTTCDE('JOB',IntToStr(FJobCode));
  edJobName.Text := getMTTName('JOB',IntToStr(FJobCode));
end;

procedure TfrmMasterQuotation.edJobCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edJobCode.Text)<>'' then
    begin
      if IsInteger(trim(edJobCode.Text))
      then
       if getExistMTTCode('JOB',trim(edJobCode.Text)) then
          JobCode := getMTTCOD('JOB',trim(edJobCode.Text))
        else
            Application.MessageBox(pchar('ไม่พบข้อมูลที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchJobClick(sender);
  end;
end;

procedure TfrmMasterQuotation.SetQuotaionNet(const Value: currency);
begin
  FQuotaionNet := Value;
  lbQuoNetAmt.Caption:=FormatCurr('#,##0.00',FQuotaionNet);
end;



procedure TfrmMasterQuotation.SetQuotationDiscount(const Value: currency);
begin
  FQuotationDiscount := Value;
  lbQuoDiscountAmt.Caption:=FormatCurr('#,##0.00',FQuotationDiscount);
end;

procedure TfrmMasterQuotation.SetQuotationVat(const Value: currency);
begin
  FQuotationVat := Value;
  lbQuoVatAmt.Caption:=FormatCurr('#,##0.00',FQuotationVat);
end;

procedure TfrmMasterQuotation.SetVatTypeCode(const Value: integer);
begin
  FVatTypeCode := Value;
  edVatTypeCode.Text := getMTTCDE('VTY',IntToStr(FVatTypeCode));
  edVatTypeName.Text := getMTTName('VTY',IntToStr(FVatTypeCode));

  VatType := getValueString('ICMTTVTY','VTYFLG','VTY',IntToStr(FVatTypeCode));

  QuotationCalc;

end;

procedure TfrmMasterQuotation.btnSearchVatTypeClick(Sender: TObject);
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

procedure TfrmMasterQuotation.edVatTypeCodeKeyDown(Sender: TObject;
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

procedure TfrmMasterQuotation.SetVat(const Value: currency);
begin
  FVat := Value;
  QuotationCalc;
end;

procedure TfrmMasterQuotation.QuotationCalc;
begin



 if UpperCase(VatType)='I' then
 begin
  QuotationVat := (QuoAmount*Vat)/(100+Vat);
  QuotaionNet := QuoAmount;
  QuoGoods := QuoAmount-QuotationVat;
 end
 else if UpperCase(VatType)='E' then
 begin
  QuotationVat := (QuoAmount*Vat)/100;
  QuotaionNet := QuoAmount+QuotationVat;
  QuoGoods := QuoAmount;
 end
 else  if UpperCase(VatType)='N' then
 begin
   QuotationVat:=0;
   QuotaionNet :=  QuoAmount;
   QuoGoods := QuoAmount;
 end;


end;

procedure TfrmMasterQuotation.SetVatType(const Value: string);
begin
  FVatType := Value;
end;



procedure TfrmMasterQuotation.SetQuoGoods(const Value: currency);
begin
  FQuoGoods := Value;
  lbQuoAMT.Caption:=FormatCurr('#,##0.00',FQuoGoods);
end;

procedure TfrmMasterQuotation.btnPrintQuotationClick(Sender: TObject);
var dllParams : TDLLParameter;
  DefaltValue:TList;
begin

    DefaltValue:=TList.Create;
    DefaltValue.Add(TStringValue.Create('QUHCOD',IntToStr(FQuotationCode)));
    //DefaltValue.Add(TStringValue.Create('RCHCOD',IntToStr(FPOCode)));
    dllParams.ReportCode:='BL00-001';
    ShowReportGenerator(Application,nil,swModal,dllParams,DefaltValue,true,GetReportGroup);

end;

procedure TfrmMasterQuotation.btnEditItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  OLDAmount : Currency;
  Seq : integer;
begin
  if ( ( not cdsQuotationDtl.Active ) or (not cdsQuotationHdr.Active)) then Exit;


  if cdsQuotationDtl.RecordCount<=0 then Exit;
  if cdsQuotationDtl.FieldByName('QUDCOD').IsNull then Exit;

  try
    frmAddItem        := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := false;


    frmAddItem.QuotationCode  := FQuotationCode;
    frmAddItem.ProdCode       := cdsQuotationDtl.fieldbyname('QUDPRD').AsInteger;
    frmAddItem.WarehouseCode  := cdsQuotationDtl.fieldbyname('QUDWH0').AsInteger;
    frmAddItem.UnitCode       := cdsQuotationDtl.fieldbyname('QUDUNI').AsInteger;
    frmAddItem.PackingCode    := cdsQuotationDtl.fieldbyname('QUDPAC').AsInteger;
    frmAddItem.Qty            := cdsQuotationDtl.fieldbyname('QUDQTY').AsInteger;
    frmAddItem.UnitPrice      := cdsQuotationDtl.fieldbyname('QUDCOS').AsCurrency;
    OLDAmount := cdsQuotationDtl.fieldbyname('QUDAMT').AsCurrency;
    frmAddItem.ShowModal;

    if frmAddItem.IsOK then
    begin

      if cdsQuotationDtl.Locate('QUDPRD;QUDUNI;QUDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        cdsQuotationDtl.Edit
      else
      begin
        cdsQuotationDtl.Append ;
        Seq := cdsQuotationDtl.RecordCount+1;
        cdsQuotationDtl.FieldByName('QUDSEQ').AsInteger := Seq;
      end;



      cdsQuotationDtl.FieldByName('QUDCOD').AsInteger := FQuotationCode;
      cdsQuotationDtl.FieldByName('QUDPRD').AsInteger := frmAddItem.ProdCode;
      cdsQuotationDtl.FieldByName('QUDWH0').AsInteger := frmAddItem.WarehouseCode;
      cdsQuotationDtl.FieldByName('QUDUNI').AsInteger := frmAddItem.UnitCode;
      cdsQuotationDtl.FieldByName('QUDPAC').AsInteger := frmAddItem.PackingCode;

      QuoAmount := QuoAmount - OLDAmount; // POAMOUNT
      cdsQuotationDtl.FieldByName('QUDQTY').AsInteger := frmAddItem.Qty;
      cdsQuotationDtl.FieldByName('QUDCOS').AsCurrency := frmAddItem.UnitPrice;
      cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

      QuoAmount := QuoAmount + cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency; // POAMOUNT
      
      cdsQuotationDtl.FieldByName('QUDPCN').AsString := frmAddItem.PackingName;
      cdsQuotationDtl.FieldByName('QUDUNA').AsString := frmAddItem.Unitname;
      cdsQuotationDtl.FieldByName('QUDPNA').AsString := frmAddItem.ProdName;


      cdsQuotationDtl.Post;

    end;
  finally
    frmAddItem.free;
  end;
end;

procedure TfrmMasterQuotation.btnDeleteItemClick(Sender: TObject);
begin
    if cdsQuotationDtl.RecordCount>0 then
      if not cdsQuotationDtl.FieldByName('QUDCOD').IsNull then
        if Application.MessageBox(pchar('ยืนยันลบรายการสินค้า ?'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
        begin
          QuoAmount := QuoAmount - cdsQuotationDtl.FieldByName('QUDAMT').AsCurrency; // POAMOUNT
          cdsQuotationDtl.Delete;
        end;

end;

procedure TfrmMasterQuotation.grdQuotationListCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;

end;

procedure TfrmMasterQuotation.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

end.
