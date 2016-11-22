unit CustomersFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, RzLabel, DBClient, Mask, RzEdit,
  RzDBEdit, RzButton, ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh;

type
  TfrmCustomers = class(TForm)
    pnAllClients: TRzPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    RzLabel23: TRzLabel;
    cdsCustomers: TClientDataSet;
    Button1: TButton;
    dsCustomers: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    RzPanel2: TRzPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RzLabel4: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    edIdCard: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    TabSheet2: TTabSheet;
    RzPanel3: TRzPanel;
    btnNew: TRzBitBtn;
    RzLabel7: TRzLabel;
    dsSex: TDataSource;
    cdsSex: TClientDataSet;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    RzLabel5: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    RzLabel11: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzLabel15: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzLabel16: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    btnSave: TRzBitBtn;
    RzLabel17: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    RzLabel18: TRzLabel;
    cdsPersonStatus: TClientDataSet;
    dsPersonStatus: TDataSource;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure cdsCustomersBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure refreshData();
    procedure getSex();
    procedure getPersionStatus();
  public
    { Public declarations }
  end;

var
  frmCustomers: TfrmCustomers;

implementation

uses CommonLIB,nsec, CommonUtils, STDLIB, NewCustomerFrm, CdeLIB;

{$R *.dfm}

procedure TfrmCustomers.Button1Click(Sender: TObject);
var
  cds ,cdsMenuData: TClientDataSet;
begin
  cds := TClientDataSet.Create(nil);
  cds.Data := GetDataSet('select * from MTTMNU00');
  ShowMessage(IntToStr(cds.RecordCount));
  
end;

procedure TfrmCustomers.refreshData;
begin
  cdsCustomers.Data := GetDataSet('select * from MTTCUS00');
end;

procedure TfrmCustomers.FormShow(Sender: TObject);
begin
 // getSex;
 // getPersionStatus;
 // refreshData;
end;

procedure TfrmCustomers.getSex;
begin
  cdsSex.Data := GetDataSet('select * from MTTCDE00 where CDEGRP=''PERSON'' and CDEABR=''SEX'' and CDEACT=''A'' order by CDEITM');
end;

procedure TfrmCustomers.btnNewClick(Sender: TObject);
begin
 if not (cdsCustomers.State in [dsedit,dsinsert])then cdsCustomers.Append;
 edIdCard.SetFocus;
end;

procedure TfrmCustomers.cdsCustomersBeforePost(DataSet: TDataSet);
begin
  if DataSet.State in [dsinsert] then
  begin
    DataSet.FieldByName('CIFCODE').AsString := getCifFormat(getCdeRun('CIFNO','PERSON','CIFNO','CDENM1'));
    DataSet.FieldByName('STATUS').AsString :='A';
    DataSet.FieldByName('REGISTER_DATE').AsDateTime := now;
    setCdeRun('CIFNO','PERSON','CIFNO','CDENM1');
  end;
end;

procedure TfrmCustomers.FormCreate(Sender: TObject);
begin
 // SetChildTaborders(pnAllClients);
end;

procedure TfrmCustomers.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton) then
    begin
      //Perform(CM_DialogKey, VK_TAB, 0);
        SelectNext(ActiveControl as TWinControl, True, True);
      //Key := #0;
    end;
  End;
end;

procedure TfrmCustomers.btnSaveClick(Sender: TObject);
begin
  try
    if Application.MessageBox(pchar('ยืนยันบันทึก้อมูล'),pchar('Confirm'),MB_OKCANCEL or MB_ICONINFORMATION) =mrOk then
    begin
      if cdsCustomers.State in [dsedit,dsinsert] then cdsCustomers.Post;
      if cdsCustomers.ChangeCount>0 then
      begin
        UpdateDataset(cdsCustomers,'select * from MTTCUS00');
        Application.MessageBox(pchar('Successfull.'),pchar('Information'),MB_OK or MB_ICONINFORMATION);
      end;
    end;
  finally
  end;
end;

procedure TfrmCustomers.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F4 then btnSaveClick(nil);
  if Key=VK_F3 then btnNewClick(nil);
end;

procedure TfrmCustomers.getPersionStatus;
begin
  cdsPersonStatus.Data := GetDataSet('select * from MTTCDE00 where CDEABR=''STATUS'' and CDEGRP=''PERSON'' and  CDESTS=''A'' order by CDEITM') ;
end;

end.
