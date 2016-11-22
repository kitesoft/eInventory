unit SystemSettingFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, StdCtrls, RzLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, RzPanel, ComCtrls, RzButton, Mask,
  RzEdit, RzDBEdit, RzCmboBx, DBCtrls, Buttons,CommonLIB, cxTextEdit,
  cxImageComboBox, ImgList;

type
  TfrmSystemSetting = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClient: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheetMTTUnit: TTabSheet;
    cdsRates: TClientDataSet;
    dsRates: TDataSource;
    TabSheetProductType: TTabSheet;
    TabSheetMTTProductGroup: TTabSheet;
    PageControl3: TPageControl;
    TabSheetWarehouse: TTabSheet;
    TabSheetSubStock: TTabSheet;
    TabSheetMTTStockType: TTabSheet;
    PageControl4: TPageControl;
    TabSheetMTTSuppliers: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet14: TTabSheet;
    PageControl5: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet20: TTabSheet;
    PageControl7: TPageControl;
    TabSheetMTTPerson: TTabSheet;
    TabSheetMTTPosition: TTabSheet;
    PageControl8: TPageControl;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheetMTTLocation: TTabSheet;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    grdUnits: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    grdUnitPacking: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    btnAddUnit: TRzBitBtn;
    btnDeleteUnit: TRzBitBtn;
    btnEditUnit: TRzBitBtn;
    btnAddUnitPacking: TRzBitBtn;
    btnDeleteUnitPacking: TRzBitBtn;
    btnEditUnitPacking: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    cdsUnits: TClientDataSet;
    dsUnits: TDataSource;
    cdsUnitPackings: TClientDataSet;
    dsUnitPackings: TDataSource;
    cdsProdTypes: TClientDataSet;
    dsProdTypes: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    RzPanel8: TRzPanel;
    grdProdType: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    RzPanel9: TRzPanel;
    RzLabel3: TRzLabel;
    btnAddProdtype: TRzBitBtn;
    btnDeleteProdtype: TRzBitBtn;
    btnEditProdtype: TRzBitBtn;
    RzPanel10: TRzPanel;
    grdProdGroup: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    RzPanel11: TRzPanel;
    RzLabel4: TRzLabel;
    btnAddProdGroup: TRzBitBtn;
    btnDeleteProdGroup: TRzBitBtn;
    btnEditProdGroup: TRzBitBtn;
    cdsProdGroups: TClientDataSet;
    dsProdGroups: TDataSource;
    dsProducts: TDataSource;
    cdsProducts: TClientDataSet;
    RzPanel1: TRzPanel;
    grdWarehouse: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    RzPanel12: TRzPanel;
    RzLabel20: TRzLabel;
    btnAddWarehouse: TRzBitBtn;
    btnDeleteWarehouse: TRzBitBtn;
    btnEditWarehouse: TRzBitBtn;
    RzPanel13: TRzPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    RzPanel14: TRzPanel;
    RzLabel21: TRzLabel;
    btnAddSubStock: TRzBitBtn;
    btnDeleteSubStock: TRzBitBtn;
    btnEditSubStock: TRzBitBtn;
    RzPanel15: TRzPanel;
    RzPanel16: TRzPanel;
    RzLabel22: TRzLabel;
    btnAddWarehouseType: TRzBitBtn;
    btnDeleteWarehouseType: TRzBitBtn;
    btnEditWarehouseType: TRzBitBtn;
    RzPanel17: TRzPanel;
    RzPanel18: TRzPanel;
    RzLabel23: TRzLabel;
    btnAddLocation: TRzBitBtn;
    btnDeleteLocation: TRzBitBtn;
    btnEditLocation: TRzBitBtn;
    cdsWarehouses: TClientDataSet;
    dsWarehouses: TDataSource;
    cdsSubStocks: TClientDataSet;
    dsSubStocks: TDataSource;
    cdsStockTypes: TClientDataSet;
    dsStockTypes: TDataSource;
    cdsLocations: TClientDataSet;
    dsLocations: TDataSource;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cdsProdUnit: TClientDataSet;
    RzPanel19: TRzPanel;
    grdSuppliers: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    RzPanel20: TRzPanel;
    RzLabel26: TRzLabel;
    btnAddSupplier: TRzBitBtn;
    btnDeleteSupplier: TRzBitBtn;
    btnEditSupplier: TRzBitBtn;
    cdsSuppliers: TClientDataSet;
    dsSuppliers: TDataSource;
    TabSheetIssueReqType: TTabSheet;
    RzPanel21: TRzPanel;
    RzPanel22: TRzPanel;
    RzLabel27: TRzLabel;
    btnAddIssueReqType: TRzBitBtn;
    btnDeleteIssueReqType: TRzBitBtn;
    btnEditIssueReqType: TRzBitBtn;
    cxGrid5: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cdsIssueReqType: TClientDataSet;
    dsIssueReqType: TDataSource;
    TabSheetMTTProject: TTabSheet;
    RzPanel23: TRzPanel;
    RzPanel24: TRzPanel;
    RzLabel28: TRzLabel;
    btnAddProject: TRzBitBtn;
    btnDeleteProject: TRzBitBtn;
    btnEditProject: TRzBitBtn;
    cxGrid6: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cdsProject: TClientDataSet;
    dsProject: TDataSource;
    TabSheetMTTCommittee: TTabSheet;
    PageControl9: TPageControl;
    TabSheet29: TTabSheet;
    TabSheet30: TTabSheet;
    RzPanel25: TRzPanel;
    RzPanel26: TRzPanel;
    RzLabel29: TRzLabel;
    btnAddExaminationCommittee: TRzBitBtn;
    btnDeleteExaminationCommittee: TRzBitBtn;
    btnEditExaminationCommittee: TRzBitBtn;
    cxGrid7: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    RzPanel27: TRzPanel;
    RzPanel28: TRzPanel;
    RzLabel30: TRzLabel;
    btnAddAuditCommittee: TRzBitBtn;
    btnDeleteAuditCommittee: TRzBitBtn;
    btnEditAuditCommittee: TRzBitBtn;
    cxGrid8: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    RzPanel29: TRzPanel;
    RzPanel30: TRzPanel;
    RzLabel31: TRzLabel;
    btnAddPosition: TRzBitBtn;
    btnDeletePosition: TRzBitBtn;
    btnEditPosition: TRzBitBtn;
    cxGrid9: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    RzPanel31: TRzPanel;
    RzPanel32: TRzPanel;
    RzLabel32: TRzLabel;
    btnAddPersonnel: TRzBitBtn;
    btnDeletePersonnel: TRzBitBtn;
    btnEditPersonnel: TRzBitBtn;
    cxGrid10: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    cdsPositions: TClientDataSet;
    dsPositions: TDataSource;
    cdsPersonnels: TClientDataSet;
    dsPersonnels: TDataSource;
    cdsCMHListA: TClientDataSet;
    dsCMHListA: TDataSource;
    cdsCMHListB: TClientDataSet;
    dsCMHListB: TDataSource;
    cxGridDBTableView15Column1: TcxGridDBColumn;
    TabSheet17: TTabSheet;
    PageControl6: TPageControl;
    TabSheetMTTRate: TTabSheet;
    RzPanel33: TRzPanel;
    RzPanel34: TRzPanel;
    RzLabel33: TRzLabel;
    btnAddRatePrice: TRzBitBtn;
    btnDeleteRatePrice: TRzBitBtn;
    btnEditRatePrice: TRzBitBtn;
    cxGrid11: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    cdsRatePrices: TClientDataSet;
    dsRatePrices: TDataSource;
    TabSheet19: TTabSheet;
    PageControl10: TPageControl;
    TabSheetMTTPayType: TTabSheet;
    RzPanel35: TRzPanel;
    RzPanel36: TRzPanel;
    RzLabel34: TRzLabel;
    btnAddPayType: TRzBitBtn;
    btnDeletePayType: TRzBitBtn;
    btnEditPayType: TRzBitBtn;
    cxGrid12: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    cdsPayTypes: TClientDataSet;
    dsPayTypes: TDataSource;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    dsProductUnits: TDataSource;
    cdsProductUnits: TClientDataSet;
    TabSheetMTTProduct: TTabSheet;
    pgProductData: TPageControl;
    TabProductList: TTabSheet;
    RzPanel3: TRzPanel;
    RzLabel36: TRzLabel;
    RzLabel38: TRzLabel;
    RzLabel35: TRzLabel;
    cmbSearchProdType: TRzComboBox;
    cmbSearchProdGroup: TRzComboBox;
    RzBitBtn1: TRzBitBtn;
    edSearch: TRzEdit;
    btnNewProd: TRzBitBtn;
    btnDeleteProd: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabProductData: TTabSheet;
    Splitter1: TSplitter;
    RzPanel37: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    spbtnRefreshProdType: TSpeedButton;
    spbtnRefreshProdGroup: TSpeedButton;
    RzLabel24: TRzLabel;
    SpeedButton1: TSpeedButton;
    RzLabel25: TRzLabel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    spdGenBarcode: TSpeedButton;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    cmbProdType: TRzComboBox;
    cmbProdGroup: TRzComboBox;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    cmbMainUnit: TRzComboBox;
    cmbProdUnit: TRzComboBox;
    btnSaveProd: TRzBitBtn;
    btnCancelProd: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    RzPanel38: TRzPanel;
    btnAddProdUnit: TRzBitBtn;
    btnDeleteProdUnit: TRzBitBtn;
    btnEditProdUnit: TRzBitBtn;
    RzLabel37: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    ImageList1: TImageList;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    ImageList4: TImageList;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    cxGrid13: TcxGrid;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridLevel18: TcxGridLevel;
    TabSheet6: TTabSheet;
    PageControl11: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure btnAddUnitClick(Sender: TObject);
    procedure btnEditUnitClick(Sender: TObject);
    procedure btnAddUnitPackingClick(Sender: TObject);
    procedure btnEditUnitPackingClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cdsUnitsAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure btnDeleteUnitClick(Sender: TObject);
    procedure btnAddProdtypeClick(Sender: TObject);
    procedure btnAddProdGroupClick(Sender: TObject);
    procedure btnEditProdGroupClick(Sender: TObject);
    procedure btnEditProdtypeClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure btnDeleteProdtypeClick(Sender: TObject);
    procedure btnDeleteProdGroupClick(Sender: TObject);
    procedure btnNewProdClick(Sender: TObject);
    procedure btnSaveProdClick(Sender: TObject);
    procedure cmbProdTypeChange(Sender: TObject);
    procedure cmbProdGroupChange(Sender: TObject);
    procedure spbtnRefreshProdTypeClick(Sender: TObject);
    procedure spbtnRefreshProdGroupClick(Sender: TObject);
    procedure cdsProductsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddWarehouseClick(Sender: TObject);
    procedure btnEditWarehouseClick(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure btnAddSubStockClick(Sender: TObject);
    procedure btnEditSubStockClick(Sender: TObject);
    procedure cxGridDBTableView6DblClick(Sender: TObject);
    procedure btnAddWarehouseTypeClick(Sender: TObject);
    procedure btnEditWarehouseTypeClick(Sender: TObject);
    procedure cxGridDBTableView7DblClick(Sender: TObject);
    procedure btnDeleteWarehouseClick(Sender: TObject);
    procedure cdsWarehousesAfterScroll(DataSet: TDataSet);
    procedure btnDeleteSubStockClick(Sender: TObject);
    procedure cdsSubStocksAfterScroll(DataSet: TDataSet);
    procedure btnDeleteWarehouseTypeClick(Sender: TObject);
    procedure cdsStockTypesAfterScroll(DataSet: TDataSet);
    procedure btnAddLocationClick(Sender: TObject);
    procedure btnEditLocationClick(Sender: TObject);
    procedure cxGridDBTableView8DblClick(Sender: TObject);
    procedure btnDeleteLocationClick(Sender: TObject);
    procedure cdsLocationsAfterScroll(DataSet: TDataSet);
    procedure cmbMainUnitChange(Sender: TObject);
    procedure cmbProdUnitChange(Sender: TObject);
    procedure btnAddSupplierClick(Sender: TObject);
    procedure btnEditSupplierClick(Sender: TObject);
    procedure btnDeleteSupplierClick(Sender: TObject);
    procedure cxGridDBTableView9DblClick(Sender: TObject);
    procedure btnAddIssueReqTypeClick(Sender: TObject);
    procedure btnEditIssueReqTypeClick(Sender: TObject);
    procedure btnDeleteIssueReqTypeClick(Sender: TObject);
    procedure cxGridDBTableView10DblClick(Sender: TObject);
    procedure btnAddProjectClick(Sender: TObject);
    procedure btnEditProjectClick(Sender: TObject);
    procedure btnDeleteProjectClick(Sender: TObject);
    procedure cxGridDBTableView11DblClick(Sender: TObject);
    procedure btnAddPositionClick(Sender: TObject);
    procedure btnAddPersonnelClick(Sender: TObject);
    procedure btnEditPersonnelClick(Sender: TObject);
    procedure btnEditPositionClick(Sender: TObject);
    procedure cxGridDBTableView14DblClick(Sender: TObject);
    procedure cxGridDBTableView15DblClick(Sender: TObject);
    procedure btnDeletePersonnelClick(Sender: TObject);
    procedure btnDeletePositionClick(Sender: TObject);
    procedure btnAddExaminationCommitteeClick(Sender: TObject);
    procedure btnEditExaminationCommitteeClick(Sender: TObject);
    procedure cxGridDBTableView12DblClick(Sender: TObject);
    procedure btnAddAuditCommitteeClick(Sender: TObject);
    procedure btnEditAuditCommitteeClick(Sender: TObject);
    procedure cxGridDBTableView13DblClick(Sender: TObject);
    procedure btnAddRatePriceClick(Sender: TObject);
    procedure btnDeleteRatePriceClick(Sender: TObject);
    procedure btnEditRatePriceClick(Sender: TObject);
    procedure cxGridDBTableView16DblClick(Sender: TObject);
    procedure btnAddPayTypeClick(Sender: TObject);
    procedure btnEditPayTypeClick(Sender: TObject);
    procedure btnDeletePayTypeClick(Sender: TObject);
    procedure btnDeleteUnitPackingClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView3CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView4CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView5CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView6CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView7CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView8CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView10CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView9CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView11CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView12CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView15CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView14CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView16CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView17CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAddProdUnitClick(Sender: TObject);
    procedure btnEditProdUnitClick(Sender: TObject);
    procedure cxGridDBTableView18DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure TabSheetMTTUnitShow(Sender: TObject);
    procedure TabSheetMTTProductShow(Sender: TObject);
    procedure TabSheetProductTypeShow(Sender: TObject);
    procedure TabSheetMTTProductGroupShow(Sender: TObject);
    procedure TabSheetWarehouseShow(Sender: TObject);
    procedure TabSheetSubStockShow(Sender: TObject);
    procedure TabSheetMTTStockTypeShow(Sender: TObject);
    procedure TabSheetMTTLocationShow(Sender: TObject);
    procedure TabSheetMTTSuppliersShow(Sender: TObject);
    procedure TabSheetMTTPersonShow(Sender: TObject);
    procedure TabSheetMTTPositionShow(Sender: TObject);
    procedure TabSheetMTTProjectShow(Sender: TObject);
    procedure TabSheetMTTCommitteeShow(Sender: TObject);
    procedure TabSheetMTTRateShow(Sender: TObject);
    procedure TabSheetMTTPayTypeShow(Sender: TObject);
    procedure TabSheetIssueReqTypeShow(Sender: TObject);
    procedure btnDeleteProdUnitClick(Sender: TObject);
    procedure btnCancelProdClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    FDLLParameter: TDLLParameter;
    { Private declarations }
    procedure getProducts(mode:integer=0);
    procedure getRates();
    procedure getUnit();
    procedure getUnitPacking(UNICOD:integer);
    procedure getProdType();
    procedure getProdGroup();

    procedure getWarehouse();
    procedure getSubStock();
    procedure getStockType();
    procedure getLocation();
    procedure getProdUnit();
    procedure getSupplier();
    procedure getPersonnel();
    procedure getPositions();
    procedure getCMHList();

    procedure getIssueReqType();
    procedure getProject();
    procedure getRatePrice();
    procedure getPayType();
    procedure getProductUnit(ProductCode:integer);

    procedure initAllCmb();
    procedure SetDLLParameter(const Value: TDLLParameter);

  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
  end;

var
  frmSystemSetting: TfrmSystemSetting;

implementation

uses  STDLIB, EditUnitFrm, EditUnitPackingFrm, EditProdGroupFrm,
  EditProdTypeFrm, CommonUtils, CdeLIB, EditSubStockFrm, EditWarehouseFrm,
  EditWarehouseTypeFrm, EditLocationFrm, EditSupplierFrm,
  EditIssueReqTypeFrm, EditProjectFrm, EditPersonnelFrm, EditPositionFrm,
  frmEditCommitteeEdit, EditRatePriceFrm, EditPayTypeFrm, uEditProductUnit;

{$R *.dfm}

procedure TfrmSystemSetting.FormShow(Sender: TObject);
begin


 // getRates;
  //getUnit;
  //getProdType;
  //getProdGroup;
  getProducts;
  initAllCmb;
  //getWarehouse;
  //getSubStock;
  //getStockType;
  //getLocation;
   //getProdUnit;
  //getSupplier;
   //getIssueReqType;
  //getProject;
  //getPersonnel;
  //getPositions;
  //getCMHList;
   //getRatePrice;
  //getPayType;


  pgAllClient.ActivePage:=TabSheetMTTProduct;
end;

procedure TfrmSystemSetting.getRates;
begin
  //cdsRates.Data := GetDataSet('select * from MTTRTE00');
end;

procedure TfrmSystemSetting.btnAddUnitClick(Sender: TObject);
var frmEditUnit : TfrmEditUnit;
begin
  try
    frmEditUnit := TfrmEditUnit.Create(Application);
    frmEditUnit.UnitID :=0;
    frmEditUnit.ShowModal;

    getUnit;

    cdsUnits.Locate('UNICOD',frmEditUnit.UnitID,[]);

  finally
    frmEditUnit.free;
  end;
end;

procedure TfrmSystemSetting.btnEditUnitClick(Sender: TObject);
var frmEditUnit : TfrmEditUnit;
begin
  try
    frmEditUnit := TfrmEditUnit.Create(Application);
    frmEditUnit.UnitID := cdsUnits.fieldbyname('UNICOD').AsInteger;
    frmEditUnit.ShowModal;

    getUnit;

    cdsUnits.Locate('UNICOD',frmEditUnit.UnitID,[]);
  finally
    frmEditUnit.free;
  end;
end;
procedure TfrmSystemSetting.btnAddUnitPackingClick(Sender: TObject);
var frmEditUnitPacking : TfrmEditUnitPacking;
begin
  try
    frmEditUnitPacking := TfrmEditUnitPacking.Create(Application);

    if not cdsUnits.fieldbyname('UNICOD').IsNull then
    begin
      frmEditUnitPacking.PackUniUNI:=cdsUnits.fieldbyname('UNICOD').AsInteger;
      frmEditUnitPacking.PackPacName :=cdsUnits.fieldbyname('UNINAM').AsString;
      frmEditUnitPacking.PackUniCOD:=0;
    end;

    frmEditUnitPacking.ShowModal;
    getUnitPacking(cdsUnits.fieldbyname('UNICOD').AsInteger);
    cdsUnitPackings.Locate('PACCOD',frmEditUnitPacking.PackUniCOD,[]);
  finally
    frmEditUnitPacking.Free;
  end;
end;

procedure TfrmSystemSetting.btnEditUnitPackingClick(Sender: TObject);
var frmEditUnitPacking : TfrmEditUnitPacking;
begin
  try
    frmEditUnitPacking := TfrmEditUnitPacking.Create(Application);

    if not cdsUnits.fieldbyname('UNICOD').IsNull then
    begin
      frmEditUnitPacking.PackUniUNI:=cdsUnitPackings.fieldbyname('PACUNI').AsInteger;
      frmEditUnitPacking.PackUniCOD:=cdsUnitPackings.fieldbyname('PACCOD').AsInteger;
    end;

    frmEditUnitPacking.ShowModal;
    getUnitPacking(cdsUnitPackings.fieldbyname('PACUNI').AsInteger);
    cdsUnitPackings.Locate('PACCOD',frmEditUnitPacking.PackUniCOD,[]);
  finally
    frmEditUnitPacking.Free;
  end;
end;

procedure TfrmSystemSetting.getUnit;
begin
  try
    cdsUnits.DisableControls;
    cdsUnits.Data := GetDataSet('select * from ICMTTUNI');
  finally
    cdsUnits.EnableControls;
  end;
end;

procedure TfrmSystemSetting.getUnitPacking(UNICOD:integer);
begin
  cdsUnitPackings.Data := GetDataSet('select * from ICMTTPAC where PACUNI='+IntToStr(UNICOD));
end;

procedure TfrmSystemSetting.cxGridDBTableView1DblClick(Sender: TObject);
begin
  btnEditUnitClick(sender);
end;

procedure TfrmSystemSetting.cdsUnitsAfterScroll(DataSet: TDataSet);
begin
  if not DataSet.ControlsDisabled then
    getUnitPacking(cdsUnits.fieldbyname('UNICOD').AsInteger);
end;

procedure TfrmSystemSetting.cxGridDBTableView2DblClick(Sender: TObject);
begin
  btnEditUnitPackingClick(sender);
end;

procedure TfrmSystemSetting.btnDeleteUnitClick(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox(pchar('ยืนยันลบหน่วย!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    if cdsUnitPackings.Active then
      if cdsUnitPackings.RecordCount>0 then
      begin
        for i := 0 to cdsUnitPackings.RecordCount -1 do
          begin
             cdsUnitPackings.Delete;
             if not cdsUnitPackings.Eof then cdsUnitPackings.Next;
          end;

        if cdsUnitPackings.ChangeCount>0 then
          UpdateDataset(cdsUnitPackings,'select * from ICMTTPAC limit 0');

      end;

    cdsUnits.Delete;
    if cdsUnits.ChangeCount>0 then
      UpdateDataset(cdsUnits,'select * from ICMTTUNI limit 0');

    getUnit;


  end;
end;

procedure TfrmSystemSetting.getProdGroup;
begin
  cdsProdGroups.Data := GetDataSet('select * from ICMTTPGR');
end;

procedure TfrmSystemSetting.getProdType;
begin
  cdsProdTypes.Data := GetDataSet('select * from ICMTTPTY');
end;

procedure TfrmSystemSetting.btnAddProdtypeClick(Sender: TObject);
var frmEditProdType : TfrmEditProdType;
begin
  try
    frmEditProdType := TfrmEditProdType.Create(Application);
    frmEditProdType.ProdTypeCode :=0;
    frmEditProdType.ShowModal;

    getProdType;

    cdsProdTypes.Locate('PTYCOD',frmEditProdType.ProdTypeCode,[]);

  finally
    frmEditProdType.free;
  end;
end;

procedure TfrmSystemSetting.btnAddProdGroupClick(Sender: TObject);
var frmEditProdGroup : TfrmEditProdGroup;
begin
  try
    frmEditProdGroup := TfrmEditProdGroup.Create(Application);
    frmEditProdGroup.ProdGroupCode :=0;
    frmEditProdGroup.ShowModal;

    getProdGroup;

    cdsProdGroups.Locate('PGRCOD',frmEditProdGroup.ProdGroupCode,[]);

  finally
    frmEditProdGroup.free;
  end;
end;

procedure TfrmSystemSetting.btnEditProdGroupClick(Sender: TObject);
var frmEditProdGroup : TfrmEditProdGroup;
begin
  try
    frmEditProdGroup := TfrmEditProdGroup.Create(Application);
    frmEditProdGroup.ProdGroupCode :=cdsProdGroups.fieldbyname('PGRCOD').AsInteger;
    frmEditProdGroup.ShowModal;

    getProdGroup;

    cdsProdGroups.Locate('PGRCOD',frmEditProdGroup.ProdGroupCode,[]);

  finally
    frmEditProdGroup.free;
  end;
end;

procedure TfrmSystemSetting.btnEditProdtypeClick(Sender: TObject);
var frmEditProdType : TfrmEditProdType;
begin
  try
    frmEditProdType := TfrmEditProdType.Create(Application);
    frmEditProdType.ProdTypeCode :=cdsProdTypes.fieldbyname('PTYCOD').AsInteger;
    frmEditProdType.ShowModal;

    getProdType;

    cdsProdTypes.Locate('PTYCOD',frmEditProdType.ProdTypeCode,[]);

  finally
    frmEditProdType.free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView3DblClick(Sender: TObject);
begin
  btnEditProdtypeClick(sender);
end;

procedure TfrmSystemSetting.cxGridDBTableView4DblClick(Sender: TObject);
begin
  btnEditProdGroupClick(sender);
end;

procedure TfrmSystemSetting.btnDeleteProdtypeClick(Sender: TObject);
begin
  if cdsProdTypes.Active then
    if cdsProdTypes.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบประเภทสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsProdTypes.Delete;
    if cdsProdTypes.ChangeCount>0 then
      UpdateDataset(cdsProdTypes,'select * from ICMTTPTY limit 0');
    getProdType;
  end;
end;

procedure TfrmSystemSetting.btnDeleteProdGroupClick(Sender: TObject);
begin
  if cdsProdGroups.Active then
    if cdsProdGroups.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบกลุ่มสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsProdGroups.Delete;
    if cdsProdGroups.ChangeCount>0 then
      UpdateDataset(cdsProdGroups,'select * from ICMTTPGR limit 0');
    getProdGroup;
  end;
end;

procedure TfrmSystemSetting.getProducts(mode:integer);
var strsql,PRDTYP,PRDGRP:string;
begin

   if mode=1 then
   begin

    PRDTYP := TString(cmbSearchProdType.Items.Objects[cmbSearchProdType.ItemIndex]).Str;
    PRDGRP := TString(cmbSearchProdGroup.Items.Objects[cmbSearchProdGroup.ItemIndex]).Str;

    strsql :='select a.*,bb.PRUACT from ICMTTPRD a '+//
  ' left join ( '+
  '	 select b.PRUPRD,''A'' as PRUACT from ICMTTPRU b group by b.PRUPRD '+
  ' ) bb on a.PRDCOD=bb.PRUPRD '+
  ' where  (  ( a.PRDTYP='+PRDTYP+'  and '+PRDTYP+'<>0 ) or  ( a.PRDTYP<>'+PRDTYP+' and '+PRDTYP+'=0) )  '+
  ' and   ( ( a.PRDGRP='+PRDGRP+' and  '+PRDGRP+'<>0 ) or ( a.PRDGRP<>'+PRDGRP+' and  '+PRDGRP+'=0 )  ) '+
  ' and ( a.PRDCDE like ''%'+edSearch.text+'%''  or a.PRDNAT like ''%'+edSearch.text+'%''  or a.PRDNAE like ''%'+edSearch.text+'%'')';
  //InputBox('','',strsql);
    cdsProducts.Data := GetDataSet(strsql);
  end else
    cdsProducts.Data := GetDataSet(
      'select a.*,bb.PRUACT from ICMTTPRD a ' +
  ' left join ( '+
  '	 select b.PRUPRD,''A'' as PRUACT from ICMTTPRU b group by b.PRUPRD '+
  ' ) bb on a.PRDCOD=bb.PRUPRD '
    );
end;

procedure TfrmSystemSetting.initAllCmb;
var i:integer;
begin
  // init product type combobox
  getProdType;
  getProdGroup;
  cmbProdType.ItemIndex         := loadCmbItems(cmbProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM',cdsProducts.fieldbyname('PRDTYP').AsString);
  cmbProdGroup.ItemIndex        := loadCmbItems(cmbProdGroup.Items,cdsProdGroups,'PGRCOD','PGRNAM',cdsProducts.fieldbyname('PRDGRP').AsString);
  cmbSearchProdType.ItemIndex   := loadCmbItems(cmbSearchProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM','9999');
  cmbSearchProdGroup.ItemIndex  := loadCmbItems(cmbSearchProdGroup.Items,cdsProdGroups,'PGRCOD','PGRNAM','9999');

{  if cdsProdTypes.Active then
    if cdsProdTypes.RecordCount>0 then
    begin
      cmbProdType.Items.Clear;
      cdsProdTypes.First;
      for i:=0 to cdsProdTypes.RecordCount-1 do
      begin
        cmbProdType.Items.AddObject(cdsProdTypes.fieldbyname('PTYNAM').AsString,TString.Create(trim(cdsProdTypes.fieldbyname('PTYCOD').AsString)));
        if not cdsProdTypes.Eof then cdsProdTypes.Next;
      end;
    end;
    }

end;

procedure TfrmSystemSetting.btnNewProdClick(Sender: TObject);
begin
  if cdsProducts.State in [dsedit,dsinsert] then
  begin
    if Application.MessageBox(pchar('ยืนยันยกเลิกการแก้ไขปัจจุบัน และทำการเพิ่มรายการใหม่ !!!'),pchar('Warning'),MB_YESNO or MB_ICONWARNING)=mrYes then
      cdsProducts.Cancel
    else Exit;
  end;

  cdsProducts.Append;
  pgProductData.ActivePage := TabProductData;

end;

procedure TfrmSystemSetting.btnSaveProdClick(Sender: TObject);
var IsNew : boolean;
begin
  try
    cdsProducts.DisableControls;

    IsNew := false;

    if Application.MessageBox(pchar('ยืนยันบันทึกรายการ?'),pchar('Confirm'),MB_OKCANCEL or MB_ICONINFORMATION)<>mrOk then Exit;


    if cdsProducts.State in [dsinsert] then
    begin
      IsNew := true;
      cdsProducts.FieldByName('PRDCOD').AsInteger :=getCdeRun('SETTING','RUNNING','PRDCOD','CDENM1');
      if cdsProducts.FieldByName('PRDACT').IsNull then
          cdsProducts.FieldByName('PRDACT').AsString:='A';

      cdsProducts.FieldByName('PRDREG').AsDateTime := getServerDate;
      setEntryUSRDT(cdsProducts,FDLLParameter.UserID);

    end;

    if cdsProducts.State in [dsinsert,dsedit] then
    begin
      cdsProducts.FieldByName('PRDTYP').AsInteger := StrToInt(TString(cmbProdType.Items.Objects[cmbProdType.ItemIndex]).Str);
      cdsProducts.FieldByName('PRDGRP').AsInteger := StrToInt(TString(cmbProdGroup.Items.Objects[cmbProdGroup.ItemIndex]).Str);
      cdsProducts.FieldByName('PRDMRA').AsInteger := StrToInt(TString(cmbMainUnit.Items.Objects[cmbMainUnit.ItemIndex]).Str);
      cdsProducts.FieldByName('PRDUNI').AsInteger := StrToInt(TString(cmbProdUnit.Items.Objects[cmbProdUnit.ItemIndex]).Str);

      setModifyUSRDT(cdsProducts,FDLLParameter.UserID);

    end;



    if cdsProducts.State in [dsedit,dsinsert] then cdsProducts.Post;
    if cdsProducts.ChangeCount>0 then
    begin

      if cdsProducts.FieldByName('PRDPOD').AsInteger<=0 then
      begin
        Application.MessageBox(pchar('รหัสสินค้าผิดพลาดไม่สามารถทำการบันทึกได้!!!'),pchar('Error'),MB_OK or MB_ICONWARNING);
        Exit;
      end;

      UpdateDataset(cdsProducts,'select * from ICMTTPRD limit 0') ;
      if IsNew then
        setCdeRun('SETTING','RUNNING','PRDCOD','CDENM1');

      //Application.MessageBox(pchar('Save Successfull.'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);
      pgProductData.ActivePage:=TabProductList;
    end;

  finally
    pgProductData.ActivePage := TabProductList;
    cdsProducts.EnableControls;
  end;
end;

procedure TfrmSystemSetting.cmbProdTypeChange(Sender: TObject);
begin
    // need fixed for new row insert
    if not (cdsProducts.State in [dsedit,dsinsert]) then cdsProducts.Edit;
end;

procedure TfrmSystemSetting.cmbProdGroupChange(Sender: TObject);
begin
    // need fixed for new row insert
    if not (cdsProducts.State in [dsedit,dsinsert]) then cdsProducts.Edit;
end;

procedure TfrmSystemSetting.spbtnRefreshProdTypeClick(Sender: TObject);
begin

  cmbProdType.ItemIndex:= loadCmbItems(cmbProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM',cdsProducts.fieldbyname('PRDTYP').AsString);
end;

procedure TfrmSystemSetting.spbtnRefreshProdGroupClick(Sender: TObject);
begin
  cmbProdGroup.ItemIndex := loadCmbItems(cmbProdGroup.Items,cdsProdGroups,'PGRCOD','PGRNAM',cdsProducts.fieldbyname('PRDGRP').AsString);
end;

procedure TfrmSystemSetting.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmSystemSetting.cdsProductsAfterScroll(DataSet: TDataSet);
begin

  if not DataSet.ControlsDisabled then
  begin
    cmbProdType.ItemIndex:= loadCmbItems(cmbProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM',cdsProducts.fieldbyname('PRDTYP').AsString);
    cmbProdGroup.ItemIndex := loadCmbItems(cmbProdGroup.Items,cdsProdGroups,'PGRCOD','PGRNAM',cdsProducts.fieldbyname('PRDGRP').AsString);

    getProdUnit;
    getProductUnit(cdsProducts.fieldbyname('PRDCOD').AsInteger);
    //cmbMainUnit.ItemIndex:= loadCmbItems(cmbMainUnit.Items,cdsProdUnit,'PACCOD','PACNAM',cdsProducts.fieldbyname('PRDMRA').AsString);
    //cmbProdUnit.ItemIndex:= loadCmbItems(cmbProdUnit.Items,cdsProdUnit,'UNICOD','UNINAM',cdsProducts.fieldbyname('PRDUNI').AsString);
  end;

end;

procedure TfrmSystemSetting.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
end;

procedure TfrmSystemSetting.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    if ( not (ActiveControl is TRzButton) )
      and ( not (ActiveControl is TRzDBMemo) )
    then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End;
end;

procedure TfrmSystemSetting.getWarehouse;
begin
  cdsWarehouses.Data := GetDataSet('select * from ICMTTWH0');
end;

procedure TfrmSystemSetting.btnAddWarehouseClick(Sender: TObject);
var
  frmEditWarehouse : TfrmEditWarehouse;
begin
  try
    frmEditWarehouse := TfrmEditWarehouse.Create(Application);
    frmEditWarehouse.WarehouseCode := 0;
    frmEditWarehouse.AppParameter := FDLLParameter;
    frmEditWarehouse.ShowModal;

    getWarehouse;
    cdsWarehouses.Locate('WH0COD',frmEditWarehouse.WarehouseCode,[]);
    
  finally
    frmEditWarehouse.Free;
  end;

end;

procedure TfrmSystemSetting.btnEditWarehouseClick(Sender: TObject);
var
  frmEditWarehouse : TfrmEditWarehouse;
begin
  try
    frmEditWarehouse := TfrmEditWarehouse.Create(Application);
    frmEditWarehouse.WarehouseCode := cdsWarehouses.FieldByName('WH0COD').AsInteger;
    frmEditWarehouse.AppParameter := FDLLParameter;
    frmEditWarehouse.ShowModal;

    getWarehouse;
    cdsWarehouses.Locate('WH0COD',frmEditWarehouse.WarehouseCode,[]);
    
  finally
    frmEditWarehouse.Free;
  end;

end;

procedure TfrmSystemSetting.cxGridDBTableView5DblClick(Sender: TObject);
begin
  btnEditWarehouseClick(sender);
end;

procedure TfrmSystemSetting.getSubStock;
begin
  cdsSubStocks.Data := GetDataSet(' select * from ICMTTWH1');
end;

procedure TfrmSystemSetting.btnAddSubStockClick(Sender: TObject);
var frmEditSubStock : TfrmEditSubStock;
begin
  try
    frmEditSubStock := TfrmEditSubStock.Create(Application);
    frmEditSubStock.SubStockCode := 0;
    frmEditSubStock.AppParameter := FDLLParameter;
    frmEditSubStock.ShowModal;

    getSubStock;
    cdsSubStocks.Locate('WH1COD',frmEditSubStock.SubStockCode,[]);

  finally
    frmEditSubStock.Free;
  end;
end;

procedure TfrmSystemSetting.btnEditSubStockClick(Sender: TObject);
var frmEditSubStock : TfrmEditSubStock;
begin
  try
    frmEditSubStock := TfrmEditSubStock.Create(Application);
    frmEditSubStock.SubStockCode := cdsSubStocks.FieldByName('WH1COD').AsInteger;
    frmEditSubStock.AppParameter := FDLLParameter;
    frmEditSubStock.ShowModal;

    getSubStock;
    cdsSubStocks.Locate('WH1COD',frmEditSubStock.SubStockCode,[]);

  finally
    frmEditSubStock.Free;
  end;
end;
procedure TfrmSystemSetting.cxGridDBTableView6DblClick(Sender: TObject);
begin
  btnEditSubStockClick(nil);
end;

procedure TfrmSystemSetting.getStockType;
begin
  cdsStockTypes.Data := GetDataSet('select * from ICMTTWTY');
end;

procedure TfrmSystemSetting.btnAddWarehouseTypeClick(Sender: TObject);
var frmEditWarehouseType : TfrmEditWarehouseType;
begin
  try
    frmEditWarehouseType := TfrmEditWarehouseType.Create(Application);
    frmEditWarehouseType.StockTypeCode := 0;
    frmEditWarehouseType.AppParameter := FDLLParameter;
    frmEditWarehouseType.ShowModal;

    getStockType;
    cdsStockTypes.Locate('WTYCOD',frmEditWarehouseType.StockTypeCode,[]);

  finally
    frmEditWarehouseType.Free;
  end;
end;

procedure TfrmSystemSetting.btnEditWarehouseTypeClick(Sender: TObject);
var frmEditWarehouseType : TfrmEditWarehouseType;
begin
  try
    frmEditWarehouseType := TfrmEditWarehouseType.Create(Application);
    frmEditWarehouseType.StockTypeCode := cdsStockTypes.fieldbyname('WTYCOD').AsInteger;
    frmEditWarehouseType.AppParameter := FDLLParameter;
    frmEditWarehouseType.ShowModal;

    getStockType;
    cdsStockTypes.Locate('WTYCOD',frmEditWarehouseType.StockTypeCode,[]);

  finally
    frmEditWarehouseType.Free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView7DblClick(Sender: TObject);
begin
  btnEditWarehouseTypeClick(sender);
end;

procedure TfrmSystemSetting.btnDeleteWarehouseClick(Sender: TObject);
begin
  if not btnDeleteWarehouse.Enabled then Exit;

  if cdsWarehouses.Active then
    if cdsWarehouses.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบคลังสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsWarehouses.Delete;
    if cdsWarehouses.ChangeCount>0 then
      UpdateDataset(cdsWarehouses,'select * from ICMTTWH0 limit 0');
    getWarehouse;
  end;
end;

procedure TfrmSystemSetting.cdsWarehousesAfterScroll(DataSet: TDataSet);
begin
  btnDeleteWarehouse.Enabled := ( DataSet.FieldByName('WH0FL1').AsString='N');
end;

procedure TfrmSystemSetting.btnDeleteSubStockClick(Sender: TObject);
begin
  if not btnDeleteSubStock.Enabled then Exit;

  if cdsSubStocks.Active then
    if cdsSubStocks.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบคลังสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsSubStocks.Delete;
    if cdsSubStocks.ChangeCount>0 then
      UpdateDataset(cdsSubStocks,'select * from ICMTTWH1 limit 0');
    getSubStock;
  end;
end;

procedure TfrmSystemSetting.cdsSubStocksAfterScroll(DataSet: TDataSet);
begin
  btnDeleteSubStock.Enabled := ( DataSet.FieldByName('WH1FL1').AsString='N');
end;

procedure TfrmSystemSetting.btnDeleteWarehouseTypeClick(Sender: TObject);
begin
  if not btnDeleteWarehouseType.Enabled then Exit;

  if cdsStockTypes.Active then
    if cdsStockTypes.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบประเภทคลังสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsStockTypes.Delete;
    if cdsStockTypes.ChangeCount>0 then
      UpdateDataset(cdsStockTypes,'select * from ICMTTWTY limit 0');
    getStockType;
  end;
end;

procedure TfrmSystemSetting.cdsStockTypesAfterScroll(DataSet: TDataSet);
begin
  btnDeleteWarehouseType.Enabled := ( DataSet.FieldByName('WTYFL1').AsString='N');
end;

procedure TfrmSystemSetting.btnAddLocationClick(Sender: TObject);
var frmEditLocation : TfrmEditLocation;
begin
  try
    frmEditLocation := TfrmEditLocation.Create(Application);
    frmEditLocation.LocationCode := 0;
    frmEditLocation.AppParameter := FDLLParameter;
    frmEditLocation.ShowModal;

    getLocation;
    cdsLocations.Locate('LOCCOD',frmEditLocation.LocationCode,[]);

  finally
    frmEditLocation.Free;
  end;
end;

procedure TfrmSystemSetting.getLocation;
begin
  cdsLocations.Data := GetDataSet('select * from ICMTTLOC');
end;

procedure TfrmSystemSetting.btnEditLocationClick(Sender: TObject);
var frmEditLocation : TfrmEditLocation;
begin
  try
    frmEditLocation := TfrmEditLocation.Create(Application);
    frmEditLocation.LocationCode := cdsLocations.fieldbyname('LOCCOD').AsInteger;
    frmEditLocation.AppParameter := FDLLParameter;
    frmEditLocation.ShowModal;

    getLocation;
    cdsLocations.Locate('LOCCOD',frmEditLocation.LocationCode,[]);

  finally
    frmEditLocation.Free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView8DblClick(Sender: TObject);
begin
  btnEditLocationClick(sender);
end;

procedure TfrmSystemSetting.btnDeleteLocationClick(Sender: TObject);
begin
  if not btnDeleteLocation.Enabled then Exit;

  if cdsLocations.Active then
    if cdsLocations.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบ ตำแหน่งจัดเก็บสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsLocations.Delete;
    if cdsLocations.ChangeCount>0 then
      UpdateDataset(cdsLocations,'select * from ICMTTLOC limit 0');
    getLocation;
  end;
end;

procedure TfrmSystemSetting.cdsLocationsAfterScroll(DataSet: TDataSet);
begin
  btnDeleteLocation.Enabled := ( DataSet.FieldByName('LOCFL1').AsString='N');
end;

procedure TfrmSystemSetting.getProdUnit;
begin

    cdsProdUnit.Data := GetDataSet('select * from ICMTTPAC where PACFLG=''Y'' order by PACNAM');
    if cdsProdUnit.Active then
      if cdsProdUnit.RecordCount>0 then
      begin
        cmbMainUnit.Items.Clear;
        cmbMainUnit.ItemIndex:= loadCmbItems(cmbMainUnit.Items,cdsProdUnit,'PACCOD','PACNAM',cdsProducts.fieldbyname('PRDMRA').AsString);
      end;

    cdsProdUnit.Data := GetDataSet('select * from ICMTTUNI where UNIACT=''A'' order by UNINAM');
    if cdsProdUnit.Active then
      if cdsProdUnit.RecordCount>0 then
      begin
        cmbProdUnit.Items.Clear;
        cmbProdUnit.ItemIndex:= loadCmbItems(cmbProdUnit.Items,cdsProdUnit,'UNICOD','UNINAM',cdsProducts.fieldbyname('PRDUNI').AsString);
      end;


end;

procedure TfrmSystemSetting.cmbMainUnitChange(Sender: TObject);
begin
 if not (cdsProducts.State in [dsedit,dsinsert]) then cdsProducts.Edit;
end;

procedure TfrmSystemSetting.cmbProdUnitChange(Sender: TObject);
begin
 if not (cdsProducts.State in [dsedit,dsinsert]) then cdsProducts.Edit;
end;

procedure TfrmSystemSetting.getSupplier;
begin
    cdsSuppliers.Data := GetDataSet('select * from ICMTTSUP where SUPACT=''A'' order by SUPNAM');
end;

procedure TfrmSystemSetting.btnAddSupplierClick(Sender: TObject);
var frmEditSupplier : TfrmEditSupplier;
begin
  try
    frmEditSupplier := TfrmEditSupplier.Create(Application);
    frmEditSupplier.SupplierCode :=0;
    frmEditSupplier.ShowModal;

    getSupplier;

    cdsSuppliers.Locate('SUPCOD',frmEditSupplier.SupplierCode,[]);

  finally
    frmEditSupplier.free;
  end;
end;

procedure TfrmSystemSetting.btnEditSupplierClick(Sender: TObject);
var frmEditSupplier : TfrmEditSupplier;
begin
  try
    frmEditSupplier := TfrmEditSupplier.Create(Application);
    frmEditSupplier.SupplierCode :=cdsSuppliers.fieldbyname('SUPCOD').AsInteger;
    frmEditSupplier.ShowModal;

    getSupplier;

    cdsSuppliers.Locate('SUPCOD',frmEditSupplier.SupplierCode,[]);

  finally
    frmEditSupplier.free;
  end;
end;

procedure TfrmSystemSetting.btnDeleteSupplierClick(Sender: TObject);
begin
  if cdsSuppliers.Active then
    if cdsSuppliers.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบตัวแทนจำหน่าย!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsSuppliers.Delete;
    if cdsSuppliers.ChangeCount>0 then
      UpdateDataset(cdsSuppliers,'select * from ICMTTSUP limit 0');
    getSupplier;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView9DblClick(Sender: TObject);
begin
  btnEditSupplierClick(sender);
end;

procedure TfrmSystemSetting.btnAddIssueReqTypeClick(Sender: TObject);
var frmEditIssueRegTyp : TfrmEditIssueReqType;
begin
  try
    frmEditIssueRegTyp := TfrmEditIssueReqType.Create(Application);
    frmEditIssueRegTyp.IssueReqTypCode := 0;
    frmEditIssueRegTyp.AppParameter := FDLLParameter;
    frmEditIssueRegTyp.ShowModal;

    getIssueReqType;
    cdsIssueReqType.Locate('IRTCOD',frmEditIssueRegTyp.IssueReqTypCode,[]);

  finally
    frmEditIssueRegTyp.Free;
  end;
end;

procedure TfrmSystemSetting.getIssueReqType;
begin
  cdsIssueReqType.Data:=GetDataSet('select * from ICMTTIRT');
end;

procedure TfrmSystemSetting.btnEditIssueReqTypeClick(Sender: TObject);
var frmEditIssueRegTyp : TfrmEditIssueReqType;
begin
  try
    frmEditIssueRegTyp := TfrmEditIssueReqType.Create(Application);
    frmEditIssueRegTyp.IssueReqTypCode := cdsIssueReqType.fieldbyname('IRTCOD').AsInteger;
    frmEditIssueRegTyp.AppParameter := FDLLParameter;
    frmEditIssueRegTyp.ShowModal;

    getIssueReqType;
    cdsIssueReqType.Locate('IRTCOD',frmEditIssueRegTyp.IssueReqTypCode,[]);

  finally
    frmEditIssueRegTyp.Free;
  end;
end;

procedure TfrmSystemSetting.btnDeleteIssueReqTypeClick(Sender: TObject);
begin
  if not btnDeleteIssueReqType.Enabled then Exit;

  if cdsIssueReqType.Active then
    if cdsIssueReqType.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบ ประเภทขอเบิกสินค้า!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsIssueReqType.Delete;
    if cdsIssueReqType.ChangeCount>0 then
      UpdateDataset(cdsIssueReqType,'select * from ICMTTIRT limit 0');
    getIssueReqType;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView10DblClick(Sender: TObject);
begin
  btnEditIssueReqTypeClick(sender);
end;

procedure TfrmSystemSetting.btnAddProjectClick(Sender: TObject);
var frmEditProject : TfrmEditProject;
begin
  try
    frmEditProject := TfrmEditProject.Create(Application);
    frmEditProject.ProjectCode := 0;
    frmEditProject.AppParameter := FDLLParameter;
    frmEditProject.ShowModal;

    getProject;
    cdsProject.Locate('JOBCOD',frmEditProject.ProjectCode,[]);

  finally
    frmEditProject.Free;
  end;
end;

procedure TfrmSystemSetting.getProject;
begin
  cdsProject.Data := GetDataSet('select * from ICMTTJOB');
end;

procedure TfrmSystemSetting.btnEditProjectClick(Sender: TObject);
var frmEditProject : TfrmEditProject;
begin
  try
    frmEditProject := TfrmEditProject.Create(Application);
    frmEditProject.ProjectCode := cdsProject.fieldbyname('JOBCOD').AsInteger;
    frmEditProject.AppParameter := FDLLParameter;
    frmEditProject.ShowModal;

    getProject;
    cdsProject.Locate('JOBCOD',frmEditProject.ProjectCode,[]);

  finally
    frmEditProject.Free;
  end;
end;

procedure TfrmSystemSetting.btnDeleteProjectClick(Sender: TObject);
begin
  if not btnDeleteProject.Enabled then Exit;

  if cdsProject.Active then
    if cdsProject.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบ โครงการ!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsProject.Delete;
    if cdsProject.ChangeCount>0 then
      UpdateDataset(cdsProject,'select * from ICMTTJOB limit 0');
    getProject;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView11DblClick(Sender: TObject);
begin
  btnEditProjectClick(sender);
end;

procedure TfrmSystemSetting.btnAddPositionClick(Sender: TObject);
var frmEditPosition : TfrmEditPosition;
begin
  try
    frmEditPosition := TfrmEditPosition.Create(Application);
    frmEditPosition.PositionCode := 0;
    frmEditPosition.AppParameter := FDLLParameter;
    frmEditPosition.ShowModal;

    getPositions;
    cdsPositions.Locate('POSCOD',frmEditPosition.PositionCode,[]);

  finally
    frmEditPosition.Free;
  end;
end;

procedure TfrmSystemSetting.getPersonnel;
begin
    cdsPersonnels.Data := GetDataSet('select per.*,pos.POSCOD,pos.POSNAM from ICMTTPER per , ICMTTPOS pos where pos.POSCOD=per.PERPOS');
end;

procedure TfrmSystemSetting.getPositions;
begin
    cdsPositions.Data := GetDataSet('select * from ICMTTPOS');
end;

procedure TfrmSystemSetting.btnAddPersonnelClick(Sender: TObject);
var frmEditPersonnel : TfrmEditPersonnel;
begin
  try
    frmEditPersonnel := TfrmEditPersonnel.Create(Application);
    frmEditPersonnel.PersonnelCode := 0;
    frmEditPersonnel.AppParameter := FDLLParameter;
    frmEditPersonnel.ShowModal;

    getPersonnel;
    cdsPersonnels.Locate('PERCOD',frmEditPersonnel.PersonnelCode,[]);

  finally
    frmEditPersonnel.Free;
  end;
end;

procedure TfrmSystemSetting.btnEditPersonnelClick(Sender: TObject);
var frmEditPersonnel : TfrmEditPersonnel;
begin
  try
    frmEditPersonnel := TfrmEditPersonnel.Create(Application);
    frmEditPersonnel.PersonnelCode := cdsPersonnels.fieldbyname('PERCOD').AsInteger;
    frmEditPersonnel.AppParameter := FDLLParameter;
    frmEditPersonnel.ShowModal;

    getPersonnel;
    cdsPersonnels.Locate('PERCOD',frmEditPersonnel.PersonnelCode,[]);

  finally
    frmEditPersonnel.Free;
  end;
end;

procedure TfrmSystemSetting.btnEditPositionClick(Sender: TObject);
var frmEditPosition : TfrmEditPosition;
begin
  try
    frmEditPosition := TfrmEditPosition.Create(Application);
    frmEditPosition.PositionCode := cdsPositions.fieldbyname('POSCOD').AsInteger;
    frmEditPosition.AppParameter := FDLLParameter;
    frmEditPosition.ShowModal;

    getPositions;
    cdsPositions.Locate('POSCOD',frmEditPosition.PositionCode,[]);

  finally
    frmEditPosition.Free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView14DblClick(Sender: TObject);
begin
  btnEditPositionClick(sender);
end;

procedure TfrmSystemSetting.cxGridDBTableView15DblClick(Sender: TObject);
begin
  btnEditPersonnelClick(sender);
end;

procedure TfrmSystemSetting.btnDeletePersonnelClick(Sender: TObject);
begin
  if not btnDeletePersonnel.Enabled then Exit;

  if cdsPersonnels.Active then
    if cdsPersonnels.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบ!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsPersonnels.Delete;
    if cdsPersonnels.ChangeCount>0 then
      UpdateDataset(cdsPersonnels,'select * from ICMTTPER limit 0');
    getPersonnel;
  end;
end;

procedure TfrmSystemSetting.btnDeletePositionClick(Sender: TObject);
begin
  if not btnDeletePosition.Enabled then Exit;

  if cdsPositions.Active then
    if cdsPositions.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบตำแหน่ง!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsPositions.Delete;
    if cdsPositions.ChangeCount>0 then
      UpdateDataset(cdsPositions,'select * from ICMTTPOS limit 0');
    getPositions;
  end;
end;


procedure TfrmSystemSetting.btnAddExaminationCommitteeClick(
  Sender: TObject);
var frmEditCommittee : TfrmEditCommittee;
begin
  try
    frmEditCommittee := TfrmEditCommittee.Create(Application);
    frmEditCommittee.CMHType:=1;
    frmEditCommittee.CMHCode:=0;
    frmEditCommittee.AppParameter := FDLLParameter;
    frmEditCommittee.ShowModal;

    getCMHList;
    cdsCMHListA.Locate('CMHCOD',frmEditCommittee.CMHCode,[]);

  finally
    frmEditCommittee.Free;
  end;
end;

procedure TfrmSystemSetting.getCMHList;
begin
  cdsCMHListA.Data := GetDataSet('select * from ICMTTCMH where CMHTYP=1');
  cdsCMHListB.Data := GetDataSet('select * from ICMTTCMH where CMHTYP=2');
end;

procedure TfrmSystemSetting.btnEditExaminationCommitteeClick(
  Sender: TObject);
var frmEditCommittee : TfrmEditCommittee;
begin
  try
    frmEditCommittee := TfrmEditCommittee.Create(Application);
    frmEditCommittee.CMHType:=cdsCMHListA.fieldbyname('CMHTYP').AsInteger;
    frmEditCommittee.CMHCode:=cdsCMHListA.fieldbyname('CMHCOD').AsInteger;
    frmEditCommittee.AppParameter := FDLLParameter;
    frmEditCommittee.ShowModal;

    getCMHList;
    cdsCMHListA.Locate('CMHCOD',frmEditCommittee.CMHCode,[]);

  finally
    frmEditCommittee.Free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView12DblClick(Sender: TObject);
begin
  btnEditExaminationCommitteeClick(sender);
end;

procedure TfrmSystemSetting.btnAddAuditCommitteeClick(Sender: TObject);
var frmEditCommittee : TfrmEditCommittee;
begin
  try
    frmEditCommittee := TfrmEditCommittee.Create(Application);
    frmEditCommittee.CMHType:=2;
    frmEditCommittee.CMHCode:=0;
    frmEditCommittee.AppParameter := FDLLParameter;
    frmEditCommittee.ShowModal;

    getCMHList;
    cdsCMHListA.Locate('CMHCOD',frmEditCommittee.CMHCode,[]);

  finally
    frmEditCommittee.Free;
  end;
end;

procedure TfrmSystemSetting.btnEditAuditCommitteeClick(Sender: TObject);
var frmEditCommittee : TfrmEditCommittee;
begin
  try
    frmEditCommittee := TfrmEditCommittee.Create(Application);
    frmEditCommittee.CMHType:=cdsCMHListB.fieldbyname('CMHTYP').AsInteger;
    frmEditCommittee.CMHCode:=cdsCMHListB.fieldbyname('CMHCOD').AsInteger;
    frmEditCommittee.AppParameter := FDLLParameter;
    frmEditCommittee.ShowModal;

    getCMHList;
    cdsCMHListB.Locate('CMHCOD',frmEditCommittee.CMHCode,[]);

  finally
    frmEditCommittee.Free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView13DblClick(Sender: TObject);
begin
  btnEditAuditCommitteeClick(sender);
end;

procedure TfrmSystemSetting.btnAddRatePriceClick(Sender: TObject);
var frmEditRatePrice : TfrmEditRatePrice;
begin
  try
    frmEditRatePrice := TfrmEditRatePrice.Create(Application);
    frmEditRatePrice.RatePriceCode := 0;
    frmEditRatePrice.AppParameter := FDLLParameter;
    frmEditRatePrice.ShowModal;

    getRatePrice;
    cdsRatePrices.Locate('RA1COD',frmEditRatePrice.RatePriceCode,[]);

  finally
    frmEditRatePrice.Free;
  end;
end;

procedure TfrmSystemSetting.getRatePrice;
begin
  cdsRatePrices.Data := GetDataSet('select * from ICMTTRA1');
end;

procedure TfrmSystemSetting.btnDeleteRatePriceClick(Sender: TObject);
begin
  if not btnDeleteRatePrice.Enabled then Exit;

  if cdsRatePrices.Active then
    if cdsRatePrices.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบ!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsRatePrices.Delete;
    if cdsRatePrices.ChangeCount>0 then
      UpdateDataset(cdsRatePrices,'select * from ICMTTRA1 limit 0');
    getRatePrice;
  end;
end;


procedure TfrmSystemSetting.btnEditRatePriceClick(Sender: TObject);
var frmEditRatePrice : TfrmEditRatePrice;
begin
  try
    frmEditRatePrice := TfrmEditRatePrice.Create(Application);
    frmEditRatePrice.RatePriceCode := cdsRatePrices.FieldByName('RA1COD').AsInteger;
    frmEditRatePrice.AppParameter := FDLLParameter;
    frmEditRatePrice.ShowModal;

    getRatePrice;
    cdsRatePrices.Locate('RA1COD',frmEditRatePrice.RatePriceCode,[]);

  finally
    frmEditRatePrice.Free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView16DblClick(Sender: TObject);
begin
  btnEditPayTypeClick(sender);
end;

procedure TfrmSystemSetting.btnAddPayTypeClick(Sender: TObject);
var frmEditPayType : TfrmEditPayType;
begin
  try
    frmEditPayType := TfrmEditPayType.Create(Application);
    frmEditPayType.PayTypeCode := 0;
    frmEditPayType.AppParameter := FDLLParameter;
    frmEditPayType.ShowModal;

    getPayType;
    cdsPayTypes.Locate('PATCOD',frmEditPayType.PayTypeCode,[]);

  finally
    frmEditPayType.Free;
  end;
end;

procedure TfrmSystemSetting.getPayType;
begin
  cdsPayTypes.Data := GetDataSet('select * from ICMTTPAT');
end;

procedure TfrmSystemSetting.btnEditPayTypeClick(Sender: TObject);
var frmEditPayType : TfrmEditPayType;
begin
  try
    frmEditPayType := TfrmEditPayType.Create(Application);
    frmEditPayType.PayTypeCode := cdsPayTypes.fieldbyname('PATCOD').AsInteger;
    frmEditPayType.AppParameter := FDLLParameter;
    frmEditPayType.ShowModal;

    getPayType;
    cdsPayTypes.Locate('PATCOD',frmEditPayType.PayTypeCode,[]);

  finally
    frmEditPayType.Free;
  end;
end;

procedure TfrmSystemSetting.btnDeletePayTypeClick(Sender: TObject);
begin
  if not btnDeletePayType.Enabled then Exit;

  if cdsPayTypes.Active then
    if cdsPayTypes.RecordCount>0 then
  if Application.MessageBox(pchar('ยืนยันลบ!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    cdsPayTypes.Delete;
    if cdsPayTypes.ChangeCount>0 then
      UpdateDataset(cdsPayTypes,'select * from ICMTTPAT limit 0');
    getPayType;
  end;
end;

procedure TfrmSystemSetting.btnDeleteUnitPackingClick(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox(pchar('ยืนยันลบขนาดบรรจุ!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    if cdsUnitPackings.Active then
      if cdsUnitPackings.RecordCount>0 then
      begin
        cdsUnitPackings.Delete;
        if cdsUnitPackings.ChangeCount>0 then
          UpdateDataset(cdsUnitPackings,'select * from ICMTTPAC limit 0');
      end;

//    getUnit;


  end;
end;

procedure TfrmSystemSetting.SpeedButton1Click(Sender: TObject);
begin
  getProdUnit;
end;

procedure TfrmSystemSetting.SpeedButton2Click(Sender: TObject);
begin
  getProdUnit;
end;

procedure TfrmSystemSetting.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView3CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView4CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView5CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView6CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView7CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView8CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView10CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView9CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView11CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView12CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView15CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView14CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView16CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGridDBTableView17CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSystemSetting.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure TfrmSystemSetting.btnRefreshClick(Sender: TObject);
begin
  getProducts(1);
end;

procedure TfrmSystemSetting.btnAddProdUnitClick(Sender: TObject);
var frmProdUni : TfrmEditProductUnit;
begin
  try
    frmProdUni := TfrmEditProductUnit.Create(Application);
    frmProdUni.AppParameter := FDLLParameter;
    frmProdUni.ProductUnitCode:=0;
    frmProdUni.ProductPackingCode:=0;
    frmProdUni.ProductCode :=cdsProducts.fieldbyname('PRDCOD').AsInteger;

    frmProdUni.ShowModal;

    getProductUnit(frmProdUni.ProductCode);

    cdsProductUnits.Locate('PRUPRD;PRUUNI;PRUPAC',VarArrayOf([frmProdUni.ProductCode,frmProdUni.ProductUnitCode,frmProdUni.ProductPackingCode]),[]);

  finally
    frmProdUni.free;
  end;
end;


procedure TfrmSystemSetting.getProductUnit(ProductCode: integer);
begin
  cdsProductUnits.Data := GetDataSet('select * from ICMTTPRU where PRUPRD='+IntToStr(ProductCode));
end;

procedure TfrmSystemSetting.btnEditProdUnitClick(Sender: TObject);
var frmProdUni : TfrmEditProductUnit;
begin
  try
    frmProdUni := TfrmEditProductUnit.Create(Application);
    frmProdUni.AppParameter := FDLLParameter;
    frmProdUni.ProductUnitCode:=cdsProductUnits.fieldbyname('PRUUNI').AsInteger;
    frmProdUni.ProductPackingCode:=cdsProductUnits.fieldbyname('PRUPAC').AsInteger;
    frmProdUni.ProductCode :=cdsProducts.fieldbyname('PRDCOD').AsInteger;

    frmProdUni.ShowModal;

    getProductUnit(frmProdUni.ProductCode);

    cdsProductUnits.Locate('PRUPRD;PRUUNI;PRUPAC',VarArrayOf([frmProdUni.ProductCode,frmProdUni.ProductUnitCode,frmProdUni.ProductPackingCode]),[]);


  finally
    frmProdUni.free;
  end;
end;

procedure TfrmSystemSetting.cxGridDBTableView18DblClick(Sender: TObject);
begin
  btnEditProdUnitClick(sender);
end;

procedure TfrmSystemSetting.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  pgProductData.ActivePage :=TabProductData;
end;

procedure TfrmSystemSetting.TabSheetMTTUnitShow(Sender: TObject);
begin
  getUnit;
end;

procedure TfrmSystemSetting.TabSheetMTTProductShow(Sender: TObject);
begin
 //
end;

procedure TfrmSystemSetting.TabSheetProductTypeShow(Sender: TObject);
begin
  getProdType;
end;

procedure TfrmSystemSetting.TabSheetMTTProductGroupShow(Sender: TObject);
begin
  getProdGroup;
end;

procedure TfrmSystemSetting.TabSheetWarehouseShow(Sender: TObject);
begin
  getWarehouse;
end;

procedure TfrmSystemSetting.TabSheetSubStockShow(Sender: TObject);
begin
  getSubStock;
end;

procedure TfrmSystemSetting.TabSheetMTTStockTypeShow(Sender: TObject);
begin
  getStockType;
end;

procedure TfrmSystemSetting.TabSheetMTTLocationShow(Sender: TObject);
begin
  getLocation;
end;

procedure TfrmSystemSetting.TabSheetMTTSuppliersShow(Sender: TObject);
begin
  getSupplier;
end;

procedure TfrmSystemSetting.TabSheetMTTPersonShow(Sender: TObject);
begin
  getPersonnel;
end;

procedure TfrmSystemSetting.TabSheetMTTPositionShow(Sender: TObject);
begin
  getPositions;
end;

procedure TfrmSystemSetting.TabSheetMTTProjectShow(Sender: TObject);
begin
  getProject;
end;

procedure TfrmSystemSetting.TabSheetMTTCommitteeShow(Sender: TObject);
begin
  getCMHList;
end;

procedure TfrmSystemSetting.TabSheetMTTRateShow(Sender: TObject);
begin
  //getRates;
  getRatePrice;
end;

procedure TfrmSystemSetting.TabSheetMTTPayTypeShow(Sender: TObject);
begin
  getPayType;
end;

procedure TfrmSystemSetting.TabSheetIssueReqTypeShow(Sender: TObject);
begin
  getIssueReqType;
end;

procedure TfrmSystemSetting.btnDeleteProdUnitClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('ยืนยันลบขนาดบรรจุ!!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
  begin
    if cdsProductUnits.Active then
      if cdsProductUnits.RecordCount>0 then
      begin
        cdsProductUnits.Delete;
        if cdsProductUnits.ChangeCount>0 then
          UpdateDataset(cdsProductUnits,'select * from ICMTTPRU limit 0');
      end;
  end;
end;

procedure TfrmSystemSetting.btnCancelProdClick(Sender: TObject);
begin
  if cdsProducts.State in [dsedit,dsinsert] then cdsProducts.Cancel;
  pgProductData.ActivePage := TabProductList;
end;

procedure TfrmSystemSetting.edSearchChange(Sender: TObject);
begin
  btnRefreshClick(sender);
end;

procedure TfrmSystemSetting.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
{  if not AViewInfo.Selected then
    if AViewInfo.GridRecord.Values[cxGrid1DBTableView1Column4.Index] = 'N' then
    begin
      ACanvas.Brush.Color := $00CECEFF;
      ACanvas.Font.Color := clBlue;
    end;}
end;

end.


