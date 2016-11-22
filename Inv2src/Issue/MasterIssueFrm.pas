unit MasterIssueFrm;

interface

uses
  Windows, Messages,CommonLIB, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxLabel, cxCalendar, cxCurrencyEdit, StdCtrls, DBCtrls,
  RzDBEdit, ComCtrls, RzDTP, RzDBDTP, DBClient, Buttons, Mask, RzEdit,
  RzButton, RzCmboBx, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzTabs, ExtCtrls,
  RzLabel, RzPanel,
  Dialogs,SiAuto,SmartInspect;

type
  TfrmMasterIssue = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    tabAllIssueList: TTabSheet;
    Splitter1: TSplitter;
    pnMiddle: TRzPanel;
    pgWarehouseProduct: TRzPageControl;
    TabIssueList: TRzTabSheet;
    grdAllIssue: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabIssue: TRzTabSheet;
    Splitter2: TSplitter;
    grdIssueList: TcxGrid;
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
    grdIssueReqLIST: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    grdIRHListColFLI: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    pnTop: TRzPanel;
    RzLabel17: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    cmbWarehouse: TRzComboBox;
    cmbDepartments: TRzComboBox;
    cmbSuppliers: TRzComboBox;
    btnRefreshAll: TRzBitBtn;
    edSearch: TRzEdit;
    cmbPOType: TRzComboBox;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    btnNewPO: TRzBitBtn;
    btnDeletePO: TRzBitBtn;
    btnHoldPO: TRzBitBtn;
    btnNewIssueReq: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    TabIssueData: TTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel15: TRzLabel;
    btnSearchDep: TSpeedButton;
    btnSearchWh: TSpeedButton;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    btnAddItem: TRzBitBtn;
    btnEditItem: TRzBitBtn;
    btnReceiveFromPO: TRzBitBtn;
    btnImportFromIssueReq: TRzBitBtn;
    btnNew: TRzBitBtn;
    btnDeleteItem: TRzBitBtn;
    RzDBEdit10: TRzDBEdit;
    edDepCode: TRzEdit;
    edDepName: TRzEdit;
    edWhCode: TRzEdit;
    edWhName: TRzEdit;
    RzDBEdit1: TRzDBEdit;
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
    cxGridDBTableView2Column5: TcxGridDBColumn;
    cxGridDBColRCDUNI: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColRCDPAC: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel5: TRzPanel;
    lbAmount: TRzLabel;
    lbVat: TRzLabel;
    lbNetAmount: TRzLabel;
    lbStatus: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    btnRevise: TRzBitBtn;
    btnLock: TRzBitBtn;
    btnApprove: TRzBitBtn;
    cdsAllIssueList: TClientDataSet;
    dsAllIssueList: TDataSource;
    dsIssueReqList: TDataSource;
    cdsIssueReqList: TClientDataSet;
    dsIssueHeader: TDataSource;
    cdsIssueHeader: TClientDataSet;
    dsIssueDetail: TDataSource;
    cdsIssueDetail: TClientDataSet;
    dsIssueReqHeader: TDataSource;
    cdsIssueReqHeader: TClientDataSet;
    cdsIRIssues: TClientDataSet;
    dsIRIssues: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    RzLabel9: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel14: TRzLabel;
    btnSearchIssueReqType: TSpeedButton;
    btnSearchJob: TSpeedButton;
    RzLabel4: TRzLabel;
    RzLabel8: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    edIssueReqTypeCode: TRzEdit;
    edIssueReqTypeName: TRzEdit;
    edIssueReqJobCode: TRzEdit;
    edIssueReqJobName: TRzEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzLabel13: TRzLabel;
    RzLabel21: TRzLabel;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBEdit2: TRzDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNewIssueReqClick(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure btnImportFromIssueReqClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cdsIssueReqListAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btnRefreshAllClick(Sender: TObject);
    procedure cxGridDBColumn10GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cdsIssueDetailBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnApproveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    FIssueCode : integer;
    FIssueAmount: currency;
    FIssueTypeCode: integer;
    FDepCode: integer;
    FWarehouseCode: integer;
    FIssueProjectCode: integer;
    FDLLParameter: TDLLParameter;

    procedure getIssueReqList;
    procedure getAllIssue();
    procedure getIRIssue(IRCode:integer);
    procedure getIssueData(IUCode:integer);
    procedure getIssueReqData(IRHCode:integer);
    procedure SetDepCode(const Value: integer);
    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure SetIssueAmount(const Value: currency);
    procedure SetIssueProjectCode(const Value: integer);
    procedure SetIssueTypeCode(const Value: integer);
    procedure SetWarehouseCode(const Value: integer);


    procedure PostStkTransaction(STKTYP:string;STKMVC,STKPRD:integer;STKPCD:string;STKWH0,STKWH1,STKUNI,STKPAC,STKQTY,STKLOC:integer;STKLOT:string;STKEXP:tdatetime;STKFLG:string;STKCAL:integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);
    procedure PostStk(STKTYPE:string;STKMVC,STKPRD:integer;STKPCD:string;STKWH0,STKWH1,STKUNI,STKPAC,STKQTY,STKLOC:integer;STKLOT:string;STKEXP:tdatetime;STKFLG:string;STKCAL:integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);

  public
    { Public declarations }

    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property IssueAmount : currency  read FIssueAmount write SetIssueAmount;
    property DepCode : integer   read FDepCode write SetDepCode;
    property WarehouseCode : integer  read FWarehouseCode write SetWarehouseCode;
    property IssueProjectCode : integer   read FIssueProjectCode write SetIssueProjectCode;
    property IssueTypeCode  : integer   read FIssueTypeCode write SetIssueTypeCode;
  end;

var
  frmMasterIssue: TfrmMasterIssue;

implementation

uses  CommonUtils, STDLIB, AddProdItemFrm, STK_LIB, CdeLIB;

{$R *.dfm}

{ TfrmMasterIssue }

procedure TfrmMasterIssue.getIssueReqList;
var strsql:string;
begin
  strsql:=''+
' select    '+
'	irh.*,wh0.*,wh1.*     '+
' from ICMTTIRH irh,ICMTTWH0  wh0,ICMTTWH1 wh1    '+
' where wh0.WH0COD=irh.IRHWH0    '+
' and wh1.WH1COD=irh.IRHDEP    '+
' order by irh.IRHCOD    ';


  cdsIssueReqList.Data :=GetDataSet(strsql);
end;

procedure TfrmMasterIssue.FormShow(Sender: TObject);
begin
  getIssueReqList;
  getAllIssue;
end;

procedure TfrmMasterIssue.getIssueData(IUCode: integer);
begin
  cdsIssueHeader.Data := GetDataSet('select * from ICMTTIUH where IUHCOD='+IntToStr(IUCode));
  cdsIssueDetail.Data := GetDataSet('select * from ICMTTIUD where IUDCOD='+IntToStr(IUCode));


  TCurrencyField(cdsIssueDetail.FieldByName('IUDQTY')).DisplayFormat:='#,##0';
end;

procedure TfrmMasterIssue.btnNewIssueReqClick(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabIssueData;
//  getIssueData(0);
//  pgAllClients.ActivePage:=TabIssueData;
  getIssueReqData(cdsIssueReqList.fieldbyname('IRHCOD').AsInteger);
  getIssueData(0);
end;

procedure TfrmMasterIssue.btnAddItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  Seq , ans ,ItemQTY : integer;
  ItemPrice ,ItemAmount: currency;

begin
  try
    frmAddItem := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := true;
    frmAddItem.IssueCode := FIssueCode;
    frmAddItem.ProdCode := 0;
    frmAddItem.WarehouseCode := FWarehouseCode;
    frmAddItem.UnitCode := 0;
    frmAddItem.PackingCode:=0;
    frmAddItem.Qty := 1;
    frmAddItem.UnitPrice := 0;
    frmAddItem.ShowModal;

    Seq := cdsIssueDetail.RecordCount+1;

    if cdsIssueDetail.Active then
      if frmAddItem.IsOK then
      begin
        if cdsIssueDetail.Locate('IUDPRD;IUDUNI;IUDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        begin
          ans := Application.MessageBox(pchar('พบรายการสินค้าซ้ำ '+#10#13+'[Yes]-ต้องการแก้ไข '+#10#13+'[No]-เพิ่มจำนวน '+#10#13+'[Cancel]-ยกเลิก !!!'),pchar('Confirm'),MB_YESNOCANCEL or MB_ICONWARNING);


          ItemQTY:= cdsIssueDetail.FieldByName('IUDQTY').AsInteger;
          ItemPrice := cdsIssueDetail.FieldByName('IUDCOS').AsCurrency ;
          ItemAmount := cdsIssueDetail.FieldByName('IUDAMT').AsCurrency;

          if ans = mrYes then
          begin
            IssueAmount := IssueAmount - cdsIssueDetail.FieldByName('IUDAMT').AsCurrency; // POAMOUNT

            cdsIssueDetail.Edit;
            cdsIssueDetail.FieldByName('IUDQTY').AsInteger := frmAddItem.Qty;
            cdsIssueDetail.FieldByName('IUDCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsIssueDetail.FieldByName('IUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

            IssueAmount := IssueAmount + cdsIssueDetail.FieldByName('IUDAMT').AsCurrency; // POAMOUNT
          end else
          if ans = mrNo then
          begin
            IssueAmount := IssueAmount - ItemAmount; // POAMOUNT
            cdsIssueDetail.Edit;
            cdsIssueDetail.FieldByName('IUDQTY').AsInteger := ItemQTY + frmAddItem.Qty;
            //cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsIssueDetail.FieldByName('IUDAMT').AsCurrency := (ItemQTY + frmAddItem.Qty)*ItemPrice;

            IssueAmount := IssueAmount + ((ItemQTY + frmAddItem.Qty)*ItemPrice); // POAMOUNT
          end else
          if ans=mrCancel then Exit;

        end else
        begin
          cdsIssueDetail.Append ;
          Seq := cdsIssueDetail.RecordCount+1;
          cdsIssueDetail.FieldByName('IUDSEQ').AsInteger := Seq;
          IssueAmount := IssueAmount + (frmAddItem.Qty*frmAddItem.UnitPrice);  // POAMOUNT

          cdsIssueDetail.FieldByName('IUDQTY').AsInteger := frmAddItem.Qty;
          cdsIssueDetail.FieldByName('IUDCOS').AsCurrency := frmAddItem.UnitPrice;
          cdsIssueDetail.FieldByName('IUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

        end;


          //cdsPODetail.Append;
          cdsIssueDetail.FieldByName('IUDCOD').AsInteger := FIssueCode;
          cdsIssueDetail.FieldByName('IUDCDE').AsString  := frmAddItem.ProdCDE;
          cdsIssueDetail.FieldByName('IUDPRD').AsInteger := frmAddItem.ProdCode;

          cdsIssueDetail.FieldByName('IUDWH0').AsInteger := frmAddItem.WarehouseCode;
          cdsIssueDetail.FieldByName('IUDUNI').AsInteger := frmAddItem.UnitCode;

          cdsIssueDetail.FieldByName('IUDPAC').AsInteger := frmAddItem.PackingCode;



          cdsIssueDetail.FieldByName('IUDSEQ').AsInteger := Seq;

          cdsIssueDetail.FieldByName('IUDPCN').AsString := frmAddItem.PackingName;
          cdsIssueDetail.FieldByName('IUDUNA').AsString := frmAddItem.Unitname;
          cdsIssueDetail.FieldByName('IUDPNA').AsString := frmAddItem.ProdName;

          cdsIssueDetail.Post;

      end;
  finally
    frmAddItem.free;
  end;
end;

procedure TfrmMasterIssue.SetDepCode(const Value: integer);
begin
  FDepCode := Value;
  edDepCode.Text := getMTTCDE('WH1',IntToStr(FDepCode));
  edDepName.Text := getDepartmentName(IntToStr(FDepCode));  
end;

procedure TfrmMasterIssue.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterIssue.SetIssueAmount(const Value: currency);
begin
  FIssueAmount := Value;
end;

procedure TfrmMasterIssue.SetIssueProjectCode(const Value: integer);
begin
  FIssueProjectCode := Value;
  edIssueReqJobCode.Text := getMTTCDE('JOB',IntToStr(FIssueProjectCode));
  edIssueReqJobName.Text := getMTTName('JOB',IntToStr(FIssueProjectCode));
end;

procedure TfrmMasterIssue.SetIssueTypeCode(const Value: integer);
begin
  FIssueTypeCode := Value;
  edIssueReqTypeCode.Text := getMTTCDE('IRT',IntToStr(FIssueTypeCode));
  edIssueReqTypeName.Text := getMTTName('IRT',IntToStr(FIssueTypeCode));
end;

procedure TfrmMasterIssue.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
  edWhCode.Text := getMTTCDE('WH0',IntToStr(FWarehouseCode));
  edWhName.Text := getWareHouseName(FWarehouseCode);
end;

procedure TfrmMasterIssue.btnImportFromIssueReqClick(Sender: TObject);
var cdsIssueReqItems , cdsCurrIssueItems : TClientDataSet;
    irow ,IssuedQty: integer;
begin
  try
    irow :=0;

    if cdsIssueDetail.RecordCount>0 then
      if Application.MessageBox(pchar('ยืนยัน นำเข้ารายการใหม่ ? '),pchar('Warning'),MB_OKCANCEL or MB_ICONWARNING)=mrCancel then
        Exit;
    IssueAmount :=0;

    // clear records
    if cdsIssueDetail.RecordCount>0 then
    begin
      cdsIssueDetail.First;
      while not cdsIssueDetail.Eof do
        cdsIssueDetail.Delete;
    end;

//    cdsIssueDetail.EmptyDataSet;


    cdsIssueReqItems := TClientDataSet.Create(nil);
    cdsCurrIssueItems := TClientDataSet.Create(nil);





    cdsIssueReqItems.Data := GetDataSet('select * from ICMTTIRD where IRDCOD='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString+' order by IRDSEQ');
    if cdsIssueReqItems.Active then
      if cdsIssueReqItems.RecordCount>0 then
      begin

        cdsCurrIssueItems.Data := GetDataSet(
        '  select             ' +
        '    h.IUHWH0,d.IUDPRD,d.IUDUNI,d.IUDPAC,sum(d.IUDQTY) IUDQTY  ' +
        '  from ICMTTIUH  h , ICMTTIUD d   '  +
        '  where d.IUDCOD=h.IUHCOD      '    +
        '  and h.IUHFLG=''A'' and h.IUHFL1=''Y'' and h.IUHIRC='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString+'  ' +
        '  group by                         '    +
        '  h.IUHWH0,d.IUDPRD,d.IUDUNI,d.IUDPAC '
        );

        IssuedQty :=0;
        cdsIssueReqItems.first;
        while not cdsIssueReqItems.Eof do
        begin
          inc(irow);
          if cdsIssueDetail.State in [dsinsert,dsedit] then cdsIssueDetail.Post;
          cdsIssueDetail.Append;
          cdsIssueDetail.FieldByName('IUDCOD').AsInteger := cdsIssueHeader.fieldbyname('IUHCOD').AsInteger;
          cdsIssueDetail.FieldByName('IUDCDE').AsString := cdsIssueReqItems.fieldbyname('IRDCDE').AsString;

          cdsIssueDetail.FieldByName('IUDSEQ').AsInteger := irow;
          cdsIssueDetail.FieldByName('IUDPRD').AsInteger := cdsIssueReqItems.fieldbyname('IRDPRD').AsInteger;
          cdsIssueDetail.FieldByName('IUDWH0').AsInteger := FWarehouseCode;//cdsIssueReqItems.fieldbyname('IUDWH0').AsInteger;
          cdsIssueDetail.FieldByName('IUDUNI').AsInteger := cdsIssueReqItems.fieldbyname('IRDUNI').AsInteger;
          cdsIssueDetail.FieldByName('IUDPAC').AsInteger := cdsIssueReqItems.fieldbyname('IRDPAC').AsInteger;

          cdsIssueDetail.FieldByName('IUDPNA').AsString := cdsIssueReqItems.fieldbyname('IRDPNA').AsString;
          cdsIssueDetail.FieldByName('IUDUNA').AsString := cdsIssueReqItems.fieldbyname('IRDUNA').AsString;
          cdsIssueDetail.FieldByName('IUDPCN').AsString := cdsIssueReqItems.fieldbyname('IRDPCN').AsString;

          cdsIssueDetail.FieldByName('IUDIRQ').AsInteger := cdsIssueReqItems.fieldbyname('IRDQTY').AsInteger;

          if cdsCurrIssueItems.Active then
            if cdsCurrIssueItems.RecordCount>0 then
              if cdsCurrIssueItems.Locate('IUHWH0;IUDPRD;IUDUNI;IUDPAC',VarArrayOf([FWarehouseCode,cdsIssueReqItems.fieldbyname('IRDPRD').AsInteger,cdsIssueReqItems.fieldbyname('IRDUNI').AsInteger,cdsIssueReqItems.fieldbyname('IRDPAC').AsInteger]),[]) then
                IssuedQty:= cdsCurrIssueItems.fieldbyname('IUDQTY').AsInteger
              else
                IssuedQty:=0;

                //h.IUHWH0,d.IUDPRD,d.IUDUNI,d.IUDPAC

          cdsIssueDetail.FieldByName('IUDRMQ').AsInteger := cdsIssueReqItems.fieldbyname('IRDQTY').AsInteger-IssuedQty;


          cdsIssueDetail.FieldByName('IUDQTY').AsInteger := cdsIssueReqItems.fieldbyname('IRDQTY').AsInteger-IssuedQty;//cdsIssueReqItems.fieldbyname('IUDQTY').AsInteger;
          cdsIssueDetail.FieldByName('IUDCOS').AsCurrency := cdsIssueReqItems.fieldbyname('IRDCOS').AsCurrency;
          cdsIssueDetail.FieldByName('IUDAMT').AsCurrency := cdsIssueReqItems.fieldbyname('IRDAMT').AsCurrency;
          cdsIssueDetail.FieldByName('IUDCAL').AsInteger := 1;
          cdsIssueDetail.Post;
          cdsIssueReqItems.next;
        end;

      end;
  finally
    cdsIssueReqItems.Free;
  end;


{  try
   frmSeaIUHPoforReceive :=TfrmSeaIUHPOforReceive.Create(Application);
   frmSeaIUHPoforReceive.ShowModal;
  finally
    frmSeaIUHPoforReceive.free;
  end;
  }
end;



procedure TfrmMasterIssue.getIssueReqData(IRHCode: integer);
begin
 cdsIssueReqHeader.Data:=GetDataSet('select * from ICMTTIRH where IRHCOD='+IntToStr(IRHCode));
 WarehouseCode:= cdsIssueReqHeader.fieldbyname('IRHWH0').AsInteger;
 DepCode:= cdsIssueReqHeader.fieldbyname('IRHDEP').AsInteger;

 IssueTypeCode := cdsIssueReqHeader.FieldByName('IRHTYP').AsInteger;
 IssueProjectCode := cdsIssueReqHeader.FieldByName('IRHJOB').AsInteger;

end;

procedure TfrmMasterIssue.btnSaveClick(Sender: TObject);
var IsNew : boolean;
  irow : integer;
  lotNo : string;
begin
  IsNew := false;
  lotNo:='';

  if cdsIssueDetail.State in [dsedit,dsinsert] then cdsIssueDetail.Post;
  if not (cdsIssueHeader.State in [dsedit,dsinsert]) then cdsIssueHeader.Edit;



  cdsIssueHeader.FieldByName('IUHIRC').AsInteger := cdsIssueReqHeader.fieldbyname('IRHCOD').AsInteger;
  cdsIssueHeader.FieldByName('IUHWH0').AsInteger := cdsIssueReqHeader.fieldbyname('IRHWH0').AsInteger;
  cdsIssueHeader.FieldByName('IUHDEP').AsInteger := cdsIssueReqHeader.fieldbyname('IRHDEP').AsInteger;
  cdsIssueHeader.FieldByName('IUHDTE').AsDateTime := getServerDate;

  if cdsIssueHeader.State in [dsinsert] then
  begin
    IsNew :=true;
    if cdsIssueHeader.FieldByName('IUHACT').IsNull then
      cdsIssueHeader.FieldByName('IUHACT').AsString:='A';

    cdsIssueHeader.FieldByName('IUHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','MTT_IUHCOD','CDENM1');
    cdsIssueHeader.FieldByName('IUHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','MTT_IUHCOD','CDEPRE')
                                                        ,cdsIssueHeader.FieldByName('IUHCOD').AsInteger,getCde('SETTING','RUNNING','MTT_IUHCOD_LEN','CDENM1'));
    cdsIssueHeader.FieldByName('IUHREV').AsInteger := 1;
  end;

    if cdsIssueDetail.RecordCount>0 then
      begin
        // Fill COD
        cdsIssueDetail.First;
        while not cdsIssueDetail.Eof do
        begin

          if not (cdsIssueDetail.State in [dsedit,dsinsert]) then cdsIssueDetail.Edit;
          cdsIssueDetail.FieldByName('IUDCOD').AsInteger := cdsIssueHeader.FieldByName('IUHCOD').AsInteger;
          cdsIssueDetail.FieldByName('IUDIRC').AsInteger := cdsIssueHeader.FieldByName('IUHCOD').AsInteger;


          {
          if  cdsIssueDetail.FieldByName('IUDQTY').AsInteger>0 then  // generate lot if qty > 0
            if (cdsIssueDetail.FieldByName('IUDLOT').IsNull) or (trim(cdsIssueDetail.FieldByName('IUDLOT').AsString)='') then
            begin
              if trim(lotNo)='' then
                if Application.MessageBox(pchar('ยืนยันให้ระบบ สร้างเลข Lot Number ให้อัตโนมัติ?'),pchar('Information'),MB_ICONWARNING or MB_YESNO) = mrYes then
                begin
                  lotNo:=getLotNoRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','LOTNO','CDEPRE')
                         ,getCdeRun('SETTING','RUNNING','LOTNO','CDENM1'),getCde('SETTING','RUNNING','LOTNO_LEN','CDENM1'));

                end else Exit;

              if trim(lotNo)<>'' then
               cdsIssueDetail.FieldByName('RCDLOT').AsString:=lotNo;


            end;

            }

          setEntryUSRDT(cdsIssueDetail,DLLParameter.UserID);
          setSystemCMP(cdsIssueDetail,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);


          cdsIssueDetail.Post;
          cdsIssueDetail.Next;
        end;





      end;




    setEntryUSRDT(cdsIssueHeader,DLLParameter.UserID);
    setSystemCMP(cdsIssueHeader,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);







  if not ( cdsIssueHeader.State in [dsinsert,dsedit]) then cdsIssueHeader.Edit;

    cdsIssueHeader.FieldByName('IUHAMT').AsCurrency := FIssueAmount;
//    cdsIssueHeader.FieldByName('IUHVAM').AsCurrency := FPOVat;
//    cdsIssueHeader.FieldByName('IUHNET').AsCurrency := FPONetAmount;
    setModifyUSRDT(cdsIssueHeader,DLLParameter.UserID);
   cdsIssueHeader.Post;



  if cdsIssueDetail.State in [dsEdit,dsInsert] then cdsIssueDetail.Post;
  if cdsIssueDetail.ChangeCount>0 then
  begin
    //UpdateDataset(cdsIssueDetail,'select * from ICTRNRCD limit 0');
    UpdateDataset(cdsIssueDetail,'select * from ICMTTIUD where IUDCOD='+IntToStr(FIssueCode)+' order by IUDSEQ');
  end;


  if cdsIssueHeader.State in [dsEdit,dsInsert] then cdsIssueHeader.Post;
  if cdsIssueHeader.ChangeCount>0 then
  begin
    UpdateDataset(cdsIssueHeader,'select * from ICMTTIUH limit 0');
    FIssueCode := cdsIssueHeader.FieldByName('IUHCOD').AsInteger;

    if IsNew then
    begin
      setCdeRun('SETTING','RUNNING','MTT_IUHCOD','CDENM1');

    end;

   { if lotNo<>'' then
      setCdeRun('SETTING','RUNNING','LOTNO','CDENM1');
      }


  end;

  ShowMessage('Successfull.');
  getIssueData(FIssueCode);




end;

procedure TfrmMasterIssue.getIRIssue(IRCode: integer);
begin
  //cdsIRIssues.Data := GetDataSet('select * from ICMTTIUH where IUHIRC=9');
  cdsIRIssues.Data := GetDataSet('select * from ICMTTIUH where IUHIRC='+inttostr(IRCode));
  //SiMain.LogWarning(IntToStr(cdsIRIssues.RecordCount));
end;

procedure TfrmMasterIssue.cdsIssueReqListAfterScroll(DataSet: TDataSet);
begin
  getIRIssue(DataSet.fieldbyname('IRHCOD').AsInteger);
end;

procedure TfrmMasterIssue.cxGridDBTableView3DblClick(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabIssueData;
  getIssueReqData(cdsIRIssues.fieldbyname('IUHIRC').AsInteger);
  getIssueData(cdsIRIssues.fieldbyname('IUHCOD').AsInteger);
end;

procedure TfrmMasterIssue.getAllIssue;
var strsql:string;
begin
strsql:=
'  select   '+
'    irh.IRHCDE,wh0.WH0CDE,wh0.WH0NAM,wh1.WH1CDE,wh1.WH1NAM,iuh.*     '+
'  from         '+
'    ICMTTIUH iuh  '+
'    ,ICMTTIRH irh  '+
'    ,ICMTTWH0 wh0,ICMTTWH1 wh1  '+
'  where irh.IRHCOD=iuh.IUHIRC '+
'  and wh0.WH0COD=iuh.IUHWH0 and irh.IRHDEP=wh1.WH1COD ';

  cdsAllIssueList.Data := GetDataSet(strsql);
end;

procedure TfrmMasterIssue.cxGridDBTableView1DblClick(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabIssueData;
  getIssueReqData(cdsAllIssueList.fieldbyname('IUHIRC').AsInteger);
  getIssueData(cdsAllIssueList.fieldbyname('IUHCOD').AsInteger);
end;

procedure TfrmMasterIssue.btnRefreshAllClick(Sender: TObject);
begin
  getIssueReqList;
  getAllIssue;
end;

procedure TfrmMasterIssue.cxGridDBColumn10GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  AText:=IntToStr(ARecord.Index+1);
end;

procedure TfrmMasterIssue.cdsIssueDetailBeforePost(DataSet: TDataSet);
begin
 if DataSet.FieldByName('IUDQTY').AsInteger> DataSet.FieldByName('IUDRMQ').AsInteger
  then  DataSet.FieldByName('IUDQTY').AsInteger := DataSet.FieldByName('IUDRMQ').AsInteger;
end;

procedure TfrmMasterIssue.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterIssue.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName='IUDQTY' then
  begin
    if AViewInfo.Selected then
    begin
      ACanvas.Brush.Color:= clBackground;
      ACanvas.Font.Color := $00C6D9FF;
      ACanvas.Font.Style:=[fsBold]

    end else begin
      ACanvas.Brush.Color:=$00F7F0EE;
      ACanvas.Font.Color := clBlack;
      ACanvas.Font.Style:=[fsBold]

    end;
  end;
  if TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName='IUDRMQ' then
  begin
    if AViewInfo.Selected then
    begin
      ACanvas.Brush.Color:= clBackground;
      ACanvas.Font.Color := $00FF8AFF;
      ACanvas.Font.Style:=[fsBold]

    end else begin
      ACanvas.Brush.Color:=$00F7F0EE;
      ACanvas.Font.Color := clBlack;
      ACanvas.Font.Style:=[fsBold]

    end;
  end;

end;

procedure TfrmMasterIssue.btnApproveClick(Sender: TObject);
var icount,IssueQty,IssueReqQty,ItemBalanceQty:integer;
    cdsCurrIssueItems,cdsIssueReqItems,cdsTemp,cdsOnHandLotsQTY,cdsOnHandLots : TClientDataSet;
    reqItemFinishCount,IssueItemACCM,IssueItemQTY:integer;
begin
  if not cdsIssueHeader.Active then Exit;

  if ((cdsIssueHeader.State in [dsedit,dsinsert]) or ( cdsIssueDetail.State in [dsedit,dsinsert] )) then
  begin
    Application.MessageBox(pchar('กรุณาทำการบันทึกก่อน !!!'),pchar('Confirm'),MB_OK or MB_ICONWARNING);
    Exit;
  end;

    IssueQty:=0;
    ItemBalanceQty := 0;
    reqItemFinishCount :=0;
    IssueReqQty := 0;

    if cdsIssueDetail.RecordCount>0 then
      begin

        cdsCurrIssueItems :=TClientDataSet.Create(nil);
        cdsIssueReqItems := TClientDataSet.Create(nil);

        cdsCurrIssueItems.Data := GetDataSet(
            '  select             ' +
            '    h.IUHWH0,d.IUDPRD,d.IUDUNI,d.IUDPAC,sum(d.IUDQTY) IUDQTY  ' +
            '  from ICMTTIUH  h , ICMTTIUD d   '  +
            '  where d.IUDCOD=h.IUHCOD      '    +
            '  and h.IUHFLG=''A'' and h.IUHFL1=''Y'' and h.IUHIRC='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString+'  ' +
            '  group by                         '    +
            '  h.IUHWH0,d.IUDPRD,d.IUDUNI,d.IUDPAC '
            );

        cdsIssueReqItems.data := GetDataSet('select * from ICMTTIRD where IRDCOD='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString);
        //InputBox('','','select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString);


        cdsIssueDetail.First;
        while not cdsIssueDetail.Eof do
        begin


          // ####000
          if cdsIssueReqItems.Active then
            if cdsIssueReqItems.RecordCount>0 then
              if cdsIssueReqItems.Locate('IRDWH0;IRDPRD;IRDUNI;IRDPAC'
                            ,VarArrayOf([cdsIssueHeader.fieldbyname('IUHWH0').AsInteger
                            ,cdsIssueDetail.fieldbyname('IUDPRD').AsInteger
                            ,cdsIssueDetail.fieldbyname('IUDUNI').AsInteger
                            ,cdsIssueDetail.fieldbyname('IUDPAC').AsInteger]),[]) then
                  IssueReqQty := cdsIssueReqItems.fieldbyname('IRDQTY').AsInteger
              else
                IssueReqQty := 0;



          if cdsCurrIssueItems.Active then
            if cdsCurrIssueItems.RecordCount>0 then
              if cdsCurrIssueItems.Locate('IUHWH0;IUDPRD;IUDUNI;IUDPAC'
              ,VarArrayOf([cdsIssueHeader.fieldbyname('IUHWH0').AsInteger
              ,cdsIssueDetail.fieldbyname('IUDPRD').AsInteger
              ,cdsIssueDetail.fieldbyname('IUDUNI').AsInteger
              ,cdsIssueDetail.fieldbyname('IUDPAC').AsInteger]),[]) then
                IssueQty:= cdsCurrIssueItems.fieldbyname('IUDQTY').AsInteger
              else
                IssueQty:=0;

          ItemBalanceQty := IssueReqQty - IssueQty;
          // ####0000



          if  cdsIssueDetail.FieldByName('IUDQTY').AsInteger>0 then
          begin

            SiMain.LogMessage('Issue Req QTY = '+IntToStr(IssueReqQty)+', Issue Qty = '+IntToStr(IssueQty)+', Current Qty = '+cdsIssueDetail.FieldByName('IUDQTY').asstring);

            //ShowMessage(IntToStr(receiveQty+cdsIssueDetail.FieldByName('RCDQTY').AsInteger)+'>'+IntToStr(POQty));
            //if receiveQty>cdsIssueDetail.FieldByName('RCDQTY').AsInteger then
            if (IssueQty+cdsIssueDetail.FieldByName('IUDQTY').AsInteger )>IssueReqQty then
            begin
              Application.MessageBox(pchar('ระบุจำนวนจ่ายเกินจำนวนขอเบิกไม่สามารถ อนุมัติรายการได้!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;


            // check onhand

            SiMain.LogMessage('check onhand');
            cdsOnHandLotsQTY := TClientDataSet.Create(nil);
            cdsOnHandLotsQTY.Data := GetDataSet(
             ' select  '+
             ' 	ifnull(sum(STLQTY),0) all_qty from ICMTTSTL  '+
             ' where  '+
             ' 		STLPRD='+cdsIssueDetail.fieldbyname('IUDPRD').AsString+' and STLWH0='+cdsIssueHeader.fieldbyname('IUHWH0').AsString+' and STLUNI='+cdsIssueDetail.fieldbyname('IUDUNI').AsString+' and STLPAC='+cdsIssueDetail.fieldbyname('IUDPAC').AsString+' '+
             ' and STLQTY>0 '+
             ' order by STLEXP '
            );

            {
            if cdsOnHandLotsQTY.RecordCount<=0 then
            begin
              Application.MessageBox(pchar('สินค้าไม่พอจ่าย คุณต้องการอนุมัติรายการหรือไม่!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;
            }

            if cdsOnHandLotsQTY.FieldByName('all_qty').AsInteger>=cdsIssueDetail.FieldByName('IUDQTY').AsInteger then
            begin

            end else
            begin
              // issue item 0
              if Application.MessageBox(pchar('สินค้าไม่พอจ่าย คุณต้องการอนุมัติรายการหรือไม่!!!'),pchar('Warning'),MB_ICONWARNING or MB_YESNO)=mrNo then
               Exit;

              cdsIssueDetail.Edit;
              cdsIssueDetail.FieldByName('IUDQTY').AsInteger:=cdsOnHandLotsQTY.FieldByName('all_qty').AsInteger;
              cdsIssueDetail.Post;
            end;



           {
            if cdsIssueDetail.FieldByName('IUDEXP').IsNull then
            begin
              Application.MessageBox(pchar('กรุณาระบุวันหมดอายุก่อนทำการอนุมัติรายการ!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;


            if cdsIssueDetail.FieldByName('IUDEXP').AsDateTime<getServerDate then
            begin
              Application.MessageBox(pchar('ไม่สามารถกำหนดวันหมดอายุน้อยกว่าวันที่ปัจจุบันได้ กรุณาทำการแก้ไข'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;



            if cdsIssueDetail.FieldByName('IUDLOT').IsNull  then
            begin
              Application.MessageBox(pchar('กรุณาระบุ Lot Number ก่อนทำการอนุมัติรายการ!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;

            }
          end;

          cdsIssueDetail.Next;
        end;




      end;

  {*****************************}

  if not (cdsIssueHeader.State in [dsedit,dsinsert]) then cdsIssueHeader.Edit;

  if Application.MessageBox(pchar('ยืนยันอนุมัติใบจ่ายสินค้า !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    cdsIssueHeader.FieldByName('IUHFLG').AsString:='A';
    cdsIssueHeader.FieldByName('IUHFL1').AsString:='Y'; // read only flag

    //cdsIssueHeader.FieldByName('RCHREV').AsInteger := FReviseNum+1;

    cdsIssueHeader.Post;


    if cdsIssueHeader.ChangeCount>0 then
    begin
      UpdateDataset(cdsIssueHeader,'select * from ICMTTIUH where IUHCOD='+IntToStr(FIssueCode));
      //btnApprove.Enabled := false;

      //
      if cdsIssueDetail.RecordCount>0 then
      begin
        cdsIssueDetail.First;
        icount :=0;
        cdsOnHandLots := TClientDataSet.Create(nil);

        while not cdsIssueDetail.Eof do
        begin
//          PostStkTransaction();


            cdsOnHandLots.Data:=GetDataSet(
               ' select  '+
               ' 	STLPRD,STLWH0,STLUNI,STLPAC,STLLOT,STLQTY,STLEXP,STLEXC from ICMTTSTL  '+
               ' where  '+
               ' 	STLPRD='+cdsIssueDetail.fieldbyname('IUDPRD').AsString+' and STLWH0='+cdsIssueHeader.fieldbyname('IUHWH0').AsString+' and STLUNI='+cdsIssueDetail.fieldbyname('IUDUNI').AsString+' and STLPAC='+cdsIssueDetail.fieldbyname('IUDPAC').AsString+' '+
               ' and STLQTY>0 '+
               ' order by STLEXP '
            );

            if cdsOnHandLots.RecordCount<=0 then
            begin
              Application.MessageBox(pchar('สินค้าไม่พอจ่าย ไม่สามารถ อนุมัติรายการได้!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;// else
            {
            begin
              IssueItemACCM := IssueItemACCM + cdsOnHandLots.fieldbyname('STLQTY').AsInteger;
              cdsIssueDetail.Edit;
              cdsIssueDetail.FieldByName('IUDQTY').AsInteger:=cdsOnHandLotsQTY.FieldByName('all_qty').AsInteger;
              cdsIssueDetail.Post;


            end;
            }

          IssueItemACCM :=  cdsIssueDetail.FieldByName('IUDQTY').AsInteger;
          IssueItemQTY  :=  0;

          cdsOnHandLots.first;
          while not cdsOnHandLots.Eof do
          begin
            if cdsIssueDetail.FieldByName('IUDQTY').AsInteger>0 then
            begin
              inc(icount);

              if cdsOnHandLots.fieldbyname('STLQTY').asinteger >= IssueItemACCM then
                IssueItemQTY := IssueItemACCM
              else //if cdsOnHandLots.fieldbyname('STLQTY').asinteger < IssueItemACCM
                IssueItemQTY := cdsOnHandLots.fieldbyname('STLQTY').asinteger;


              // issue from warehouse
              PostStkTransaction(
                'W',11,cdsIssueDetail.fieldbyname('IUDPRD').asinteger,cdsIssueDetail.fieldbyname('IUDPCD').asstring
                ,cdsIssueDetail.fieldbyname('IUDWH0').asinteger
                ,cdsIssueReqHeader.fieldbyname('IRHDEP').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDUNI').asinteger
                ,cdsIssueDetail.fieldbyname('IUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',-1,cdsIssueDetail.fieldbyname('IUDCOS').ascurrency
                ,cdsIssueDetail.fieldbyname('IUDCOD').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDCDE').AsString
                ,icount
              );
              PostStk(
                '00',11,cdsIssueDetail.fieldbyname('IUDPRD').asinteger,cdsIssueDetail.fieldbyname('IUDPCD').asstring
                ,cdsIssueDetail.fieldbyname('IUDWH0').asinteger
                ,cdsIssueReqHeader.fieldbyname('IRHDEP').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDUNI').asinteger
                ,cdsIssueDetail.fieldbyname('IUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',-1,cdsIssueDetail.fieldbyname('IUDCOS').ascurrency
                ,cdsIssueDetail.fieldbyname('IUDCOD').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDCDE').AsString
                ,icount
              );


              // receive to department
              PostStkTransaction(
                'D',11,cdsIssueDetail.fieldbyname('IUDPRD').asinteger,cdsIssueDetail.fieldbyname('IUDPCD').asstring
                ,cdsIssueDetail.fieldbyname('IUDWH0').asinteger
                ,cdsIssueReqHeader.fieldbyname('IRHDEP').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDUNI').asinteger
                ,cdsIssueDetail.fieldbyname('IUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',1,cdsIssueDetail.fieldbyname('IUDCOS').ascurrency
                ,cdsIssueDetail.fieldbyname('IUDCOD').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDCDE').AsString
                ,icount
              );
              PostStk(
                '00',11,cdsIssueDetail.fieldbyname('IUDPRD').asinteger,cdsIssueDetail.fieldbyname('IUDPCD').asstring
                ,cdsIssueDetail.fieldbyname('IUDWH0').asinteger
                ,cdsIssueReqHeader.fieldbyname('IRHDEP').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDUNI').asinteger
                ,cdsIssueDetail.fieldbyname('IUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',1,cdsIssueDetail.fieldbyname('IUDCOS').ascurrency
                ,cdsIssueDetail.fieldbyname('IUDCOD').AsInteger
                ,cdsIssueDetail.fieldbyname('IUDCDE').AsString
                ,icount
              );


              // *********
              IssueItemACCM:=IssueItemACCM-IssueItemQTY;


              // update po item to finish receive status

              // ####000
              if cdsIssueReqItems.Active then
                if cdsIssueReqItems.RecordCount>0 then
                  if cdsIssueReqItems.Locate('IRDWH0;IRDPRD;IRDUNI;IRDPAC'
                                ,VarArrayOf([cdsIssueHeader.fieldbyname('IUHWH0').AsInteger
                                ,cdsIssueDetail.fieldbyname('IUDPRD').AsInteger
                                ,cdsIssueDetail.fieldbyname('IUDUNI').AsInteger
                                ,cdsIssueDetail.fieldbyname('IUDPAC').AsInteger]),[]) then
                      IssueReqQty := cdsIssueReqItems.fieldbyname('IRDQTY').AsInteger
                  else
                    IssueReqQty := 0;



              if cdsCurrIssueItems.Active then
                if cdsCurrIssueItems.RecordCount>0 then
                  if cdsCurrIssueItems.Locate('IUHWH0;IUDPRD;IUDUNI;IUDPAC'
                  ,VarArrayOf([cdsIssueHeader.fieldbyname('IUHWH0').AsInteger
                  ,cdsIssueDetail.fieldbyname('IUDPRD').AsInteger
                  ,cdsIssueDetail.fieldbyname('IUDUNI').AsInteger
                  ,cdsIssueDetail.fieldbyname('IUDPAC').AsInteger]),[]) then
                    IssueQty:= cdsCurrIssueItems.fieldbyname('IUDQTY').AsInteger
                  else
                    IssueQty:=0;

               ItemBalanceQty := IssueReqQty -  ( IssueQty + cdsIssueDetail.fieldbyname('IUDQTY').asinteger);
              // ####0000

                if cdsIssueReqItems.Active then
                  if cdsIssueReqItems.RecordCount>0 then
                    if cdsIssueReqItems.Locate('IRDCOD;IRDWH0;IRDPRD;IRDUNI;IRDPAC'
                                  ,VarArrayOf([cdsIssueReqHeader.fieldbyname('IRHCOD').AsInteger,cdsIssueReqHeader.fieldbyname('IRHWH0').AsInteger
                                  ,cdsIssueDetail.fieldbyname('IUDPRD').AsInteger
                                  ,cdsIssueDetail.fieldbyname('IUDUNI').AsInteger
                                  ,cdsIssueDetail.fieldbyname('IUDPAC').AsInteger]),[])
                  then
                  begin
                    cdsIssueReqItems.edit;
                    if ItemBalanceQty=0 then begin
                      cdsIssueReqItems.FieldByName('IRDFLG').AsString:='F';  // Finish
                    end
                    else if ItemBalanceQty<0 then
                      cdsIssueReqItems.FieldByName('IRDFLG').AsString:='O'  // over amount
                    else
                      cdsIssueReqItems.FieldByName('IRDFLG').AsString:='A'; // avilable receive

                    cdsIssueReqItems.Post;
                  end;

                    if cdsIssueReqItems.ChangeCount>0 then
                      UpdateDataset(cdsIssueReqItems,'select * from ICMTTIRD where IRDCOD='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString);


                      reqItemFinishCount:=0;

                      // update po complete status ********************************************************************************
                      cdsTemp := TClientDataSet.Create(nil);
                      cdsTemp.Data:=GetDataSet('select * from ICMTTIRD where IRDCOD='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString+' and IRDFLG=''F''');
                      if cdsTemp.Active then
                      begin
                        cdsTemp.First;
                        while not cdsTemp.Eof do
                        begin
                          Inc(reqItemFinishCount);
                          cdsTemp.Next;
                        end;
                      end;

                      SiMain.LogMessage('F-Inishcount='+IntToStr(reqItemFinishCount)+',Issuereq Item Count='+IntToStr(cdsIssueReqItems.RecordCount));


                     if not (cdsIssueReqHeader.State in [dsinsert,dsedit]) then
                        cdsIssueReqHeader.Edit;
                      if reqItemFinishCount>0 then
                        if reqItemFinishCount=cdsIssueReqItems.RecordCount then // receive all items complete
                        begin
                          cdsIssueReqHeader.FieldByName('IRHFLI').AsString:='F';
                        end else
                        if reqItemFinishCount<cdsIssueReqItems.RecordCount then
                        begin
                          cdsIssueReqHeader.FieldByName('IRHFLI').AsString:='P';
                        end;

                      cdsIssueReqHeader.post;

                      // update po no complete status ******************************************************************************
                      if reqItemFinishCount<=0 then
                      begin
                        cdsTemp := TClientDataSet.Create(nil);
                        cdsTemp.Data:=GetDataSet('select * from ICMTTIRD where IRDCOD='+cdsIssueReqHeader.fieldbyname('IRHCOD').AsString+'');
                        if cdsTemp.Active then
                          if cdsTemp.RecordCount>0 then
                          begin

                           if not (cdsIssueReqHeader.State in [dsinsert,dsedit]) then
                              cdsIssueReqHeader.Edit;
                                cdsIssueReqHeader.FieldByName('IRHFLI').AsString:='P';

                            cdsIssueReqHeader.post;
                          end;
                      end;



                      if cdsIssueReqHeader.ChangeCount>0 then
                        UpdateDataset(cdsIssueReqHeader,'select * from ICMTTIRH limit 0');


                     if cdsIssueDetail.ChangeCount>0 then      // update isuue detail change
                        UpdateDataset(cdsIssueDetail,'select * from ICMTTIUD limit 0');
              //end;
            end;
            cdsOnHandLots.Next;
          end;   // while


          cdsIssueDetail.Next;
        end;
      end;


      Application.MessageBox(pchar('อนุมัติเรียบร้อย'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);
    end;
  end;



  {
  if Application.MessageBox(pchar('ยืนยันอนุมัติใบจ่ายสินค้า !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    cdsIssueHeader.FieldByName('IUHFLG').AsString:='A';
    cdsIssueHeader.FieldByName('IUHFL1').AsString:='Y';

    //cdsIssueHeader.FieldByName('RCHREV').AsInteger := FReviseNum+1;

    cdsIssueHeader.Post;
  end;

  if cdsIssueHeader.ChangeCount>0 then
  begin
    UpdateDataset(cdsIssueHeader,'select * from ICMTTIUH limit 0');

    Application.MessageBox(pchar('อนุมัติเรียบร้อย'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);
  end;

  }


end;

procedure TfrmMasterIssue.PostStk(STKTYPE: string; STKMVC, STKPRD: integer;
  STKPCD: string; STKWH0,STKWH1, STKUNI, STKPAC, STKQTY, STKLOC: integer;
  STKLOT: string; STKEXP: tdatetime; STKFLG: string; STKCAL: integer;
  STKCOS: currency; STKRF0: integer; STKRF1: string; STKSEQ: integer);
var cdsTrnStock : TClientDataSet;
  STKCOD : integer;
begin
  try
    cdsTrnStock := TClientDataSet.Create(nil);




    cdsTrnStock.Data := GetDataSet('select * from ICTRNSTK where STKCOD='+IntToStr(STKCOD));
    if cdsTrnStock.Active then
    begin
      if not (cdsTrnStock.State in [dsedit,dsinsert]) then cdsTrnStock.Edit;
      STKCOD :=  getCdeRun('SETTING','RUNNING','STKCOD','CDENM1');
      cdsTrnStock.FieldByName('STKTYP').AsString := STKTYPE;
      cdsTrnStock.FieldByName('STKCOD').AsInteger := STKCOD;

      cdsTrnStock.FieldByName('STKMVC').AsInteger := STKMVC;
      cdsTrnStock.FieldByName('STKPRD').AsInteger := STKPRD;
      cdsTrnStock.FieldByName('STKPCD').AsString := STKPCD;
      cdsTrnStock.FieldByName('STKWH0').AsInteger := STKWH0;
      cdsTrnStock.FieldByName('STKWH1').AsInteger := STKWH1;
      cdsTrnStock.FieldByName('STKUNI').AsInteger := STKUNI;
      cdsTrnStock.FieldByName('STKPAC').AsInteger := STKPAC;
      cdsTrnStock.FieldByName('STKQTY').AsInteger := STKQTY;
      cdsTrnStock.FieldByName('STKLOC').AsInteger := STKLOC;
      cdsTrnStock.FieldByName('STKLOT').AsString := STKLOT;
      cdsTrnStock.FieldByName('STKEXP').AsDateTime := STKEXP;
      cdsTrnStock.FieldByName('STKFLG').AsString := STKFLG;
      cdsTrnStock.FieldByName('STKCAL').AsInteger := STKCAL;
      cdsTrnStock.FieldByName('STKCOS').AsCurrency := STKCOS;

      cdsTrnStock.FieldByName('STKRF0').AsInteger := STKRF0;
      cdsTrnStock.FieldByName('STKRF1').AsString := STKRF1;
      cdsTrnStock.FieldByName('STKSEQ').AsInteger := STKSEQ;


      setEntryUSRDT(cdsTrnStock,DLLParameter.UserID);
      setSystemCMP(cdsTrnStock,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);



      cdsTrnStock.Post;
      setCdeRun('SETTING','RUNNING','STKCOD','CDENM1');

      if cdsTrnStock.ChangeCount>0 then
      begin
          UpdateDataset(cdsTrnStock,'select * from ICTRNSTK where STKCOD='+IntToStr(STKCOD));
      end;

    end;

  finally
    cdsTrnStock.free;
  end;

end;

procedure TfrmMasterIssue.PostStkTransaction(STKTYP: string; STKMVC,
  STKPRD: integer; STKPCD: string; STKWH0,STKWH1, STKUNI, STKPAC, STKQTY,
  STKLOC: integer; STKLOT: string; STKEXP: tdatetime; STKFLG: string;
  STKCAL: integer; STKCOS: currency; STKRF0: integer; STKRF1: string;
  STKSEQ: integer);
var cdsStockLOT,cdsMasterStock : TClientDataSet;
    ExpireCode : string;
    STLCOD,STKCOD,mQty,stlQty: integer;
    mCos,mAmount : currency;
    IsNew : boolean;
begin
    try
      if STKTYP='D' then STKWH0:=0
      else if STKTYP='W' then STKWH1:=0;


      IsNew := false;
      stlQty:=0;
      ExpireCode := FormatDateTime('ddMMyyyy',STKEXP);

      cdsStockLOT:=TClientDataSet.Create(nil);
      cdsMasterStock := TClientDataSet.Create(nil);
      cdsStockLOT.data := GetDataSet('select * from ICMTTSTL where STLLOT='''+STKLOT+''' and STLPRD='+IntToStr(STKPRD)+' and STLWH0='+IntToStr(STKWH0)+' and STLWH1='+IntToStr(STKWH1)+'  and STLUNI='+IntToStr(STKUNI)+' and STLPAC='+IntToStr(STKPAC)+' and STLEXC='''+ExpireCode+'''');

      if cdsStockLOT.Active then
      begin
        stlQty:=cdsStockLOT.FieldByName('STLQTY').AsInteger;
        cdsStockLOT.Edit;

        if cdsStockLOT.RecordCount>0 then
        begin
          // edit
          cdsStockLOT.FieldByName('STLQTY').AsInteger:=stlQty+(STKQTY*STKCAL);
          //cdsStockLOT.FieldByName('STLLOC').AsInteger:=STKLOC;
          //cdsStockLOT.FieldByName('STLLCD').AsString:='';
          //cdsStockLOT.FieldByName('STLEXP').AsDateTime:=STKEXP;
          //cdsStockLOT.FieldByName('STLCOS').AsCurrency:=STKCOS;
          cdsStockLOT.FieldByName('STLAMT').AsCurrency:=STKCOS*(stlQty+(STKQTY*STKCAL));

          setModifyUSRDT(cdsStockLOT,DLLParameter.UserID);
        end else
        begin

          // append
          IsNew := true;
          STLCOD := getCdeRun('SETTING','RUNNING','STLCOD','CDENM1');
          cdsStockLOT.FieldByName('STLCOD').AsInteger:=STLCOD;

          cdsStockLOT.FieldByName('STLLOT').AsString:=STKLOT;
          cdsStockLOT.FieldByName('STLPRD').AsInteger:=STKPRD;
          cdsStockLOT.FieldByName('STLWH0').AsInteger:=STKWH0;
          cdsStockLOT.FieldByName('STLWH1').AsInteger:=STKWH1;
          cdsStockLOT.FieldByName('STLUNI').AsInteger:=STKUNI;
          cdsStockLOT.FieldByName('STLPAC').AsInteger:=STKPAC;
          cdsStockLOT.FieldByName('STLEXC').AsString:=ExpireCode;


          cdsStockLOT.FieldByName('STLQTY').AsInteger:=STKQTY*STKCAL;
          cdsStockLOT.FieldByName('STLLOC').AsInteger:=STKLOC;
          //cdsStockLOT.FieldByName('STLLCD').AsString:='';
          cdsStockLOT.FieldByName('STLEXP').AsDateTime:=STKEXP;
          cdsStockLOT.FieldByName('STLCOS').AsCurrency:=STKCOS;
          cdsStockLOT.FieldByName('STLAMT').AsCurrency:=STKCOS*(STKQTY*STKCAL);

          setEntryUSRDT(cdsStockLOT,DLLParameter.UserID);
          setSystemCMP(cdsStockLOT,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
        end;





        cdsStockLOT.Post;
        if cdsStockLOT.ChangeCount>0 then
        begin
          UpdateDataset(cdsStockLOT,'select * from ICMTTSTL where STLLOT='''+STKLOT+''' and STLPRD='+IntToStr(STKPRD)+' and STLWH0='+IntToStr(STKWH0)+' and STLWH1='+IntToStr(STKWH1)+'  and STLUNI='+IntToStr(STKUNI)+' and STLPAC='+IntToStr(STKPAC)+' and STLEXC='''+ExpireCode+'''');
          if IsNew then setCdeRun('SETTING','RUNNING','STLCOD','CDENM1');



          IsNew := false;
          // update master stock
          cdsMasterStock.data := GetDataSet('select * from ICMTTSTK where STKPRD='+IntToStr(STKPRD)+' and STKWH0='+IntToStr(STKWH0)+' and STKWH1='+IntToStr(STKWH1)+' and STKUNI='+IntToStr(STKUNI)+' and STKPAC='+IntToStr(STKPAC)+'');
          if cdsMasterStock.Active then
          begin
            if cdsMasterStock.fieldbyname('STKQTY').IsNull then mQty:=0 else
            mQty := cdsMasterStock.fieldbyname('STKQTY').AsInteger;   // old qty
            if cdsMasterStock.fieldbyname('STKCOS').IsNull then mCos:=0 else
            mCos := cdsMasterStock.fieldbyname('STKCOS').AsCurrency;  // need average proc

            cdsMasterStock.Edit;
            if cdsMasterStock.RecordCount>0 then
            begin
              // edit
              cdsMasterStock.FieldByName('STKQTY').AsInteger :=mQty + (STKQTY*STKCAL);
              cdsMasterStock.FieldByName('STKCOS').AsCurrency :=mCos;
              cdsMasterStock.FieldByName('STKAMT').AsCurrency :=mCos*(mQty + (STKQTY*STKCAL));

              setModifyUSRDT(cdsMasterStock,DLLParameter.UserID);
            end else
            begin
              // append
              IsNew := true;
              STKCOD :=   getCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');
              cdsMasterStock.FieldByName('STKCOD').AsInteger:=STKCOD;

              cdsMasterStock.FieldByName('STKPRD').AsInteger:=STKPRD;
              cdsMasterStock.FieldByName('STKTYP').AsString :=STKTYP;
              cdsMasterStock.FieldByName('STKWH0').AsInteger:=STKWH0;
              cdsMasterStock.FieldByName('STKWH1').AsInteger:=STKWH1;
              cdsMasterStock.FieldByName('STKUNI').AsInteger:=STKUNI;
              cdsMasterStock.FieldByName('STKPAC').AsInteger:=STKPAC;

              cdsMasterStock.FieldByName('STKQTY').AsInteger  := mQty + (STKQTY*STKCAL);//STKQTY;
              cdsMasterStock.FieldByName('STKCOS').AsCurrency := mCos;//STKCOS;
              cdsMasterStock.FieldByName('STKAMT').AsCurrency := mCos*(mQty + (STKQTY*STKCAL));//STKQTY*STKCOS;


              setEntryUSRDT(cdsMasterStock,DLLParameter.UserID);
              setSystemCMP(cdsMasterStock,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);

            end;
            cdsMasterStock.Post;
            if cdsMasterStock.ChangeCount>0 then
            begin
               UpdateDataset(cdsMasterStock,'select * from ICMTTSTK where STKPRD='+IntToStr(STKPRD)+' and STKWH0='+IntToStr(STKWH0)+' and STKWH1='+IntToStr(STKWH1)+' and STKUNI='+IntToStr(STKUNI)+' and STKPAC='+IntToStr(STKPAC)+'');
               if IsNew then setCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');
            end;

          end;





        end;



      end;




    finally
      cdsStockLOT.Free;
      cdsMasterStock.Free;

    end;
end;

(*begin
    try
      //if STKTYP='D' then STKWH0:=0
      //else if STKTYP='W' STKWH1:=0;


      IsNew := false;
      stlQty:=0;
      ExpireCode := FormatDateTime('ddMMyyyy',STKEXP);

      cdsStockLOT:=TClientDataSet.Create(nil);
      cdsMasterStock := TClientDataSet.Create(nil);
      cdsStockLOT.data := GetDataSet('select * from ICMTTSTL where STLLOT='''+STKLOT+''' and STLPRD='+IntToStr(STKPRD)+' and STLWH0='+IntToStr(STKWH0)+'  and STLUNI='+IntToStr(STKUNI)+' and STLPAC='+IntToStr(STKPAC)+' and STLEXC='''+ExpireCode+'''');

      if cdsStockLOT.Active then
      begin
        stlQty:=cdsStockLOT.FieldByName('STLQTY').AsInteger;
        cdsStockLOT.Edit;

        if cdsStockLOT.RecordCount>0 then
        begin
          // edit
          cdsStockLOT.FieldByName('STLQTY').AsInteger:=stlQty+(STKQTY*STKCAL);
          //cdsStockLOT.FieldByName('STLLOC').AsInteger:=STKLOC;
          //cdsStockLOT.FieldByName('STLLCD').AsString:='';
          //cdsStockLOT.FieldByName('STLEXP').AsDateTime:=STKEXP;
          //cdsStockLOT.FieldByName('STLCOS').AsCurrency:=STKCOS;
          cdsStockLOT.FieldByName('STLAMT').AsCurrency:=STKCOS*(stlQty+(STKQTY*STKCAL));

          setModifyUSRDT(cdsStockLOT,DLLParameter.UserID);
        end else
        begin

          // append
          IsNew := true;
          STLCOD := getCdeRun('SETTING','RUNNING','STLCOD','CDENM1');
          cdsStockLOT.FieldByName('STLCOD').AsInteger:=STLCOD;

          cdsStockLOT.FieldByName('STLLOT').AsString:=STKLOT;
          cdsStockLOT.FieldByName('STLPRD').AsInteger:=STKPRD;
          cdsStockLOT.FieldByName('STLWH0').AsInteger:=STKWH0;
          cdsStockLOT.FieldByName('STLWH1').AsInteger:=STKWH1;
          cdsStockLOT.FieldByName('STLUNI').AsInteger:=STKUNI;
          cdsStockLOT.FieldByName('STLPAC').AsInteger:=STKPAC;
          cdsStockLOT.FieldByName('STLEXC').AsString:=ExpireCode;


          cdsStockLOT.FieldByName('STLQTY').AsInteger:=STKQTY*STKCAL;
          cdsStockLOT.FieldByName('STLLOC').AsInteger:=STKLOC;
          //cdsStockLOT.FieldByName('STLLCD').AsString:='';
          cdsStockLOT.FieldByName('STLEXP').AsDateTime:=STKEXP;
          cdsStockLOT.FieldByName('STLCOS').AsCurrency:=STKCOS;
          cdsStockLOT.FieldByName('STLAMT').AsCurrency:=STKCOS*(STKQTY*STKCAL);

          setEntryUSRDT(cdsStockLOT,DLLParameter.UserID);
          setSystemCMP(cdsStockLOT,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
        end;





        cdsStockLOT.Post;
        if cdsStockLOT.ChangeCount>0 then
        begin
          UpdateDataset(cdsStockLOT,'select * from ICMTTSTL where STLLOT='''+STKLOT+''' and STLPRD='+IntToStr(STKPRD)+' and STLWH0='+IntToStr(STKWH0)+'  and STLUNI='+IntToStr(STKUNI)+' and STLPAC='+IntToStr(STKPAC)+' and STLEXC='''+ExpireCode+'''');
          if IsNew then setCdeRun('SETTING','RUNNING','STLCOD','CDENM1');



          IsNew := false;
          // update master stock
          cdsMasterStock.data := GetDataSet('select * from ICMTTSTK where STKPRD='+IntToStr(STKPRD)+' and STKWH0='+IntToStr(STKWH0)+' and STKUNI='+IntToStr(STKUNI)+' and STKPAC='+IntToStr(STKPAC)+'');
          if cdsMasterStock.Active then
          begin
            if cdsMasterStock.fieldbyname('STKQTY').IsNull then mQty:=0 else
            mQty := cdsMasterStock.fieldbyname('STKQTY').AsInteger;   // old qty
            if cdsMasterStock.fieldbyname('STKCOS').IsNull then mCos:=0 else
            mCos := cdsMasterStock.fieldbyname('STKCOS').AsCurrency;  // need average proc

            cdsMasterStock.Edit;
            if cdsMasterStock.RecordCount>0 then
            begin
              // edit
              cdsMasterStock.FieldByName('STKQTY').AsInteger :=mQty + (STKQTY*STKCAL);
              cdsMasterStock.FieldByName('STKCOS').AsCurrency :=mCos;
              cdsMasterStock.FieldByName('STKAMT').AsCurrency :=mCos*(mQty + (STKQTY*STKCAL));

              setModifyUSRDT(cdsMasterStock,DLLParameter.UserID);
            end else
            begin
              // append
              IsNew := true;
              STKCOD :=   getCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');
              cdsMasterStock.FieldByName('STKCOD').AsInteger:=STKCOD;

              cdsMasterStock.FieldByName('STKPRD').AsInteger:=STKPRD;
              cdsMasterStock.FieldByName('STKTYP').AsString :=STKTYP;
              cdsMasterStock.FieldByName('STKWH0').AsInteger:=STKWH0;
              cdsMasterStock.FieldByName('STKWH1').AsInteger:=STKWH1;
              cdsMasterStock.FieldByName('STKUNI').AsInteger:=STKUNI;
              cdsMasterStock.FieldByName('STKPAC').AsInteger:=STKPAC;

              cdsMasterStock.FieldByName('STKQTY').AsInteger  := mQty + (STKQTY*STKCAL);//STKQTY;
              cdsMasterStock.FieldByName('STKCOS').AsCurrency := mCos;//STKCOS;
              cdsMasterStock.FieldByName('STKAMT').AsCurrency := mCos*(mQty + (STKQTY*STKCAL));//STKQTY*STKCOS;


              setEntryUSRDT(cdsMasterStock,DLLParameter.UserID);
              setSystemCMP(cdsMasterStock,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);

            end;
            cdsMasterStock.Post;
            if cdsMasterStock.ChangeCount>0 then
            begin
               UpdateDataset(cdsMasterStock,'select * from ICMTTSTK where STKPRD='+IntToStr(STKPRD)+' and STKWH0='+IntToStr(STKWH0)+' and STKUNI='+IntToStr(STKUNI)+' and STKPAC='+IntToStr(STKPAC)+'');
               if IsNew then setCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');
            end;

          end;





        end;



      end;




    finally
      cdsStockLOT.Free;
      cdsMasterStock.Free;

    end;
end;
*)

procedure TfrmMasterIssue.FormCreate(Sender: TObject);
begin
 SetChildTaborders(pnAllClients);
end;

procedure TfrmMasterIssue.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

end.
