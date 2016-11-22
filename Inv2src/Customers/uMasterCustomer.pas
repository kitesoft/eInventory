unit uMasterCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxImageComboBox,
  cxLabel, cxCalendar, cxCurrencyEdit, RzDBEdit, Buttons, Mask, RzEdit,
  RzButton, RzCmboBx, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzTabs, ComCtrls,
  DBClient, DBCtrls,CommonLIB;

type
  TfrmMasterCustomer = class(TForm)
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
    grdAllCustomer: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnTop: TRzPanel;
    RzLabel17: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    cmbWarehouse: TRzComboBox;
    cmbDepartments: TRzComboBox;
    cmbSuppliers: TRzComboBox;
    btnRefreshA: TRzBitBtn;
    edSearch: TRzEdit;
    cmbPOType: TRzComboBox;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    btnNewPO: TRzBitBtn;
    btnDeletePO: TRzBitBtn;
    btnHoldPO: TRzBitBtn;
    btnNewCustomer: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    TabData: TTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel14: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    ckShowUnitCod: TCheckBox;
    cdsCustomers: TClientDataSet;
    dsCustomers: TDataSource;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    DBCheckBox1: TDBCheckBox;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    RzLabel1: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzLabel7: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRefreshAClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure btnNewPOClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
  private
    FDLLParameter: TDLLParameter;
    { Private declarations }
    procedure getAllCustomer(searchstr:string='');
    procedure SetDLLParameter(const Value: TDLLParameter);
  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
  end;

var
  frmMasterCustomer: TfrmMasterCustomer;

implementation

uses STDLIB, STK_LIB, CdeLIB;

{$R *.dfm}

{ TfrmMasterCustomer }

procedure TfrmMasterCustomer.getAllCustomer(searchstr:string);
begin
  cdsCustomers.Data := GetDataSet('select * from ICMTTCSH where CSHNAM like ''%'+searchstr+'%'' or CSHCON like ''%'+searchstr+'%'' or CSHMOB like ''%'+searchstr+'%'' or CSHPHO like ''%'+searchstr+'%''');
end;

procedure TfrmMasterCustomer.FormShow(Sender: TObject);
begin
  getAllCustomer;
end;

procedure TfrmMasterCustomer.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsCustomers.State in [dsinsert] then
  begin
    IsNew := true;
    cdsCustomers.FieldByName('CSHCOD').AsInteger :=getCdeRun('SETTING','RUNNING','CSHCOD','CDENM1');
    cdsCustomers.FieldByName('CSHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','CSHCOD','CDEPRE')
                                                        ,cdsCustomers.FieldByName('CSHCOD').AsInteger,getCde('SETTING','RUNNING','CSHCOD_LEN','CDENM1'));

    cdsCustomers.FieldByName('CSHSEQ').AsInteger:=cdsCustomers.FieldByName('CSHCOD').AsInteger;

    if cdsCustomers.FieldByName('CSHACT').IsNull then
        cdsCustomers.FieldByName('CSHACT').AsString:='A';

    setEntryUSRDT(cdsCustomers,DLLParameter.UserID);
    setSystemCMP(cdsCustomers,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
  end;

  if cdsCustomers.State in [dsinsert,dsedit] then
  begin
    setModifyUSRDT(cdsCustomers,DLLParameter.UserID);
  end;


  if cdsCustomers.State in [dsedit,dsinsert] then cdsCustomers.Post;
  if cdsCustomers.ChangeCount>0 then
  begin
    UpdateDataset(cdsCustomers,'select * from ICMTTCSH limit 0') ;
    if isNew then
    setCdeRun('SETTING','RUNNING','CSHCOD','CDENM1');

    Application.MessageBox(pchar('บันทึกเรียบร้อย!!!'),pchar('Information'),MB_OK or MB_ICONINFORMATION);

  end;

  pgAllClients.ActivePage :=TabList;

end;
{
begin
  if cdsCustomers.State in [dsinsert,dsedit] then cdsCustomers.Post;

  if cdsCustomers.ChangeCount>0 then
  begin
    UpdateDataset(cdsCustomers,'select * from ICMTTCSH limit 0');

    Application.MessageBox(pchar('บันทึกเรียบร้อย!!!'),pchar('Information'),MB_OK or MB_ICONINFORMATION);
  end;
end;
}

procedure TfrmMasterCustomer.btnRefreshAClick(Sender: TObject);
begin
  getAllCustomer(edSearch.Text);
end;

procedure TfrmMasterCustomer.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterCustomer.cxGridDBTableView1DblClick(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabData;
end;

procedure TfrmMasterCustomer.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterCustomer.btnNewPOClick(Sender: TObject);
begin
 cdsCustomers.Append;
 pgAllClients.ActivePage:=TabData;
end;

procedure TfrmMasterCustomer.btnCancelClick(Sender: TObject);
begin
  if cdsCustomers.State in [dsinsert,dsedit] then cdsCustomers.cancel;
  pgAllClients.ActivePage:=Tablist;
end;

procedure TfrmMasterCustomer.edSearchChange(Sender: TObject);
begin
  btnRefreshAClick(sender);
end;

end.
