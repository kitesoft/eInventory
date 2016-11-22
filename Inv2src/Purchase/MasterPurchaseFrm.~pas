unit MasterPurchaseFrm;

interface
                                                                          
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CommonLIB, StdCtrls, RzLabel, ExtCtrls, RzPanel, ComCtrls,
  RzButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Mask, RzEdit,
  RzDBEdit, DBClient, cxTextEdit, cxLabel, Buttons, RzCmboBx, RzDTP,
  RzDBDTP, Menus, xgButton, ImgList, DBCtrls;

type
  TfrmMasterPurchase = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    TabPoList: TTabSheet;
    TabPoData: TTabSheet;
    pnMiddle: TRzPanel;
    pnTop: TRzPanel;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    Splitter1: TSplitter;
    grdPOLIST: TcxGrid;
    grdPOHList: TcxGridDBTableView;
    grdPOListColF13: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
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
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel8: TRzLabel;
    lbAmount: TRzLabel;
    lbVat: TRzLabel;
    lbNetAmount: TRzLabel;
    btnAddItem: TRzBitBtn;
    btnEditItem: TRzBitBtn;
    btnImportFromPR: TRzBitBtn;
    btnImportFromIssueReq: TRzBitBtn;
    RzLabel14: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    btnRevise: TRzBitBtn;
    cdsPODetail: TClientDataSet;
    dsPODetail: TDataSource;
    dsPOHeader: TDataSource;
    cdsPOHeader: TClientDataSet;
    btnNew: TRzBitBtn;
    dsPOList: TDataSource;
    cdsPOList: TClientDataSet;
    btnDeleteItem: TRzBitBtn;
    btnHold: TRzBitBtn;
    btnApprove: TRzBitBtn;
    lbStatus: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzLabel15: TRzLabel;
    edDepCode: TRzEdit;
    btnSearchDep: TSpeedButton;
    edDepName: TRzEdit;
    edWhCode: TRzEdit;
    btnSearchWh: TSpeedButton;
    edWhName: TRzEdit;
    edPOTypeCode: TRzEdit;
    btnSearchPOType: TSpeedButton;
    edPOTypeName: TRzEdit;
    edPOKndCode: TRzEdit;
    btnSearchKind: TSpeedButton;
    edPOKndName: TRzEdit;
    edSuppCode: TRzEdit;
    btnSearchSupp: TSpeedButton;
    edSuppName: TRzEdit;
    edVATCode: TRzEdit;
    btnSearchVAT: TSpeedButton;
    edVATName: TRzEdit;
    btnPrintPO: TRzBitBtn;
    grdPOHListColumn2: TcxGridDBColumn;
    grdPOHListColumn4: TcxGridDBColumn;
    grdPOHListColumn5: TcxGridDBColumn;
    grdPOHListColumn6: TcxGridDBColumn;
    grdPOHListColumn8: TcxGridDBColumn;
    RzLabel17: TRzLabel;
    cmbWarehouse: TRzComboBox;
    cmbDepartments: TRzComboBox;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    cmbSuppliers: TRzComboBox;
    btnNewKEYINPO: TRzBitBtn;
    btnNewPR: TRzBitBtn;
    btnEditPO: TRzBitBtn;
    btnDeletePO: TRzBitBtn;
    grdPOHListFLG: TcxGridDBColumn;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    PopupDocuments: TPopupMenu;
    N1: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    btnDocument: TxgButton;
    ImageList1: TImageList;
    grdPOHListFLR: TcxGridDBColumn;
    RzLabel13: TRzLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzLabel16: TRzLabel;
    RzDBMemo1: TRzDBMemo;
    btnCancelPO: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    edSearch: TRzEdit;
    RzLabel18: TRzLabel;
    grdPOHListColumn1: TcxGridDBColumn;
    RzLabel19: TRzLabel;
    cmbPOType: TRzComboBox;
    RzLabel20: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel21: TRzLabel;
    edVATTypeCode: TRzEdit;
    btnSearchVATType: TSpeedButton;
    edVATTypeName: TRzEdit;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel27: TRzLabel;
    procedure btnAddItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdPOHListDblClick(Sender: TObject);
    procedure btnEditItemClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cdsPODetailCalcFields(DataSet: TDataSet);
    procedure cdsPODetailAfterOpen(DataSet: TDataSet);
    procedure cdsPODetailAfterClose(DataSet: TDataSet);
    procedure cxGridDBTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnDeleteItemClick(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure btnReviseClick(Sender: TObject);
    procedure edDepCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchDepClick(Sender: TObject);
    procedure cxGridDBColumn13GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGridDBColumn14GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGridDBColumn16GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGridDBColumn18GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGridDBColumn10GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure edWhCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchWhClick(Sender: TObject);
    procedure btnSearchKindClick(Sender: TObject);
    procedure edPOKndCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPOTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchPOTypeClick(Sender: TObject);
    procedure btnSearchSuppClick(Sender: TObject);
    procedure edSuppCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchVATClick(Sender: TObject);
    procedure edVATCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdPOListColF13CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grdPOListColF13GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnNewPRClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure grdPOHListCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure btnPrintPOClick(Sender: TObject);
    procedure grdPOHListFLGCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grdPOHListFLRCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnCancelPOClick(Sender: TObject);
    procedure btnNewKEYINPOClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure pgAllClientsChange(Sender: TObject);
    procedure btnSearchVATTypeClick(Sender: TObject);
    procedure edVATTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FDLLParameter: TDLLParameter;
    FPOHFlag:string;
    FPOCode : integer;
    FISNew : boolean;
    FPOCDE : string;
    //FPOTypeCode : integer;
    FPOTypeCDE : string;
    //FPOKindCode : integer;
    FPOKindCDE : string;
    //FWarehouseCode : integer;
    FWarehouseCDE : string;
    //FSuppCode : integer;
    FSuppCDE : string;
    //FVATCode : integer;
    FVATCDE : string;
    FSelectPOHCDE:string;
    FVATRate : Currency;

    FPOAmount,POAmount_ : Currency;

    //FDepCode : integer;
    FDepCDE : string;
    FReviseNum : integer;
    initing:boolean;
    FPOVat: currency;
    FPONetAmount: currency;
    FDepCode: integer;
    FWarehouseCode: integer;
    FSuppCode: integer;
    FPOKindCode: integer;
    FPOTypeCode: integer;
    FVATCode: integer;
    FVATTypeCode: integer;
    FVATTypeFlag:string;

    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure getPoData(POCode : integer);
    procedure getPoList;
    procedure SetPOAmount(const Value: currency);
    procedure SetPONetAmount(const Value: currency);
    procedure SetPOVat(const Value: currency);
    procedure SetDepCode(const Value: integer);
    procedure SetWarehouseCode(const Value: integer);
    procedure SetSuppCode(const Value: integer);
    procedure SetPOKindCode(const Value: integer);
    procedure SetPOTypeCode(const Value: integer);
    procedure SetVATCode(const Value: integer);


    procedure initCmb();
    procedure enableButton(_btnAddItem,_btnEditItem,_btnDelItem,_btnImFPR,_btnImFIssueReq,_btnPrintPO,_btnPrintDocument,_btnApprove,_btnCancelPO,_btnHold,_btnRevise,_btnSave,_btnCancel:boolean);
    procedure SetVATTypeCode(const Value: integer);
    procedure Calc;

    { Private declarations }
  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property POAmount : currency read FPOAmount write SetPOAmount;
    property POVat : currency read FPOVat write SetPOVat;
    property PONetAmount : currency read FPONetAmount write SetPONetAmount;
    property DepCode : integer read FDepCode write SetDepCode;
    property WarehouseCode : integer read FWarehouseCode write SetWarehouseCode;
    property SuppCode : integer read FSuppCode write SetSuppCode;
    property POKindCode : integer read FPOKindCode write SetPOKindCode;
    property POTypeCode  : integer read FPOTypeCode write SetPOTypeCode;
    property VATCode : integer read FVATCode write SetVATCode;
    property VATTypeCode:integer read FVATTypeCode write SetVATTypeCode;
  end;

var
  frmMasterPurchase: TfrmMasterPurchase;

implementation
uses  STDLIB, CdeLIB, AddProdItemFrm, CommonUtils, STK_LIB, Math;

{$R *.dfm}

{ TfrmMasterPurchase }

procedure TfrmMasterPurchase.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterPurchase.btnAddItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  Seq , ans ,ItemQTY : integer;
  ItemPrice ,ItemAmount: currency;

begin
  try

    if (
       ( FDepCode=0 ) or (FWarehouseCode=0) or (FPOKindCode=0) or (FPOTypeCode=0) or (FVATCode=0) or (FSuppCode=0) or (FVATTypeCode=0)
    ) then
    begin
      Application.MessageBox(pchar('กรุณาระบุข้อมูลให้ถูกต้องก่อน!!'),pchar('Warning'),MB_OK or mb_iconwarning);
      Exit;
    end;

    frmAddItem := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := true;
    frmAddItem.PoCode := FPOCode;
    frmAddItem.ProdCode := 0;
    frmAddItem.WarehouseCode := 0;
    frmAddItem.UnitCode := 0;
    frmAddItem.PackingCode:=0;
    frmAddItem.Qty := 1;
    frmAddItem.UnitPrice := 0;
    frmAddItem.ShowModal;

    POAmount:=POAmount_;


    Seq := cdsPODetail.RecordCount+1;

    if cdsPODetail.Active then
      if frmAddItem.IsOK then
      begin
        if cdsPODetail.Locate('PODPRD;PODUNI;PODPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        begin
          ans := Application.MessageBox(pchar('พบรายการสินค้าซ้ำ '+#10#13+'[Yes]-ต้องการแก้ไข '+#10#13+'[No]-เพิ่มจำนวน '+#10#13+'[Cancel]-ยกเลิก !!!'),pchar('Confirm'),MB_YESNOCANCEL or MB_ICONWARNING);

          ItemQTY:= cdsPODetail.FieldByName('PODQTY').AsInteger;
          ItemPrice := cdsPODetail.FieldByName('PODCOS').AsCurrency ;
          ItemAmount := cdsPODetail.FieldByName('PODAMT').AsCurrency;

          if ans = mrYes then
          begin
            POAmount := POAmount - cdsPODetail.FieldByName('PODAMT').AsCurrency; // POAMOUNT

            cdsPODetail.Edit;
            cdsPODetail.FieldByName('PODQTY').AsInteger := frmAddItem.Qty;
            cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsPODetail.FieldByName('PODAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

            POAmount := POAmount + cdsPODetail.FieldByName('PODAMT').AsCurrency; // POAMOUNT
          end else
          if ans = mrNo then
          begin
            POAmount := POAmount - ItemAmount; // POAMOUNT
            cdsPODetail.Edit;
            cdsPODetail.FieldByName('PODQTY').AsInteger := ItemQTY + frmAddItem.Qty;
            //cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsPODetail.FieldByName('PODAMT').AsCurrency := (ItemQTY + frmAddItem.Qty)*ItemPrice;

            POAmount := POAmount + ((ItemQTY + frmAddItem.Qty)*ItemPrice); // POAMOUNT            
          end else
          if ans=mrCancel then Exit;

        end else
        begin
          cdsPODetail.Append ;
          Seq := cdsPODetail.RecordCount+1;
          cdsPODetail.FieldByName('PODSEQ').AsInteger := Seq;
          POAmount := POAmount + (frmAddItem.Qty*frmAddItem.UnitPrice);  // POAMOUNT

          cdsPODetail.FieldByName('PODQTY').AsInteger := frmAddItem.Qty;
          cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
          cdsPODetail.FieldByName('PODAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

        end;


          //cdsPODetail.Append;
          cdsPODetail.FieldByName('PODCOD').AsInteger := FPOCode;
          cdsPODetail.FieldByName('PODCDE').AsString  := frmAddItem.ProdCDE;
          cdsPODetail.FieldByName('PODPRD').AsInteger := frmAddItem.ProdCode;

          cdsPODetail.FieldByName('PODWH0').AsInteger := frmAddItem.WarehouseCode;
          cdsPODetail.FieldByName('PODUNI').AsInteger := frmAddItem.UnitCode;

          cdsPODetail.FieldByName('PODPAC').AsInteger := frmAddItem.PackingCode;



          cdsPODetail.FieldByName('PODSEQ').AsInteger := Seq;

          cdsPODetail.FieldByName('PODPCN').AsString := frmAddItem.PackingName;
          cdsPODetail.FieldByName('PODUNA').AsString := frmAddItem.Unitname;
          cdsPODetail.FieldByName('PODPNA').AsString := frmAddItem.ProdName;

          cdsPODetail.Post;

      end;

      POAmount_:=POAmount;
      calc;
  finally
    frmAddItem.free;
  end;
end;

procedure TfrmMasterPurchase.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
  TabPoData.Enabled:=false;
end;

procedure TfrmMasterPurchase.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmMasterPurchase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F3 then btnAddItemClick(sender);
  if Key=VK_F2 then btnEditItemClick(sender);
  if Key=VK_F4 then btnDeleteItemClick(sender);
end;

procedure TfrmMasterPurchase.getPoData(POCode: integer);
begin
 POAmount :=0;
 FISNew := (POCode=0);
 TabPoData.Enabled:=true;

 cdsPOHeader.Data := GetDataSet('select * from ICMTTPOH where POHCOD='+IntToStr(POCode));
 if cdsPOHeader.RecordCount<=0 then
  begin
   if not (cdsPOHeader.State in [dsedit,dsinsert]) then  cdsPOHeader.Edit;

   //cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
   //btnSave.Enabled := cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
   //FReviseNum := cdsPOHeader.FieldByName('POHREV').AsInteger;

   cdsPOHeader.FieldByName('POHAM0').AsCurrency:=0;
   cdsPOHeader.FieldByName('POHAMT').AsCurrency:=0;
   cdsPOHeader.FieldByName('POHDEP').AsInteger:=0;
   cdsPOHeader.FieldByName('POHWH0').AsInteger:=0;
   cdsPOHeader.FieldByName('POHPTY').AsInteger:=0;
   cdsPOHeader.FieldByName('POHTYP').AsInteger:=0;
   cdsPOHeader.FieldByName('POHVAC').AsInteger:=0;
   cdsPOHeader.FieldByName('POHVTY').AsInteger:=0;
   cdsPOHeader.FieldByName('POHSUP').AsInteger:=0;

   cdsPOHeader.FieldByName('POHDTE').AsDateTime:=getServerDate;
   cdsPOHeader.FieldByName('POHDUN').AsInteger := 15;

   cdsPOHeader.FieldByName('POHDUE').AsDateTime:=getServerDate+15;

 end;

 //cdsPODetail.Data := GetDataSet('select '''' as ProdNameTha,'''' as ProdNameEng,'''' as  ProdUniName ,'''' as  ProdPacName,PODSEQ,PODWH0,PODPRD,PODCDE,PODCOD,PODUNI,PODPAC,PODCOS,PODQTY,PODAMT from ICMTTPOD where PODCOD='+IntToStr(POCode)+' order by PODSEQ');
 cdsPODetail.Data := GetDataSet('select * from ICMTTPOD where PODCOD='+IntToStr(POCode)+' order by PODSEQ');

 btnApprove.Enabled := cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
 btnCancelPO.Enabled := cdsPOHeader.FieldByName('POHFLR').AsString='N';
 btnSave.Enabled := cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
 btnRevise.Enabled := true;//cdsPOHeader.FieldByName('POHFLR').AsString='A';
 btnHold.Enabled :=  cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
 btnPrintPO.Enabled :=cdsPOHeader.FieldByName('POHFLG').AsString='A';

 btnAddItem.Enabled := cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
 btnEditItem.Enabled := cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
 btnDeleteItem.Enabled :=cdsPOHeader.FieldByName('POHFLG').AsString<>'A';

 FPOHFlag := cdsPOHeader.FieldByName('POHFLG').AsString;


 if cdsPOHeader.FieldByName('POHFLG').AsString='C' then // cancel
 begin
   btnApprove.Enabled := false;
   btnCancelPO.Enabled := false;
   btnSave.Enabled := false;
   btnRevise.Enabled := false;
   btnHold.Enabled := false;
 end;

 if cdsPOHeader.FieldByName('POHFLG').AsString='N' then // newdoc
 begin
   btnRevise.Enabled := false;
 end;

 if cdsPOHeader.FieldByName('POHFLR').AsString='R' then // receive finish
 begin
   btnRevise.Enabled := false;
 end;


 FReviseNum := cdsPOHeader.FieldByName('POHREV').AsInteger;

 POAmount := cdsPOHeader.FieldByName('POHAMT').AsCurrency;
 DepCode :=  cdsPOHeader.FieldByName('POHDEP').AsInteger;
 WarehouseCode :=cdsPOHeader.FieldByName('POHWH0').AsInteger;
 POKindCode := cdsPOHeader.FieldByName('POHPTY').AsInteger;
 POTypeCode := cdsPOHeader.FieldByName('POHTYP').AsInteger;
 VATTypeCode := cdsPOHeader.FieldByName('POHVTY').AsInteger;
 VATCode := cdsPOHeader.FieldByName('POHVAC').AsInteger;
 SuppCode := cdsPOHeader.FieldByName('POHSUP').AsInteger;

 POAmount_:=cdsPOHeader.FieldByName('POHAM0').AsCurrency;
 calc;


 // FL1 Flag
 if  cdsPOHeader.FieldByName('POHFL1').AsString='Y' then
 begin
   btnApprove.Enabled := false;
   btnSave.Enabled    := false;
   btnRevise.Enabled  := false;
   lbStatus.caption:=' เอกสารห้ามแก้ไข ';
   //lbStatus.Color :=$00804000;
   lbStatus.Color :=$0000006C;
 end else
 begin
  lbStatus.Color :=$00804000;
  lbStatus.caption:=' เอกสารใหม่ ';
 end;




 TCurrencyField(cdsPODetail.FieldByName('PODCOS')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsPODetail.FieldByName('PODAMT')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsPODetail.FieldByName('PODQTY')).DisplayFormat:='#,##0';

end;

procedure TfrmMasterPurchase.btnNewClick(Sender: TObject);
begin
  // new po
  getPoData(0);
end;

procedure TfrmMasterPurchase.btnSaveClick(Sender: TObject);
var IsNew : boolean;
    irow : integer;
begin

  IsNew := false;

    if
    (
    (FVATCode<=0 ) or (FPOTypeCode<=0)  or (FPOKindCode<=0) or (FSuppCode<=0) or (FDepCode<=0) or (FWarehouseCode<=0)
    )
    then
    begin
      Application.MessageBox(pchar('ไม่สามารถบันทึกรายการได้'+#10#13+'กรุณาระบุข้อมูลให้ครบถ้วนก่อน!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;


  if (cdsPODetail.RecordCount<=0) then
  begin
      Application.MessageBox(pchar('ไม่สามารถบันทึกรายการได้'+#10#13+'เนื่องจากไม่มีรายการสินค้าที่ต้องการสั่งซื้อ!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
  end;


  if (cdsPOHeader.State in [dsinsert,dsedit]) then  cdsPOHeader.Post; // fix cal
  cdsPOHeader.Edit;
    if cdsPOHeader.FieldByName('POHACT').IsNull then
      cdsPOHeader.FieldByName('POHACT').AsString:='A';

   if FPOHFlag='R' then
   begin
    cdsPOHeader.FieldByName('POHFLG').AsString:='R';
    cdsPOHeader.FieldByName('POHREV').AsInteger := FReviseNum+1;
   end;

  //if cdsPOHeader.State in [dsinsert] then
  if FISNew then
  begin
    IsNew :=true;
    //cdsPOHeader.FieldByName('STKWH0').AsInteger :=FWarehouseCode;



    cdsPOHeader.FieldByName('POHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','MTT_POHCOD','CDENM1');
    cdsPOHeader.FieldByName('POHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','MTT_POHCOD','CDEPRE')
                                                        ,cdsPOHeader.FieldByName('POHCOD').AsInteger,getCde('SETTING','RUNNING','MTT_POHCOD_LEN','CDENM1'));

    if (cdsPOHeader.FieldByName('POHCOD').IsNull) or( cdsPOHeader.FieldByName('POHCOD').AsInteger=0) then
    begin
      Application.MessageBox(pchar('ไม่สามารถบันทึกรายการได้'+#10#13+'เนื่องจากเกิดความผิดพลาดทางระบบ กรุณาทำการบันทึกใหม่อีกครั้ง!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;


    FSelectPOHCDE := cdsPOHeader.FieldByName('POHCDE').AsString;




    setEntryUSRDT(cdsPOHeader,DLLParameter.UserID);
    setSystemCMP(cdsPOHeader,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
  end;


  if cdsPODetail.RecordCount>0 then
    begin

      cdsPODetail.First;
      while not cdsPODetail.Eof do
      begin
        if not (cdsPODetail.State in [dsedit,dsinsert]) then cdsPODetail.Edit;
        //if (cdsPODetail.FieldByName('PODCOD').IsNull) then
          cdsPODetail.FieldByName('PODCOD').AsInteger := cdsPOHeader.FieldByName('POHCOD').AsInteger;
        if (cdsPODetail.FieldByName('PODWH0').IsNull) then
          cdsPODetail.FieldByName('PODWH0').AsInteger := FWarehouseCode;


        if (cdsPODetail.State in [dsedit,dsinsert]) then cdsPODetail.Post;

        cdsPODetail.Next;
      end;
    end;


  if not (cdsPOHeader.State in [dsinsert,dsedit]) then
    cdsPOHeader.Edit;

    // AMOUNT ,VAT , NET
    cdsPOHeader.FieldByName('POHAM0').AsCurrency  :=  POAmount_;
    cdsPOHeader.FieldByName('POHAMT').AsCurrency  :=  FPOAmount;
    cdsPOHeader.FieldByName('POHVAM').AsCurrency  :=  FPOVat;
    cdsPOHeader.FieldByName('POHVTY').AsInteger   :=  FVATTypeCode;
    cdsPOHeader.FieldByName('POHVAC').AsCurrency  :=  FVATCode;
    cdsPOHeader.FieldByName('POHVAT').AsCurrency  :=  FVATRate;
    cdsPOHeader.FieldByName('POHNET').AsCurrency  :=  FPONetAmount;

    // lookup
    cdsPOHeader.FieldByName('POHTYP').AsInteger := FPOTypeCode;
    cdsPOHeader.FieldByName('POHPTY').AsInteger := FPOKindCode;
    cdsPOHeader.FieldByName('POHSUP').AsInteger := FSuppCode;
    cdsPOHeader.FieldByName('POHDEP').AsInteger := FDepCode;
    cdsPOHeader.FieldByName('POHWH0').AsInteger := FWarehouseCode;


    // due date
    cdsPOHeader.FieldByName('POHDUE').AsDateTime := cdsPOHeader.FieldByName('POHDTE').AsDateTime + cdsPOHeader.FieldByName('POHDUN').AsInteger;


  if cdsPOHeader.State in [dsinsert,dsedit] then
  begin
    setModifyUSRDT(cdsPOHeader,DLLParameter.UserID);
  end;



  try

    if cdsPODetail.State in [dsEdit,dsInsert] then cdsPODetail.Post;
    if cdsPODetail.ChangeCount>0 then
    begin
      UpdateDataset(cdsPODetail,'select * from ICMTTPOD limit 0');
    end;

    if cdsPOHeader.State in [dsEdit,dsInsert] then cdsPOHeader.Post;
    if cdsPOHeader.ChangeCount>0 then
    begin
      UpdateDataset(cdsPOHeader,'select * from ICMTTPOH limit 0');

      if IsNew then
      begin
        setCdeRun('SETTING','RUNNING','MTT_POHCOD','CDENM1');
      end;


    end;


    ShowMessage('Successfull.');

    TabPoData.Enabled:=false;
    pgAllClients.ActivePage:=TabPoList;

    getPoList;






  except
    on ee:Exception do
      begin
        Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONWARNING);
        Exit;
      end;
  end;


end;

procedure TfrmMasterPurchase.getPoList;
var strSQL,WHOCDE,WH1CDe,SUPCDE,POTCDE:string;
begin

WHOCDE := TString(cmbWarehouse.Items.Objects[cmbWarehouse.ItemIndex]).Str;
WH1CDE := TString(cmbDepartments.Items.Objects[cmbDepartments.ItemIndex]).Str;
SUPCDE := TString(cmbSuppliers.Items.Objects[cmbSuppliers.ItemIndex]).Str;
POTCDE := TString(cmbPOType.Items.Objects[cmbPOType.ItemIndex]).Str;


 strSQL :=
'  select       '+
'  wh.WH0CDE,wh.WH0NAM,dep.WH1CDE,dep.WH1NAM,sup.SUPCDE,sup.SUPNAM,typ.POTCDE,typ.POTNAM,knd.POKCOD,knd.POKNAM   '+
'  ,a.*                                           '+
'  from ICMTTPOH a                               '+
'  left join ICMTTWH0 wh on a.POHWH0=wh.WH0COD    '+
'  left join ICMTTWH1 dep on a.POHDEP=dep.WH1COD '+
'  left join ICMTTSUP sup on a.POHSUP = sup.SUPCOD '+
'  left join ICMTTPOT typ on a.POHTYP = typ.POTCOD '+
'  left join ICMTTPOK knd on a.POHPTY = knd.POKCOD '+

' where  (  ( wh.WH0CDE='''+WHOCDE+'''  and '''+WHOCDE+'''<>''00'' ) or  ( wh.WH0CDE<>'''+WHOCDE+''' and '''+WHOCDE+'''=''00'') )  '+
'   and   ( ( dep.WH1CDE='''+WH1CDE+''' and  '''+WH1CDE+'''<>''00'' ) or ( dep.WH1CDE<>'''+WH1CDE+''' and  '''+WH1CDE+'''=''00'' )  ) '+
'	and  ( ( sup.SUPCDE='''+SUPCDE+''' and '''+SUPCDE+'''<>''00'' ) or ( sup.SUPCDE<>'''+SUPCDE+''' and '''+SUPCDE+'''=''00'' ) ) '+
'	and  ( ( typ.POTCDE='''+POTCDE+''' and '''+POTCDE+'''<>''00'' ) or ( typ.POTCDE<>'''+POTCDE+''' and '''+POTCDE+'''=''00'' ) ) ';


 //InputBox('','',strsql);

 cdsPOList.Data := GetDataSet(strsql); //select * from ICMTTPOH

 TCurrencyField(cdsPOList.FieldByName('POHAMT')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsPOList.FieldByName('POHVAM')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsPOList.FieldByName('POHNET')).DisplayFormat:='#,##0.00';


 if FSelectPOHCDE<>'' then
 begin
      cdsPOList.Locate('POHCDE',FSelectPOHCDE,[]);
      grdPOLIST.SetFocus;
 end;



end;

procedure TfrmMasterPurchase.FormShow(Sender: TObject);
begin
  pgAllClients.ActivePage := TabPoList;
  initCmb;
  getPoList;
  enableButton(false,false,false,false,false,false,false,false,false,false,false,false,false);
  FVATRate:=7;
end;

procedure TfrmMasterPurchase.grdPOHListDblClick(Sender: TObject);
begin
  if not cdsPOList.fieldbyname('POHCOD').IsNull then
  begin
    FPOCode := cdsPOList.fieldbyname('POHCOD').AsInteger;
    FSelectPOHCDE := cdsPOList.fieldbyname('POHCDE').AsString;
    getPoData(cdsPOList.fieldbyname('POHCOD').AsInteger);
    pgAllClients.ActivePage:= TabPoData;
  end;
end;

procedure TfrmMasterPurchase.btnEditItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  OLDAmount : Currency;
  Seq : integer;
begin
  if not btnEditItem.Enabled then Exit;

  if ( ( not cdsPODetail.Active ) or (not cdsPOHeader.Active)) then Exit;


  if cdsPODetail.RecordCount<=0 then Exit;
  if cdsPODetail.FieldByName('PODCOD').IsNull then Exit;

  try

    POAmount:=POAmount_;

    frmAddItem        := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := false;
    frmAddItem.PoCode := cdsPODetail.fieldbyname('PODCOD').AsInteger;
    frmAddItem.ProdCode       := cdsPODetail.fieldbyname('PODPRD').AsInteger;
    frmAddItem.WarehouseCode  := cdsPODetail.fieldbyname('PODWH0').AsInteger;
    frmAddItem.UnitCode       := cdsPODetail.fieldbyname('PODUNI').AsInteger;
    frmAddItem.PackingCode    := cdsPODetail.fieldbyname('PODPAC').AsInteger;
    frmAddItem.Qty            := cdsPODetail.fieldbyname('PODQTY').AsInteger;
    frmAddItem.UnitPrice      := cdsPODetail.fieldbyname('PODCOS').AsCurrency;
    OLDAmount := cdsPODetail.fieldbyname('PODAMT').AsCurrency;
    frmAddItem.ShowModal;

    if frmAddItem.IsOK then
    begin

      if cdsPODetail.Locate('PODPRD;PODUNI;PODPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        cdsPODetail.Edit
      else
      begin
        cdsPODetail.Append ;
        Seq := cdsPODetail.RecordCount+1;
        cdsPODetail.FieldByName('PODSEQ').AsInteger := Seq;
      end;



      cdsPODetail.FieldByName('PODCOD').AsInteger := FPOCode;
      cdsPODetail.FieldByName('PODPRD').AsInteger := frmAddItem.ProdCode;
      cdsPODetail.FieldByName('PODWH0').AsInteger := frmAddItem.WarehouseCode;
      cdsPODetail.FieldByName('PODUNI').AsInteger := frmAddItem.UnitCode;
      cdsPODetail.FieldByName('PODPAC').AsInteger := frmAddItem.PackingCode;

      POAmount := POAmount - OLDAmount; // POAMOUNT
      cdsPODetail.FieldByName('PODQTY').AsInteger := frmAddItem.Qty;
      cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
      cdsPODetail.FieldByName('PODAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

      POAmount := POAmount + cdsPODetail.FieldByName('PODAMT').AsCurrency; // POAMOUNT
      
      cdsPODetail.FieldByName('PODPCN').AsString := frmAddItem.PackingName;
      cdsPODetail.FieldByName('PODUNA').AsString := frmAddItem.Unitname;
      cdsPODetail.FieldByName('PODPNA').AsString := frmAddItem.ProdName;


      cdsPODetail.Post;

    end;

    POAmount_:=POAmount;
    calc;
  finally
    frmAddItem.free;
  end;
end;

procedure TfrmMasterPurchase.cxGridDBTableView2DblClick(Sender: TObject);
begin
  btnEditItemClick(sender);
end;

procedure TfrmMasterPurchase.cdsPODetailCalcFields(DataSet: TDataSet);
var cdsProds,cdsUnits ,cdsPacking: TClientDataSet;
begin
 if not initing then
    begin
     //dataset.FieldByName( 'ProdNameTha' ).AsString := 'tha' + DataSet.fieldbyname('PODPRD').AsString;
     //dataset.FieldByName( 'ProdNameEng' ).AsString := 'eng'+ DataSet.fieldbyname('PODPRD').AsString;
     //dataset.FieldByName( 'ProdUniName' ).AsString := 'Uni'+ DataSet.fieldbyname('PODPRD').AsString;
     //dataset.FieldByName( 'ProdPacName' ).AsString := 'Pac'+ DataSet.fieldbyname('PODPRD').AsString;



      try
        cdsProds := TClientDataSet.Create(nil);
        cdsUnits := TClientDataSet.Create(nil);
        cdsPacking := TClientDataSet.Create(nil);

        cdsProds.data := GetDataSet('select * from ICMTTPRD where PRDCOD='+cdsPODetail.fieldbyname('PODPRD').AsString);
        dataset.FieldByName( 'ProdNameTha' ).AsString := cdsProds.fieldbyname('PRDNAT').AsString;
        dataset.FieldByName( 'ProdNameEng' ).AsString := cdsProds.fieldbyname('PRDNAE').AsString;



        cdsUnits.data := GetDataSet('select * from ICMTTUNI where UNICOD='+cdsPODetail.fieldbyname('PODUNI').AsString);
        dataset.FieldByName( 'ProdUniName' ).AsString := cdsUnits.fieldbyname('UNINAM').AsString;


        cdsPacking.data := GetDataSet('select * from ICMTTPAC where PACCOD='+cdsPODetail.fieldbyname('PODPAC').AsString);
        dataset.FieldByName( 'ProdPacName' ).AsString := cdsPacking.fieldbyname('PACNAM').AsString;
        //cdsPODetailProdPackingRate.AsInteger :=  cdsPacking.fieldbyname('PACRAT').AsInteger;


      finally
        cdsProds.free;
        cdsUnits.free;
        cdsPacking.Free;
      end;


    end;
end;
{
var cdsProds,cdsUnits ,cdsPacking: TClientDataSet;
begin
 //DataSet.fieldbyname('PODPRD').AsString

  try
    cdsProds := TClientDataSet.Create(nil);
    cdsUnits := TClientDataSet.Create(nil);
    cdsPacking := TClientDataSet.Create(nil);

    cdsProds.data := GetDataSet('select * from ICMTTPRD where PRDCOD='+DataSet.fieldbyname('PODPRD').AsString);
    cdsPODetailProdNameTha.AsString := cdsProds.fieldbyname('PRDNAT').AsString;
    cdsPODetailProdNameEng.AsString := cdsProds.fieldbyname('PRDNAE').AsString;



    cdsUnits.data := GetDataSet('select * from ICMTTUNI where UNICOD='+DataSet.fieldbyname('PODUNI').AsString);
    cdsPODetailProdUnitName.AsString := cdsUnits.fieldbyname('UNINAM').AsString;


    cdsPacking.data := GetDataSet('select * from ICMTTPAC where PACCOD='+DataSet.fieldbyname('PODPAC').AsString);
    cdsPODetailProdPackingName.AsString := cdsPacking.fieldbyname('PACNAM').AsString;
    cdsPODetailProdPackingRate.AsInteger :=  cdsPacking.fieldbyname('PACRAT').AsInteger;

  finally
    cdsProds.free;
    cdsUnits.free;
    cdsPacking.Free;
  end;

end;
}

procedure TfrmMasterPurchase.cdsPODetailAfterOpen(DataSet: TDataSet);
var
 i:integer;
 dmp:tfield;
begin
{if not initing then
 try
  initing:=true;
  dataset.active:=false;
  dataset.FieldDefs.Update;
  for i:=0 to dataset.FieldDefs.Count-1 do
  begin
   dmp:=DataSet.FieldDefs.Items[i].FieldClass.Create(self);
   dmp.FieldName:=DataSet.FieldDefs.Items[i].DisplayName;
   dmp.DataSet:=dataset;
   if (dmp.fieldname='ProdNameTha') or (dmp.FieldName='ProdNameEng') or (dmp.FieldName='ProdUniName') or (dmp.FieldName='ProdPacName')    then
   begin
     dmp.Calculated:=true;
     dmp.DisplayWidth:=255;
     dmp.size:=255;
   end;
  end;
  dataset.active:=true;
 finally
  initing:=false;
 end;
 }
end;

procedure TfrmMasterPurchase.cdsPODetailAfterClose(DataSet: TDataSet);
var
 i:integer;
 dmp:TField;
begin
{
if not initing then
begin
 for i:=DataSet.FieldCount-1 downto 0 do
 begin
  dmp:=pointer(DataSet.Fields.Fields[i]);
  DataSet.Fields.Fields[i].DataSet:=nil;
  freeandnil(dmp);
 end;
 DataSet.FieldDefs.Clear;
end;
}
end;

procedure TfrmMasterPurchase.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var cdsProds,cdsUnits ,cdsPacking: TClientDataSet;
begin
  (*
  //ACanvas.DrawTexT( VarToStr(AViewInfo.Value)  + ' !!! * !!!', AViewInfo.TextAreaBounds, cxAlignRight);
  //ADone := True;

  if TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName='ProdNameTha' then
  //if AViewInfo.Item.Index = cxGridDBColumn13.Index then
  begin


  try
    ADone := True;
    cdsProds := TClientDataSet.Create(nil);


    cdsProds.data := GetDataSet('select * from ICMTTPRD where PRDCOD='+VarToStr(AViewInfo.GridRecord.Values[1]));
    //cdsPODetailProdNameTha.AsString := cdsProds.fieldbyname('PRDNAT').AsString;
    //cdsPODetailProdNameEng.AsString := cdsProds.fieldbyname('PRDNAE').AsString;

//    ACanvas.DrawTexT( VarToStr(AViewInfo.Value)  + ' !!! * !!!', AViewInfo.TextAreaBounds, cxAlignRight);
   // ACanvas.DrawTexT( VarToStr(AViewInfo.GridRecord.Values[1])  + ' !!! * !!!', AViewInfo.TextAreaBounds, cxAlignRight);
    //ADone := True;


    //if AViewInfo.Selected then
    //begin
      //ACanvas.Brush.Color:= clBackground;
      //ACanvas.Font.Color := $00C6D9FF;
      //ACanvas.Font.Style:=[fsBold];
      ACanvas.DrawTexT(cdsProds.fieldbyname('PRDNAT').AsString,AViewInfo.TextAreaBounds, cxAlignLeft);

      //ACanvas.TextOut(ARect.Left+2,ARect.Top+2,TableC.FieldByName('START_DATE').AsString+' *');
    //end else begin
     // ACanvas.Brush.Color:=$00F7F0EE;
     // ACanvas.Font.Color := clBlack;
     // ACanvas.DrawTexT(cdsPODetail.fieldbyname('PODPRD').AsString,AViewInfo.TextAreaBounds, cxAlignRight);
    //end;

  finally
    cdsProds.free;
  end;

  end;

  *)


end;



procedure TfrmMasterPurchase.btnDeleteItemClick(Sender: TObject);
begin
    if cdsPODetail.RecordCount>0 then
      if not cdsPODetail.FieldByName('PODCOD').IsNull then
        if Application.MessageBox(pchar('ยืนยันลบรายการสินค้า ?'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
        begin
          POAmount:=POAmount_;
          POAmount := POAmount - cdsPODetail.FieldByName('PODAMT').AsCurrency; // POAMOUNT
          cdsPODetail.Delete;
          POAmount_ := POAmount;
          calc;
        end;

end;

procedure TfrmMasterPurchase.btnApproveClick(Sender: TObject);
begin
  if not cdsPOHeader.Active then Exit;

  if ((cdsPOHeader.State in [dsedit,dsinsert]) or ( cdsPODetail.State in [dsedit,dsinsert] )) then
  begin
    Application.MessageBox(pchar('กรุณาทำการบันทึกก่อน !!!'),pchar('Confirm'),MB_OK or MB_ICONWARNING);
    Exit;
  end;



  if Application.MessageBox(pchar('ยืนยันอนุมัติใบสั่งซื้อ !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    if not (cdsPOHeader.State in [dsedit,dsinsert]) then cdsPOHeader.Edit;
    cdsPOHeader.FieldByName('POHFLG').AsString:='A';
    cdsPOHeader.FieldByName('POHREV').AsInteger := FReviseNum+1;
    if (FReviseNum+1)>0 then
      cdsPOHeader.FieldByName('POHCDE').AsString := cdsPOHeader.FieldByName('POHCDE').AsString;

    cdsPOHeader.Post;


    if cdsPOHeader.ChangeCount>0 then
    begin
      UpdateDataset(cdsPOHeader,'select * from ICMTTPOH where POHCOD='+IntToStr(FPOCode));
      btnApprove.Enabled := false;

      Application.MessageBox(pchar('อนุมัติเรียบร้อย'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);

      getPoData(FPOCode);
      

    end;
  end;
end;

procedure TfrmMasterPurchase.FormDblClick(Sender: TObject);
begin
  FReviseNum := FReviseNum+1;
end;

procedure TfrmMasterPurchase.btnReviseClick(Sender: TObject);
begin
//  btnApprove.Enabled:=true;
  btnSave.Enabled:=true;
  btnCancel.Enabled := true;

  btnAddItem.Enabled := true;
  btnEditItem.Enabled := true;
  btnDeleteItem.Enabled := true;

  FPOHFlag := 'R'; // Revise
end;

procedure TfrmMasterPurchase.edDepCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edDepCode.Text)<>'' then
    begin
      if getExistDepartment(trim(edDepCode.Text)) then
        DepCode := getMTTCOD('WH1',trim(edDepCode.Text))
      else
        Application.MessageBox(pchar('ไม่พบหน่วยงานต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      btnSearchDepClick(sender);
  end;
end;

procedure TfrmMasterPurchase.btnSearchDepClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('WH1COD','รหัส'));
  _SearchType.Add(TStringValue.Create('WH1CDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('WH1NAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('WH1COD','รหัส'));
  _Cols.Add(TStringValue.Create('WH1CDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('WH1NAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อคลังสินค้า';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTWH1 where WH1ACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'WH1COD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      DepCode := StrToInt(_Parameter.SelectCode);
  end;



end;

procedure TfrmMasterPurchase.cxGridDBColumn13GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var cdsProds,cdsUnits ,cdsPacking: TClientDataSet;
begin
(*
  if Trim(VarToStr(ARecord.Values[1])) <>'' then
  begin


   try

    cdsProds := TClientDataSet.Create(nil);


    cdsProds.data := GetDataSet('select * from ICMTTPRD where PRDCOD='+VarToStr(ARecord.Values[1]));
    //cdsPODetailProdNameTha.AsString := cdsProds.fieldbyname('PRDNAT').AsString;
    //cdsPODetailProdNameEng.AsString := cdsProds.fieldbyname('PRDNAE').AsString;

//    ACanvas.DrawTexT( VarToStr(AViewInfo.Value)  + ' !!! * !!!', AViewInfo.TextAreaBounds, cxAlignRight);
   // ACanvas.DrawTexT( VarToStr(AViewInfo.GridRecord.Values[1])  + ' !!! * !!!', AViewInfo.TextAreaBounds, cxAlignRight);
    //ADone := True;


    //if AViewInfo.Selected then
    //begin
      //ACanvas.Brush.Color:= clBackground;
      //ACanvas.Font.Color := $00C6D9FF;
      //ACanvas.Font.Style:=[fsBold];
      AText:= cdsProds.fieldbyname('PRDNAT').AsString;

     



      //ACanvas.TextOut(ARect.Left+2,ARect.Top+2,TableC.FieldByName('START_DATE').AsString+' *');
    //end else begin
     // ACanvas.Brush.Color:=$00F7F0EE;
     // ACanvas.Font.Color := clBlack;
     // ACanvas.DrawTexT(cdsPODetail.fieldbyname('PODPRD').AsString,AViewInfo.TextAreaBounds, cxAlignRight);
    //end;

  finally
    cdsProds.free;
  end;
  end;

*)

end;

procedure TfrmMasterPurchase.cxGridDBColumn14GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var cdsProds1: TClientDataSet;
begin
  //AText :='eng';
{
   try
    cdsProds1 := TClientDataSet.Create(nil);
    cdsProds1.data := GetDataSet('select * from ICMTTPRD where PRDCOD='+VarToStr(ARecord.Values[1]));
    AText:= cdsProds1.fieldbyname('PRDNAE').AsString;
  finally
    cdsProds1.free;
  end;
 } 
end;

procedure TfrmMasterPurchase.cxGridDBColumn16GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var cdsTemp: TClientDataSet;
begin
(*   if Trim(VarToStr(ARecord.Values[5]))<>'' then
   begin
   try

    cdsTemp := TClientDataSet.Create(nil);


    cdsTemp.data := GetDataSet('select * from ICMTTUNI where UNICOD='+VarToStr(ARecord.Values[5]));

      AText:= cdsTemp.fieldbyname('UNINAM').AsString;

  finally
    cdsTemp.free;
  end;
  end;
  *)

end;

procedure TfrmMasterPurchase.cxGridDBColumn18GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var cdsTemp: TClientDataSet;
begin
(*  if Trim(VarToStr(ARecord.Values[7]))<>'' then
  begin
   try

    cdsTemp := TClientDataSet.Create(nil);


    cdsTemp.data := GetDataSet('select * from ICMTTPAC where PACCOD='+VarToStr(ARecord.Values[7]));

      AText:= cdsTemp.fieldbyname('PACNAM').AsString;

  finally
    cdsTemp.free;
  end;
  end;
 *)

end;

procedure TfrmMasterPurchase.cxGridDBColumn10GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure TfrmMasterPurchase.edWhCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edWhCode.Text)<>'' then
    begin
      if IsInteger(trim(edWhCode.Text))
      then
       if getExistWareHouse(StrToInt(trim(edWhCode.Text))) then
          WarehouseCode := getMTTCOD('WH0',trim(edWhCode.Text))
        else

      {
        begin
          if getExistWareHouse(StrToInt(trim(edWhCode.Text))) then
            edWhName.Text := getWareHouseName(StrToInt(trim(edWhCode.Text)))
          else
            Application.MessageBox(pchar('ไม่พบคลังสินค้าที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
        end else
          if getExistWareHouse(trim(edWhCode.Text)) then
            edWhName.Text := getWareHouseName(trim(edWhCode.Text))
          else

          }
            Application.MessageBox(pchar('ไม่พบคลังสินค้าที่ต้องการค้นหา !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchWhClick(sender);   
  end;
end;

procedure TfrmMasterPurchase.btnSearchWhClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('WH0COD','รหัส'));
  _SearchType.Add(TStringValue.Create('WH0CDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('WH0NAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('WH0COD','รหัส'));
  _Cols.Add(TStringValue.Create('WH0CDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('WH0NAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อคลังสินค้า';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTWH0 where WH0ACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'WH0COD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      WarehouseCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterPurchase.btnSearchKindClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('POKCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('POKCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('POKNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('POKCOD','รหัส'));
  _Cols.Add(TStringValue.Create('POKCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('POKNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อควิธีการจัดซื้อ';
  executilsdxInitialize;


  _SQL := ' select * from ICMTTPOK where POKACT=''A'' ';




  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'POKCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      POKindCode := StrToInt(_Parameter.SelectCode);
  end;
end;


procedure TfrmMasterPurchase.edPOKndCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edPOKndCode.Text)<>'' then
    begin
      if getExistPOKind(trim(edPOKndCode.Text)) then
          POKindCode := StrToInt(trim(edPOKndCode.Text))
      else
        Application.MessageBox(pchar('ไม่พบวิธีการจัดซื้อ !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchKindClick(sender);
  end;
end;

procedure TfrmMasterPurchase.edPOTypeCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edPOTypeCode.Text)<>'' then
    begin
      if getExistPOType(trim(edPOTypeCode.Text)) then
        POTypeCode := strtoint(trim(edPOTypeCode.Text))
      else
        Application.MessageBox(pchar('ไม่พบประเภทจัดซื้อ !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchPOTypeClick(sender);
  end;
end;

procedure TfrmMasterPurchase.btnSearchPOTypeClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('POTCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('POTCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('POTNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('POTCOD','รหัส'));
  _Cols.Add(TStringValue.Create('POTCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('POTNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อคประเภทการจัดซื้อ';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTPOT where POTACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'POTCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      POTypeCode := StrToInt(_Parameter.SelectCode);
  end;



end;

procedure TfrmMasterPurchase.btnSearchSuppClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('SUPCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('SUPCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('SUPNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('SUPCOD','รหัส'));
  _Cols.Add(TStringValue.Create('SUPCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('SUPNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อบริษัทตัวแทนจำหน่าย';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTSUP where SUPACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'SUPCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      SuppCode := StrToInt(_Parameter.SelectCode);

      if not ( cdsPOHeader.State in [dsinsert,dsedit]) then cdsPOHeader.Edit;

      cdsPOHeader.FieldByName('POHSPC').AsString := getMTTFValue('SUP','SUPCON',inttostr(SuppCode));


  end;



end;

procedure TfrmMasterPurchase.edSuppCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edSuppCode.Text)<>'' then
    begin
      if getExistMTTCode('SUP',trim(edSuppCode.Text)) then
      begin
         SuppCode := strtoint(trim(edSuppCode.Text));
          if not ( cdsPOHeader.State in [dsinsert,dsedit]) then cdsPOHeader.Edit;

          cdsPOHeader.FieldByName('POHSPC').AsString := getMTTFValue('SUP','SUPCON',inttostr(SuppCode));
      end
      else
        Application.MessageBox(pchar('ไม่พบบริษัทตัวแทนจำหน่าย !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchSuppClick(sender);
  end;
end;

procedure TfrmMasterPurchase.btnSearchVATClick(Sender: TObject);
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

  Parameter.SearchTitle:='รายชื่อ VAT';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTVAT where VATACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'VATCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      VATCode := StrToInt(_Parameter.SelectCode);
      calc;
  end;



end;

procedure TfrmMasterPurchase.edVATCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edVATCode.Text)<>'' then
    begin
      if getExistMTTCode('VAT',trim(edVATCode.Text)) then
      begin
        VATCode := StrToInt(trim(edVATCode.Text));
        calc;
      end
      else
        Application.MessageBox(pchar('ไม่พบบรายการ !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchVATClick(sender);
  end;
end;

procedure TfrmMasterPurchase.SetPOAmount(const Value: currency);
begin
  FPOAmount := Value;

  //calc;
  {if FVATTypeFlag='I' then
  begin
    POVat:= (FPOAmount*FVATRate)/(100+FVATRate);
    POAmount := FPONetAmount-POVat;
  end else  if FVATTypeFlag='E' then
  begin
    POVat:= (FPOAmount*FVATRate)/(100);
    PONetAmount := FPOAmount+POVat;
  end else if FVATTypeFlag='N' then
  begin
    POVat:= 0;
    PONetAmount := FPOAmount;
  end;}
  //lbAmount.Caption :=' ยอดรวม  '+FormatCurr('#,##0.00',FPOAmount)+' บาท ';
  lbAmount.Caption :=' '+FormatCurr('#,##0.00',FPOAmount)+' ';
end;

procedure TfrmMasterPurchase.SetPONetAmount(const Value: currency);
begin
  FPONetAmount := Value;
  lbNetAmount.Caption:=' '+FormatCurr('#,##0.00',FPONetAmount)+' ';
end;

procedure TfrmMasterPurchase.SetPOVat(const Value: currency);
begin
  FPOVat := Value;
  lbVat.Caption:=' '+FormatCurr('#,##0.00',FPOVat)+' ';
end;

procedure TfrmMasterPurchase.SetDepCode(const Value: integer);
begin
  FDepCode := Value;
  edDepCode.Text := getMTTCDE('WH1',IntToStr(FDepCode));
  edDepName.Text := getDepartmentName(IntToStr(FDepCode));
end;

procedure TfrmMasterPurchase.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
  edWhCode.Text := getMTTCDE('WH0',IntToStr(FWarehouseCode));
  edWhName.Text := getWareHouseName(FWarehouseCode);
end;

procedure TfrmMasterPurchase.SetSuppCode(const Value: integer);
begin
  FSuppCode := Value;
  edSuppCode.Text := getMTTCDE('SUP',inttostr(FSuppCode));
  edSuppName.Text := getMTTName('SUP',inttostr(FSuppCode));
end;

procedure TfrmMasterPurchase.SetPOKindCode(const Value: integer);
begin
  FPOKindCode := Value;
  edPOKndCode.Text := getMTTCDE('POK',IntToStr(FPOKindCode));
  edPOKndName.Text := getPOKindName(IntToStr(FPOKindCode));
end;

procedure TfrmMasterPurchase.SetPOTypeCode(const Value: integer);
begin
  FPOTypeCode := Value;
  edPOTypeCode.Text := getMTTCDE('POT',IntToStr(FPOTypeCode));
  edPOTypeName.Text := getPOTypeName(IntToStr(FPOTypeCode));
end;

procedure TfrmMasterPurchase.SetVATCode(const Value: integer);
begin
  FVATCode := Value;
  edVATCode.Text := getMTTCDE('VAT',IntToStr(FVATCode));
  FVATRate :=  getValueCurrency('ICMTTVAT','VATRAT','VAT',IntToStr(FVATCode));
  edVATName.Text := getMTTName('VAT',IntToStr(FVATCode));

  //calc;
  {if FVATTypeFlag='I' then
  begin
    POVat:= (FPOAmount*FVATRate)/(100+FVATRate);
    POAmount := FPONetAmount-POVat;
  end
  else if FVATTypeFlag='E' then
  begin
    POVat:= (FPOAmount*FVATRate)/(100);
    PONetAmount := FPOAmount+POVat;
  end else if FVATTypeFlag='N' then
  begin
    POVat:= 0;
    PONetAmount := FPOAmount;
  end;}

end;

procedure TfrmMasterPurchase.grdPOListColF13CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if not AViewInfo.Selected then
    begin
      if  AViewInfo.GridRecord.Values[grdPOListColF13.Index] = 'F' then
      begin
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := $0000005E ;
      end;
    end else
    begin
      ACanvas.Font.Style := [fsBold];
      if  AViewInfo.GridRecord.Values[grdPOListColF13.Index] = 'F' then
        ACanvas.Font.Color := clYellow
      else
      if  AViewInfo.GridRecord.Values[grdPOListColF13.Index] = 'N' then
        ACanvas.Font.Color := $0093FF93 ; // green
    end;
end;

procedure TfrmMasterPurchase.grdPOListColF13GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  if  ARecord.Values[grdPOListColF13.Index] = 'N' then
      AText:= 'Normal'
  else if  ARecord.Values[grdPOListColF13.Index] = 'F' then
    AText :='Fixed';

end;

procedure TfrmMasterPurchase.btnNewPRClick(Sender: TObject);
begin
//
end;

procedure TfrmMasterPurchase.btnRefreshClick(Sender: TObject);
begin
  getPoList;
end;

procedure TfrmMasterPurchase.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterPurchase.grdPOHListCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterPurchase.btnPrintPOClick(Sender: TObject);
var dllParams : TDLLParameter;
  DefaltValue:TList;
begin

    DefaltValue:=TList.Create;
    DefaltValue.Add(TStringValue.Create('POHCOD',IntToStr(FPOCode)));
    //DefaltValue.Add(TStringValue.Create('RCHCOD',IntToStr(FPOCode)));
    dllParams.ReportCode:='PO00-001';
    ShowReportGenerator(Application,nil,swModal,dllParams,DefaltValue,true,GetReportGroup);

end;

procedure TfrmMasterPurchase.grdPOHListFLGCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RectColor: TRect;
  RectText : TRect;
begin
  ACanvas.Canvas.FillRect(AViewInfo.Bounds);

  RectColor := AViewInfo.Bounds;
  InflateRect(RectColor, -3, -3);

  RectText := AViewInfo.Bounds;
  RectText.Left := RectText.Left + 15;
  //ACanvas.DrawText(AViewInfo.Value, RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
  //ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);

  RectColor.Right := RectColor.Left + 10;
  ACanvas.Pen.Color := clWindowText;
  if  AViewInfo.GridRecord.Values[grdPOHListFLG.Index] = 'A' then
  begin
    ACanvas.DrawText('Approve', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clBlue;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLG.Index] = 'N' then
  begin
    ACanvas.DrawText('New', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2FFFF;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLG.Index] = 'P' then
  begin
    ACanvas.DrawText('Pending', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $009DCEFF;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLG.Index] = 'E' then
  begin
    ACanvas.DrawText('Holded', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clGray;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLG.Index] = 'C' then
  begin
    ACanvas.DrawText('Cancel', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clGray;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLG.Index] = 'R' then
  begin
    ACanvas.DrawText('Revise', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2D2FF;
  end

  else
    ACanvas.Brush.Color := clGray ;

  ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;

procedure TfrmMasterPurchase.grdPOHListFLRCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RectColor: TRect;
  RectText : TRect;
begin
  ACanvas.Canvas.FillRect(AViewInfo.Bounds);

  RectColor := AViewInfo.Bounds;
  InflateRect(RectColor, -3, -3);

  RectText := AViewInfo.Bounds;
  RectText.Left := RectText.Left + 15;
  //ACanvas.DrawText(AViewInfo.Value, RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
  //ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);

  RectColor.Right := RectColor.Left + 10;
  ACanvas.Pen.Color := clWindowText;
  if  AViewInfo.GridRecord.Values[grdPOHListFLR.Index] = 'R' then
  begin
    ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clBlue;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLR.Index] = 'N' then
  begin
    ACanvas.DrawText('New', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2FFFF;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLR.Index] = 'P' then
  begin
    ACanvas.DrawText('Pending', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $0066B3FF;
  end
  else if  AViewInfo.GridRecord.Values[grdPOHListFLR.Index] = 'E' then
  begin
    ACanvas.DrawText('Hold', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clGray;
  end
  else
    ACanvas.Brush.Color := clGray ;

  ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;

procedure TfrmMasterPurchase.btnCancelPOClick(Sender: TObject);
begin
  if not cdsPOHeader.Active then Exit;

  if ((cdsPOHeader.State in [dsedit,dsinsert]) or ( cdsPODetail.State in [dsedit,dsinsert] )) then
  begin
    Application.MessageBox(pchar('กรุณาทำการบันทึกก่อน !!!'),pchar('Confirm'),MB_OK or MB_ICONWARNING);
    Exit;
  end;



  if Application.MessageBox(pchar('ยืนยันยกเลิกใบสั่งซื้อ !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    if not (cdsPOHeader.State in [dsedit,dsinsert]) then cdsPOHeader.Edit;
    cdsPOHeader.FieldByName('POHFLG').AsString:='C';

    if (FReviseNum+1)>0 then
      cdsPOHeader.FieldByName('POHCDE').AsString := cdsPOHeader.FieldByName('POHCDE').AsString;

    cdsPOHeader.Post;


    if cdsPOHeader.ChangeCount>0 then
    begin
      UpdateDataset(cdsPOHeader,'select * from ICMTTPOH where POHCOD='+IntToStr(FPOCode));
      btnApprove.Enabled := false;

      Application.MessageBox(pchar('ยกเลิกเรียบร้อย'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);

      getPoData(FPOCode);
     
    end;
  end;
end;

procedure TfrmMasterPurchase.initCmb;
var cdsTemp : TClientDataSet;
begin

  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet('select ''00'' as WH0CDE,''-- All --'' as WH0NAM union select WH0CDE,WH0NAM from ICMTTWH0 where WH0ACT=''A''');
  loadCmbItems(cmbWarehouse.Items,cdsTemp,'WH0CDE','WH0NAM','');
  cdsTemp.data := GetDataSet('select ''00'' as SUPCDE,''-- All --'' as SUPNAM union select SUPCDE,SUPNAM from ICMTTSUP where SUPACT=''A''');
  loadCmbItems(cmbSuppliers.Items,cdsTemp,'SUPCDE','SUPNAM','');
  cdsTemp.data := GetDataSet('select ''00'' as WH1CDE,''-- All --'' as WH1NAM union select WH1CDE,WH1NAM from ICMTTWH1 where WH1ACT=''A''');
  loadCmbItems(cmbDepartments.Items,cdsTemp,'WH1CDE','WH1NAM','');

  cdsTemp.data := GetDataSet('select ''00'' as POTCDE,''-- All --'' as POTNAM union select POTCDE,POTNAM from ICMTTPOT where POTACT=''A''');
  loadCmbItems(cmbPOType.Items,cdsTemp,'POTCDE','POTNAM','');

  cmbWarehouse.ItemIndex:=0;
  cmbSuppliers.ItemIndex:=0;
  cmbDepartments.ItemIndex:=0;
  cmbPOType.ItemIndex:=0;



  //cmbProdType.ItemIndex:= loadCmbItems(cmbProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM',cdsProducts.fieldbyname('PRDTYP').AsString);
end;

procedure TfrmMasterPurchase.btnNewKEYINPOClick(Sender: TObject);
begin
    pgAllClients.ActivePage:= TabPoData;
    getPoData(0);
    enableButton(true,true,true,false,false,false,false,false,false,false,false,true,true);

    edDepCode.SetFocus;
end;



procedure TfrmMasterPurchase.enableButton(_btnAddItem, _btnEditItem,
  _btnDelItem, _btnImFPR, _btnImFIssueReq, _btnPrintPO, _btnPrintDocument,
  _btnApprove, _btnCancelPO, _btnHold, _btnRevise, _btnSave,
  _btnCancel: boolean);
begin
  btnAddItem.Enabled := _btnAddItem;
  btnEditItem.Enabled := _btnEditItem;
  btnDeleteItem.Enabled := _btnDelItem;
  btnImportFromPR.Enabled := _btnImFPR;
  btnImportFromIssueReq.Enabled := _btnImFIssueReq;
  btnPrintPO.Enabled := _btnPrintPO;
  btnDocument.Enabled := _btnPrintDocument;
  btnApprove.Enabled := _btnApprove;
  btnCancelPO.Enabled := _btnCancelPO;
  btnHold.Enabled := _btnHold;
  btnRevise.Enabled := _btnRevise;
  btnSave.Enabled := _btnSave;
  btnCancel.Enabled := _btnCancel;
end;

procedure TfrmMasterPurchase.btnCancelClick(Sender: TObject);
begin
    pgAllClients.ActivePage := TabPoList;
    TabPoData.Enabled:=false;
end;

procedure TfrmMasterPurchase.pgAllClientsChange(Sender: TObject);
begin
   if not TabPoData.Enabled then pgAllClients.ActivePage:=TabPoList;
end;

procedure TfrmMasterPurchase.btnSearchVATTypeClick(Sender: TObject);
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

  Parameter.SearchTitle:='รายการ';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTVTY where VTYACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'VTYCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      VATTypeCode := StrToInt(_Parameter.SelectCode);
      calc;
  end;



end;

procedure TfrmMasterPurchase.SetVATTypeCode(const Value: integer);
begin
  FVATTypeCode := Value;

  edVATTypeCode.Text := getMTTCDE('VTY',IntToStr(FVATTypeCode));
  edVATTypeName.Text := getMTTName('VTY',IntToStr(FVATTypeCode));
  FVATTypeFlag := getMTTFValue('VTY','VTYFLG',inttostr(FVATTypeCode));



  //calc;
{
  if FVATTypeFlag='I' then
  begin
    POVat:= (FPOAmount*FVATRate)/(100+FVATRate);
    POAmount := FPONetAmount-POVat;
  end
  else if FVATTypeFlag='E' then
  begin
    POVat:= (FPOAmount*FVATRate)/(100);
    PONetAmount := FPOAmount+POVat;
  end else if FVATTypeFlag='N' then
  begin
    POVat:= 0;
    PONetAmount := FPOAmount;
  end;
  }

end;

procedure TfrmMasterPurchase.edVATTypeCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edVATTypeCode.Text)<>'' then
    begin
      if getExistMTTCode('VTY',trim(edVATTypeCode.Text)) then
      begin
        VATTypeCode := StrToInt(trim(edVATTypeCode.Text));
        calc;
      end
      else
        Application.MessageBox(pchar('ไม่พบบรายการ !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchVATTypeClick(sender);
  end;
end;

procedure TfrmMasterPurchase.Calc;
begin
  if FVATTypeFlag='I' then
  begin
    POVat:= (POAmount_*FVATRate)/(100+FVATRate);
    POAmount := POAmount_-POVat;
    PONetAmount:=POAmount_;
  end else  if FVATTypeFlag='E' then
  begin
    POVat:= (POAmount_*FVATRate)/(100);
    POAmount := POAmount_;
    PONetAmount := POAmount_+POVat;
  end else //if FVATTypeFlag='N' then
  begin
    POVat:= 0;
    POAmount := POAmount_;
    PONetAmount := POAmount_;
  end;

end;

end.



