unit FrontReceiveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, DB, SqlExpr, ExtCtrls, RzPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Mask, RzEdit,
  RzLabel, RzDBEdit, RzButton, ComCtrls, DBClient, DBCtrls, RzDBCmbo;

type
  TfrmFrontReceive = class(TForm)
    Conn: TSQLConnection;
    pnAllClient: TRzPanel;
    pnTop: TRzPanel;
    pnContainer: TRzPanel;
    pnRight: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    RzLabel16: TRzLabel;
    lbUserName: TRzLabel;
    lbDonationPoint: TRzLabel;
    RzLabel17: TRzLabel;
    RzPanel1: TRzPanel;
    lbOrderItem: TLabel;
    btnSearch: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzLabel23: TRzLabel;
    cdsCustomer: TClientDataSet;
    dsCustomer: TDataSource;
    RzDBEdit17: TRzDBEdit;
    pnNetCharge: TRzPanel;
    lbPeriod: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    cdsConn: TClientDataSet;
    dsConn: TDataSource;
    cdsLastRa: TClientDataSet;
    dsLastRa: TDataSource;
    cdsIns: TClientDataSet;
    dsIns: TDataSource;
    cdsLoanType: TClientDataSet;
    dsLoanType: TDataSource;
    dsAllINS: TDataSource;
    cdsAllINS: TClientDataSet;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    TabSheet2: TTabSheet;
    RzLabel5: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel21: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel24: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    TabSheet3: TTabSheet;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel22: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    btnNew: TRzBitBtn;
    btnClash: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    btnCloseContract: TRzBitBtn;
    edDonatorName: TRzEdit;
    RzLabel20: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    cdsLastReceive: TClientDataSet;
    dsLastReceive: TDataSource;
    procedure btnNewClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnClashClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    FIsActive: boolean;
    F_CIFCode: string;
    { Private declarations }
    procedure showCustomer(cifcode:string);
    procedure SetIsActive(const Value: boolean);
    procedure Set_CIFCode(const Value: string);
  public
    { Public declarations }
    property IsActive :boolean read FIsActive write SetIsActive;
    property _CIFCode : string read F_CIFCode write Set_CIFCode;
  end;

var
  frmFrontReceive: TfrmFrontReceive;

implementation

uses CommonLIB,nsec, CommonUtils, STDLIB, CashFrm, SearchFrm;



{$R *.dfm}

{ TfrmFrontReceive }

procedure TfrmFrontReceive.showCustomer(cifcode: string);
{
var
  cds : TClientDataSet;
begin
  cds := TClientDataSet.Create(nil);
  cds.Data := GetDataSet('select * from MTTMNU00');
  ShowMessage(IntToStr(cds.RecordCount));

end;
}
var cdsTempConrun:TClientDataSet;
begin
  try
    //cdsTempConrun:=TClientDataSet.Create(nil);

     F_CIFCode := cifcode;
    cdsConn.Data:= GetDataSet('select * from MTTCON00 where conrun='''+cifcode+'''');


    cdsCustomer.Data := GetDataSet('select * from MTTCUS00 where cifcode='''+cdsConn.fieldbyname('concif').AsString+'''');
    cdsIns.Data :=GetDataSet('select first 1 * from MTTINS00 where insrun='''+cifcode+'''  and insf01=''N'' order by insitm');
    cdsAllINS.Data :=GetDataSet('select  * from MTTINS00 where insrun='''+cifcode+''' and insitm>0   order by insitm');
    //cdsLoanType.Data := GetDataSet('select * from mttltp00');
    if cdsConn.RecordCount>0 then
      if cdsIns.RecordCount<=0 then
        btnCloseContract.Enabled := true
      else
        btnCloseContract.Enabled := false;


    pnNetCharge.Caption:=FormatCurr('#,##0.00',cdsIns.fieldbyname('INSNAM').AsCurrency);
    lbPeriod.Caption:='งวดที่ '+cdsIns.fieldbyname('INSITM').AsString;

    TCurrencyField(cdsIns.FieldByName('INSIAM')).DisplayFormat:='#,##0.00';
    TCurrencyField(cdsConn.FieldByName('CONAMT')).DisplayFormat:='#,##0.00';
    TCurrencyField(cdsConn.FieldByName('CONNET')).DisplayFormat:='#,##0.00';

    TCurrencyField(cdsAllINS.FieldByName('INSNAM')).DisplayFormat:='#,##0.00';
    TCurrencyField(cdsAllINS.FieldByName('INSVAM')).DisplayFormat:='#,##0.00';
    TCurrencyField(cdsAllINS.FieldByName('INSIAM')).DisplayFormat:='#,##0.00';
    TDateTimeField(cdsAllINS.FieldByName('INSDUE')).DisplayFormat:='dd-MM-yyyy';

    cdsLastReceive.Data := GetDataSet('select first 1 * from MTTINS00 m where INSF01=''Y'' order by INSDUE desc ');
    TCurrencyField(cdsLastReceive.FieldByName('INSNAM')).DisplayFormat:='#,##0.00';


    btnClash.Enabled:= cdsIns.RecordCount>0;

  finally
  end;



end;


procedure TfrmFrontReceive.btnNewClick(Sender: TObject);
begin
//

end;

procedure TfrmFrontReceive.FormKeyPress(Sender: TObject; var Key: Char);
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


procedure TfrmFrontReceive.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClient);
end;

procedure TfrmFrontReceive.btnClashClick(Sender: TObject);
var fCash : TfrmCash;
begin
  if btnClash.Enabled then begin
    try
      fCash := TfrmCash.Create(Application);

      if cdsIns.Active then
      if cdsIns.RecordCount>0 then
      begin
        fCash.PayNet := cdsIns.fieldbyname('INSNAM').AsCurrency;
        fCash.PayAmount :=cdsIns.fieldbyname('INSIAM').AsCurrency;;
        fCash.PayVat :=cdsIns.fieldbyname('INSVAM').AsCurrency;;
        fCash.ShowModal;
        if fCash.IsOK then
        begin
            if not (cdsIns.State in [dsedit,dsedit]) then cdsIns.Edit;
            cdsIns.FieldByName('INSF01').AsString:='Y';
            cdsIns.Post;
            if cdsIns.ChangeCount>0 then
              UpdateDataset(cdsIns,'select first 1 * from MTTINS00 where insrun='''+F_CIFCode+'''  and insf01=''N''');
            showCustomer(F_CIFCode);
        end;
      end else
        begin
          Application.MessageBox(pchar('กรุณาระบุรายการที่ต้องชำระ'),pchar('Warning'),MB_OK or MB_ICONWARNING);
        end;
    finally
      fCash.Free;
    end;
  end;

end;

procedure TfrmFrontReceive.SetIsActive(const Value: boolean);
begin
  FIsActive := Value;
end;

procedure TfrmFrontReceive.FormShow(Sender: TObject);
begin
  IsActive :=true;
end;

procedure TfrmFrontReceive.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then btnClashClick(nil);
  if Key=VK_F6 then btnSearchClick(nil);

      
end;

procedure TfrmFrontReceive.btnSearchClick(Sender: TObject);
{
var frmSearch : TfrmSearch;
begin
  frmSearch := TfrmSearch.Create(Application);
  frmSearch.ShowModal;
  if frmSearch.IsOK then
  begin
    showCustomer(frmSearch.CustomerID);
  end;


end;
}

var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SelecField,_SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('CONRUN','เลขที่สัญญา'));
  _SearchType.Add(TStringValue.Create('CIFCODE','รหัส'));
  _SearchType.Add(TStringValue.Create('FNAME','ชื่อ'));
  _SearchType.Add(TStringValue.Create('LNAME','สกุล'));
  _SearchType.Add(TStringValue.Create('IDCARD','รหัสประจำตัวประชาชน'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('CONRUN','เลขที่สัญญา'));
  _Cols.Add(TStringValue.Create('CONAMT','เงินกู้'));
  _Cols.Add(TStringValue.Create('CONNET','รวมทั้งสิ้น'));
  _Cols.Add(TStringValue.Create('CIFCODE','รหัส'));
  _Cols.Add(TStringValue.Create('FNAME','ชื่อ'));
  _Cols.Add(TStringValue.Create('LNAME','สกุล'));
  _Cols.Add(TStringValue.Create('IDCARD','รหัสประจำตัวประชาชน'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','90'));
  _ColsWidth.Add(TStringValue.Create('4','100'));
  _ColsWidth.Add(TStringValue.Create('5','120'));
  _ColsWidth.Add(TStringValue.Create('6','120'));
  _ColsWidth.Add(TStringValue.Create('7','150'));

  Parameter.SearchTitle:='รายชื่อสัญญา';
  executilsdxInitialize;


  _SQL :=''+

  ' select a.*,b.* '+
  ' from MTTCUS00 a '+
  ' left join mttcon00 b on a.cifcode=b.concif '+
  ' where a.status<>''I'' and conrun<>'''' and conrun is not null ';


//  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'CIFCODE','select * from MTTCUS00 where status<>''I''');
  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'CONRUN',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    showCustomer(_Parameter.SelectCode);
  end;



end;

procedure TfrmFrontReceive.Set_CIFCode(const Value: string);
begin
  F_CIFCode := Value;
end;

procedure TfrmFrontReceive.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if not AViewInfo.Selected then
    begin
      if  AViewInfo.GridRecord.Values[cxGrid1DBTableView1Column6.Index] = 'Y' then
      begin
        ACanvas.Brush.Color := $00FFAEAE ;
        ACanvas.Font.Color := clBlack;
      end else  ACanvas.Font.Style:=[fsBold];
    end else
    begin
        ACanvas.Font.Color := $000080FF;
        ACanvas.Font.Style:=[fsBold];
    end;

end;

end.
