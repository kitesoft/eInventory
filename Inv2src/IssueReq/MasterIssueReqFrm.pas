unit MasterIssueReqFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, ComCtrls, Mask, RzEdit,
  RzButton, RzCmboBx,CommonLIB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxLabel, DBCtrls, RzDBEdit, xgButton, RzDTP, RzDBDTP, Buttons,
  DBClient, cxImageComboBox, ImgList;

type
  TfrmMasterIssueReq = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    TabIssueReqList: TTabSheet;
    TabIssueReqData: TTabSheet;
    pnTop: TRzPanel;
    pnMiddle: TRzPanel;
    RzPanel1: TRzPanel;
    RzLabel17: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    cmbWarehouse: TRzComboBox;
    cmbDepartments: TRzComboBox;
    cmbProject: TRzComboBox;
    btnRefresh: TRzBitBtn;
    edSearch: TRzEdit;
    cmbIssueReqType: TRzComboBox;
    grdAllIssueReq: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel2: TRzPanel;
    RzLabel2: TRzLabel;
    btnNewIssueReq: TRzBitBtn;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    btnSearchDep: TSpeedButton;
    btnSearchWh: TSpeedButton;
    btnSearchIssueReqType: TSpeedButton;
    btnSearchJob: TSpeedButton;
    RzLabel13: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    btnAddItem: TRzBitBtn;
    btnEditItem: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzDBEdit9: TRzDBEdit;
    btnNew: TRzBitBtn;
    btnDeleteItem: TRzBitBtn;
    RzDBEdit10: TRzDBEdit;
    edDepCode: TRzEdit;
    edDepName: TRzEdit;
    edWhCode: TRzEdit;
    edWhName: TRzEdit;
    edIssueReqTypeCode: TRzEdit;
    edIssueReqTypeName: TRzEdit;
    edIssueReqJobCode: TRzEdit;
    edIssueReqJobName: TRzEdit;
    btnPrintIssueReq: TRzBitBtn;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    btnDocument: TxgButton;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBEdit1: TRzDBEdit;
    RzPanel5: TRzPanel;
    grdIssueReqItems: TcxGrid;
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
    cxGridLevel2: TcxGridLevel;
    RzPanel6: TRzPanel;
    lbAmount: TRzLabel;
    lbNetAmount: TRzLabel;
    lbStatus: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    btnRevise: TRzBitBtn;
    btnLock: TRzBitBtn;
    btnApprove: TRzBitBtn;
    btnCancelPO: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzLabel4: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    dsIssueReqHeader: TDataSource;
    cdsIssueReqHeader: TClientDataSet;
    dsIssueReqDetail: TDataSource;
    cdsIssueReqDetail: TClientDataSet;
    dsIssueReqList: TDataSource;
    cdsIssueReqList: TClientDataSet;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    ImageList1: TImageList;
    cxGridDBTableView1IRHFLI: TcxGridDBColumn;
    procedure btnAddItemClick(Sender: TObject);
    procedure btnNewIssueReqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDepCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchDepClick(Sender: TObject);
    procedure btnSearchWhClick(Sender: TObject);
    procedure edWhCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEditItemClick(Sender: TObject);
    procedure btnDeleteItemClick(Sender: TObject);
    procedure btnSearchIssueReqTypeClick(Sender: TObject);
    procedure edIssueReqTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchJobClick(Sender: TObject);
    procedure edIssueReqJobCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure btnPrintIssueReqClick(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1IRHFLICustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    FIssueReqCode : integer;
    FIssueReqAmount: currency;
    FIssueReqProjectCode: integer;
    FIssueReqTypeCode: integer;
    FWarehouseCode: integer;
    FDepCode: integer;
    FDLLParameter: TDLLParameter;

    FISNew : boolean;
    FReviseNum : integer;

    procedure SetDepCode(const Value: integer);
    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure SetIssueReqAmount(const Value: currency);
    procedure SetIssueReqProjectCode(const Value: integer);
    procedure SetIssueReqTypeCode(const Value: integer);
    procedure SetWarehouseCode(const Value: integer);

    procedure getIssueReqData(ReqCod:integer);
    procedure getIssueReqList();
    procedure InitCmb();

  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property IssueReqAmount : currency  read FIssueReqAmount write SetIssueReqAmount;
    property DepCode : integer  read FDepCode write SetDepCode;
    property WarehouseCode : integer  read FWarehouseCode write SetWarehouseCode;
    property IssueReqProjectCode : integer  read FIssueReqProjectCode write SetIssueReqProjectCode;
    property IssueReqTypeCode  : integer  read FIssueReqTypeCode write SetIssueReqTypeCode;
  end;

var
  frmMasterIssueReq: TfrmMasterIssueReq;

implementation

uses AddProdItemFrm, STDLIB, STK_LIB, CommonUtils, CdeLIB, Math;

{$R *.dfm}

procedure TfrmMasterIssueReq.btnAddItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  Seq , ans ,ItemQTY : integer;
  ItemPrice ,ItemAmount: currency;

begin
  try
    frmAddItem := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := true;
    frmAddItem.IssueReqCode := FIssueReqCode;
    frmAddItem.ProdCode := 0;
    frmAddItem.WarehouseCode := FWarehouseCode;
    frmAddItem.UnitCode := 0;
    frmAddItem.PackingCode:=0;
    frmAddItem.Qty := 1;
    frmAddItem.UnitPrice := 0;
    frmAddItem.ShowModal;

    Seq := cdsIssueReqDetail.RecordCount+1;

    if cdsIssueReqDetail.Active then
      if frmAddItem.IsOK then
      begin
        if cdsIssueReqDetail.Locate('IRDPRD;IRDUNI;IRDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        begin
          ans := Application.MessageBox(pchar('����¡���Թ��ҫ�� '+#10#13+'[Yes]-��ͧ������ '+#10#13+'[No]-�����ӹǹ '+#10#13+'[Cancel]-¡��ԡ !!!'),pchar('Confirm'),MB_YESNOCANCEL or MB_ICONWARNING);


          ItemQTY:= cdsIssueReqDetail.FieldByName('IRDQTY').AsInteger;
          ItemPrice := cdsIssueReqDetail.FieldByName('IRDCOS').AsCurrency ;
          ItemAmount := cdsIssueReqDetail.FieldByName('IRDAMT').AsCurrency;

          if ans = mrYes then
          begin
            IssueReqAmount := IssueReqAmount - cdsIssueReqDetail.FieldByName('IRDAMT').AsCurrency; // POAMOUNT

            cdsIssueReqDetail.Edit;
            cdsIssueReqDetail.FieldByName('IRDQTY').AsInteger := frmAddItem.Qty;
            cdsIssueReqDetail.FieldByName('IRDCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsIssueReqDetail.FieldByName('IRDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

            IssueReqAmount := IssueReqAmount + cdsIssueReqDetail.FieldByName('IRDAMT').AsCurrency; // POAMOUNT
          end else
          if ans = mrNo then
          begin
            IssueReqAmount := IssueReqAmount - ItemAmount; // POAMOUNT
            cdsIssueReqDetail.Edit;
            cdsIssueReqDetail.FieldByName('IRDQTY').AsInteger := ItemQTY + frmAddItem.Qty;
            //cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsIssueReqDetail.FieldByName('IRDAMT').AsCurrency := (ItemQTY + frmAddItem.Qty)*ItemPrice;

            IssueReqAmount := IssueReqAmount + ((ItemQTY + frmAddItem.Qty)*ItemPrice); // POAMOUNT
          end else
          if ans=mrCancel then Exit;

        end else
        begin
          cdsIssueReqDetail.Append ;
          Seq := cdsIssueReqDetail.RecordCount+1;
          cdsIssueReqDetail.FieldByName('IRDSEQ').AsInteger := Seq;
          IssueReqAmount := IssueReqAmount + (frmAddItem.Qty*frmAddItem.UnitPrice);  // POAMOUNT

          cdsIssueReqDetail.FieldByName('IRDQTY').AsInteger := frmAddItem.Qty;
          cdsIssueReqDetail.FieldByName('IRDCOS').AsCurrency := frmAddItem.UnitPrice;
          cdsIssueReqDetail.FieldByName('IRDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

        end;


          //cdsPODetail.Append;
          cdsIssueReqDetail.FieldByName('IRDCOD').AsInteger := FIssueReqCode;
          cdsIssueReqDetail.FieldByName('IRDCDE').AsString  := frmAddItem.ProdCDE;
          cdsIssueReqDetail.FieldByName('IRDPRD').AsInteger := frmAddItem.ProdCode;

          cdsIssueReqDetail.FieldByName('IRDWH0').AsInteger := frmAddItem.WarehouseCode;
          cdsIssueReqDetail.FieldByName('IRDUNI').AsInteger := frmAddItem.UnitCode;

          cdsIssueReqDetail.FieldByName('IRDPAC').AsInteger := frmAddItem.PackingCode;



          cdsIssueReqDetail.FieldByName('IRDSEQ').AsInteger := Seq;

          cdsIssueReqDetail.FieldByName('IRDPCN').AsString := frmAddItem.PackingName;
          cdsIssueReqDetail.FieldByName('IRDUNA').AsString := frmAddItem.Unitname;
          cdsIssueReqDetail.FieldByName('IRDPNA').AsString := frmAddItem.ProdName;

          cdsIssueReqDetail.Post;

      end;
  finally
    frmAddItem.free;
  end;
end;


procedure TfrmMasterIssueReq.SetDepCode(const Value: integer);
begin
  FDepCode := Value;
  edDepCode.Text := getMTTCDE('WH1',IntToStr(FDepCode));
  edDepName.Text := getDepartmentName(IntToStr(FDepCode));  
end;

procedure TfrmMasterIssueReq.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterIssueReq.SetIssueReqAmount(const Value: currency);
begin
  FIssueReqAmount := Value;
end;

procedure TfrmMasterIssueReq.SetIssueReqProjectCode(const Value: integer);
begin
  FIssueReqProjectCode := Value;
  edIssueReqJobCode.Text := getMTTCDE('JOB',IntToStr(FIssueReqProjectCode));
  edIssueReqJobName.Text := getMTTName('JOB',IntToStr(FIssueReqProjectCode));
end;

procedure TfrmMasterIssueReq.SetIssueReqTypeCode(const Value: integer);
begin
  FIssueReqTypeCode := Value;
  edIssueReqTypeCode.Text := getMTTCDE('IRT',IntToStr(FIssueReqTypeCode));
  edIssueReqTypeName.Text := getMTTName('IRT',IntToStr(FIssueReqTypeCode));
end;

procedure TfrmMasterIssueReq.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
  edWhCode.Text := getMTTCDE('WH0',IntToStr(FWarehouseCode));
  edWhName.Text := getWareHouseName(FWarehouseCode);  
end;

procedure TfrmMasterIssueReq.btnNewIssueReqClick(Sender: TObject);
begin
    pgAllClients.ActivePage:= TabIssueReqData;
    getIssueReqData(0);
end;

procedure TfrmMasterIssueReq.getIssueReqData(ReqCod: integer);
begin
 IssueReqAmount :=0;
 FISNew := (ReqCod=0);

 cdsIssueReqHeader.Data := GetDataSet('select * from ICMTTIRH where IRHCOD='+IntToStr(ReqCod));
 if cdsIssueReqHeader.RecordCount<=0 then
  begin
   if not (cdsIssueReqHeader.State in [dsedit,dsinsert]) then  cdsIssueReqHeader.Edit;

   //cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
   //btnSave.Enabled := cdsPOHeader.FieldByName('POHFLG').AsString<>'A';
   //FReviseNum := cdsPOHeader.FieldByName('POHREV').AsInteger;

   cdsIssueReqHeader.FieldByName('IRHAMT').AsCurrency:=0;
   cdsIssueReqHeader.FieldByName('IRHDEP').AsInteger:=0;
   cdsIssueReqHeader.FieldByName('IRHWH0').AsInteger:=0;
//   cdsIssueReqHeader.FieldByName('IRHPTY').AsInteger:=0;
   cdsIssueReqHeader.FieldByName('IRHTYP').AsInteger:=0;

   cdsIssueReqHeader.FieldByName('IRHDTE').AsDateTime:=getServerDate;
   cdsIssueReqHeader.FieldByName('IRHDUN').AsInteger := 15;

   cdsIssueReqHeader.FieldByName('IRHDUE').AsDateTime:=getServerDate+15;

 end;

 //cdsPODetail.Data := GetDataSet('select '''' as ProdNameTha,'''' as ProdNameEng,'''' as  ProdUniName ,'''' as  ProdPacName,PODSEQ,PODWH0,PODPRD,PODCDE,PODCOD,PODUNI,PODPAC,PODCOS,PODQTY,PODAMT from ICMTTPOD where PODCOD='+IntToStr(POCode)+' order by PODSEQ');
 cdsIssueReqDetail.Data := GetDataSet('select * from ICMTTIRD where IRDCOD='+IntToStr(ReqCod)+' order by IRDSEQ');

 btnApprove.Enabled := cdsIssueReqHeader.FieldByName('IRHFLG').AsString<>'A';
 btnCancelPO.Enabled := cdsIssueReqHeader.FieldByName('IRHFLI').AsString='N';
 btnSave.Enabled := cdsIssueReqHeader.FieldByName('IRHFLG').AsString<>'A';
 btnRevise.Enabled := cdsIssueReqHeader.FieldByName('IRHFLI').AsString='N';
 btnLock.Enabled :=  cdsIssueReqHeader.FieldByName('IRHFLG').AsString<>'A';


 if cdsIssueReqHeader.FieldByName('IRHFLG').AsString='C' then // cancel
 begin
   btnApprove.Enabled := false;
   btnCancelPO.Enabled := false;
   btnSave.Enabled := false;
   btnRevise.Enabled := false;
   btnLock.Enabled := false;
 end;


 FReviseNum := cdsIssueReqHeader.FieldByName('IRHREV').AsInteger;
 FIssueReqCode := cdsIssueReqHeader.FieldByName('IRHCOD').AsInteger;

 IssueReqAmount := cdsIssueReqHeader.FieldByName('IRHAMT').AsCurrency;
 DepCode :=  cdsIssueReqHeader.FieldByName('IRHDEP').AsInteger;
 WarehouseCode :=cdsIssueReqHeader.FieldByName('IRHWH0').AsInteger;
 IssueReqTypeCode := cdsIssueReqHeader.FieldByName('IRHTYP').AsInteger;
 IssueReqProjectCode := cdsIssueReqHeader.FieldByName('IRHJOB').AsInteger;
 //

 // FL1 Flag
 if  cdsIssueReqHeader.FieldByName('IRHFL1').AsString='Y' then
 begin
   btnApprove.Enabled := false;
   btnSave.Enabled    := false;
   btnRevise.Enabled  := false;
   lbStatus.caption:=' �͡���������� ';
   //lbStatus.Color :=$00804000;
   lbStatus.Color :=$0000006C;
 end else
 begin
  lbStatus.Color :=$00804000;
  lbStatus.caption:=' �͡������� ';
 end;




 TCurrencyField(cdsIssueReqDetail.FieldByName('IRDCOS')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsIssueReqDetail.FieldByName('IRDAMT')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsIssueReqDetail.FieldByName('IRDQTY')).DisplayFormat:='#,##0';

end;

procedure TfrmMasterIssueReq.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
end;

procedure TfrmMasterIssueReq.edDepCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edDepCode.Text)<>'' then
    begin
      if getExistDepartment(trim(edDepCode.Text)) then
        DepCode := getMTTCOD('WH1',trim(edDepCode.Text))
      else
        Application.MessageBox(pchar('��辺˹��§ҹ��ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      btnSearchDepClick(sender);
  end;
end;

procedure TfrmMasterIssueReq.btnSearchDepClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('WH1COD','����'));
  _SearchType.Add(TStringValue.Create('WH1CDE','���ʷ����'));
  _SearchType.Add(TStringValue.Create('WH1NAM','����'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('WH1COD','����'));
  _Cols.Add(TStringValue.Create('WH1CDE','���ʷ����'));
  _Cols.Add(TStringValue.Create('WH1NAM','����'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='��ª��ͤ�ѧ�Թ���';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTWH1 where WH1ACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'WH1COD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      DepCode := StrToInt(_Parameter.SelectCode);
  end;



end;

procedure TfrmMasterIssueReq.btnSearchWhClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('WH0COD','����'));
  _SearchType.Add(TStringValue.Create('WH0CDE','���ʷ����'));
  _SearchType.Add(TStringValue.Create('WH0NAM','����'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('WH0COD','����'));
  _Cols.Add(TStringValue.Create('WH0CDE','���ʷ����'));
  _Cols.Add(TStringValue.Create('WH0NAM','����'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='��ª��ͤ�ѧ�Թ���';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTWH0 where WH0ACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'WH0COD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      WarehouseCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterIssueReq.edWhCodeKeyDown(Sender: TObject;
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

            Application.MessageBox(pchar('��辺��ѧ�Թ��ҷ���ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchWhClick(sender);   
  end;
end;

procedure TfrmMasterIssueReq.FormShow(Sender: TObject);
begin
  pnHeader.Color := $00804000;
  pgAllClients.ActivePage := TabIssueReqList;
  InitCmb;
  getIssueReqList;
end;

procedure TfrmMasterIssueReq.FormKeyPress(Sender: TObject; var Key: Char);
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
procedure TfrmMasterIssueReq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F3 then btnAddItemClick(sender);
  if Key=VK_F2 then btnEditItemClick(sender);
  if Key=VK_F4 then btnDeleteItemClick(sender);
end;

procedure TfrmMasterIssueReq.btnEditItemClick(Sender: TObject);
begin
//
end;

procedure TfrmMasterIssueReq.btnDeleteItemClick(Sender: TObject);
begin
//
end;

procedure TfrmMasterIssueReq.btnSearchIssueReqTypeClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('IRTCOD','����'));
  _SearchType.Add(TStringValue.Create('IRTCDE','���ʷ����'));
  _SearchType.Add(TStringValue.Create('IRTNAM','����'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('IRTCOD','����'));
  _Cols.Add(TStringValue.Create('IRTCDE','���ʷ����'));
  _Cols.Add(TStringValue.Create('IRTNAM','����'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='��ª��ͤ��������â��ԡ';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTIRT where IRTACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'IRTCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      IssueReqTypeCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterIssueReq.edIssueReqTypeCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edIssueReqTypeCode.Text)<>'' then
    begin
      if IsInteger(trim(edIssueReqTypeCode.Text))
      then
       if getExistMTTCode('IRT',trim(edIssueReqTypeCode.Text)) then
          IssueReqTypeCode := getMTTCOD('IRT',trim(edIssueReqTypeCode.Text))
        else

            Application.MessageBox(pchar('��辺��¡�û��������ԡ�Թ��ҷ���ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchIssueReqTypeClick(sender);
  end;
end;

procedure TfrmMasterIssueReq.btnSearchJobClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('JOBCOD','����'));
  _SearchType.Add(TStringValue.Create('JOBCDE','���ʷ����'));
  _SearchType.Add(TStringValue.Create('JOBNAM','����'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('JOBCOD','����'));
  _Cols.Add(TStringValue.Create('JOBCDE','���ʷ����'));
  _Cols.Add(TStringValue.Create('JOBNAM','����'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='��ª��ͤ��������â��ԡ';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTJOB where JOBACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'JOBCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      IssueReqProjectCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterIssueReq.edIssueReqJobCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edIssueReqJobCode.Text)<>'' then
    begin
      if IsInteger(trim(edIssueReqJobCode.Text))
      then
       if getExistMTTCode('JOB',trim(edIssueReqJobCode.Text)) then
          IssueReqProjectCode := getMTTCOD('JOB',trim(edIssueReqJobCode.Text))
        else

            Application.MessageBox(pchar('��辺��¡���ç��÷���ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchJobClick(sender);
  end;
end;
procedure TfrmMasterIssueReq.btnSaveClick(Sender: TObject);
var IsNew : boolean;
    irow : integer;
begin

  IsNew := false;


  if (cdsIssueReqDetail.RecordCount<=0) then
  begin
      Application.MessageBox(pchar('�������ö�ѹ�֡��¡����'+#10#13+'���ͧ�ҡ�������¡���Թ��ҷ���ͧ�����觫���!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
  end;


  if (cdsIssueReqHeader.State in [dsinsert,dsedit]) then  cdsIssueReqHeader.Post; // fix cal
  cdsIssueReqHeader.Edit;
    if cdsIssueReqHeader.FieldByName('IRHACT').IsNull then
      cdsIssueReqHeader.FieldByName('IRHACT').AsString:='A';

    if cdsIssueReqHeader.FieldByName('IRHREV').IsNull then
      cdsIssueReqHeader.FieldByName('IRHREV').AsInteger:=1;


  //if cdsIRHeader.State in [dsinsert] then
  if FISNew then
  begin
    IsNew :=true;
    //cdsIRHeader.FieldByName('STKWH0').AsInteger :=FWarehouseCode;



    cdsIssueReqHeader.FieldByName('IRHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','MTT_IRHCOD','CDENM1');
    cdsIssueReqHeader.FieldByName('IRHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','MTT_IRHCOD','CDEPRE')
                                                        ,cdsIssueReqHeader.FieldByName('IRHCOD').AsInteger,getCde('SETTING','RUNNING','MTT_IRHCOD_LEN','CDENM1'));

    if (cdsIssueReqHeader.FieldByName('IRHCOD').IsNull) or( cdsIssueReqHeader.FieldByName('IRHCOD').AsInteger=0) then
    begin
      Application.MessageBox(pchar('�������ö�ѹ�֡��¡����'+#10#13+'���ͧ�ҡ�Դ�����Դ��Ҵ�ҧ�к� ��سҷӡ�úѹ�֡�����ա����!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;




    setEntryUSRDT(cdsIssueReqHeader,DLLParameter.UserID);
    setSystemCMP(cdsIssueReqHeader,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
  end;


  if cdsIssueReqDetail.RecordCount>0 then
    begin

      cdsIssueReqDetail.First;
      while not cdsIssueReqDetail.Eof do
      begin
        if not (cdsIssueReqDetail.State in [dsedit,dsinsert]) then cdsIssueReqDetail.Edit;
        cdsIssueReqDetail.FieldByName('IRDCOD').AsInteger := cdsIssueReqHeader.FieldByName('IRHCOD').AsInteger;
        cdsIssueReqDetail.FieldByName('IRDWH0').AsInteger := FWarehouseCode;



        setEntryUSRDT(cdsIssueReqDetail,DLLParameter.UserID);
        setSystemCMP(cdsIssueReqDetail,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);

        cdsIssueReqDetail.Post;

        cdsIssueReqDetail.Next;
      end;
    end;


  if not (cdsIssueReqHeader.State in [dsinsert,dsedit]) then
    cdsIssueReqHeader.Edit;

    // AMOUNT
    cdsIssueReqHeader.FieldByName('IRHAMT').AsCurrency  :=  FIssueReqAmount;

    // lookup
    cdsIssueReqHeader.FieldByName('IRHTYP').AsInteger := FIssueReqTypeCode;
    cdsIssueReqHeader.FieldByName('IRHDEP').AsInteger := FDepCode;
    cdsIssueReqHeader.FieldByName('IRHWH0').AsInteger := FWarehouseCode;
    cdsIssueReqHeader.FieldByName('IRHJOB').AsInteger := FIssueReqProjectCode;

    // due date
    cdsIssueReqHeader.FieldByName('IRHDUE').AsDateTime := cdsIssueReqHeader.FieldByName('IRHDTE').AsDateTime + cdsIssueReqHeader.FieldByName('IRHDUN').AsInteger;





  if cdsIssueReqHeader.State in [dsinsert,dsedit] then
  begin
    setModifyUSRDT(cdsIssueReqHeader,DLLParameter.UserID);
  end;



  try

    if cdsIssueReqDetail.State in [dsEdit,dsInsert] then cdsIssueReqDetail.Post;
    if cdsIssueReqDetail.ChangeCount>0 then
    begin
      UpdateDataset(cdsIssueReqDetail,'select * from ICMTTIRD limit 0');
    end;

    if cdsIssueReqHeader.State in [dsEdit,dsInsert] then cdsIssueReqHeader.Post;
    if cdsIssueReqHeader.ChangeCount>0 then
    begin
      UpdateDataset(cdsIssueReqHeader,'select * from ICMTTIRH limit 0');

      if IsNew then
      begin
        setCdeRun('SETTING','RUNNING','MTT_IRHCOD','CDENM1');
      end;


    end;

    ShowMessage('Successfull.');
  except
    on ee:Exception do
      begin
        Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONWARNING);
        Exit;
      end;
  end;


end;
procedure TfrmMasterIssueReq.getIssueReqList;
var strSQL,WHOCDE,WH1CDE,JOBCDE,IRTCDE:string;
begin

WHOCDE := TString(cmbWarehouse.Items.Objects[cmbWarehouse.ItemIndex]).Str;
WH1CDE := TString(cmbDepartments.Items.Objects[cmbDepartments.ItemIndex]).Str;
JOBCDE := TString(cmbProject.Items.Objects[cmbProject.ItemIndex]).Str;
IRTCDE := TString(cmbIssueReqType.Items.Objects[cmbIssueReqType.ItemIndex]).Str;
  strSQL:=''+
 ' select      '+
 '               '+
 ' job.JOBNAM,wh.WH0NAM,dep.WH1NAM,typ.IRTNAM,req.*     '+
 '              '+
 ' from                  '+
 ' ICMTTIRH req , ICMTTJOB job  , ICMTTWH1 dep , ICMTTIRT typ ,ICMTTWH0 wh    '+
 ' where job.JOBCOD=req.IRHJOB   '+
 ' and dep.WH1COD=req.IRHDEP   '+
 ' and typ.IRTCOD=req.IRHTYP    '+
 ' and wh.WH0COD=req.IRHWH0    '+

' and  (  ( wh.WH0CDE='''+WHOCDE+'''  and '''+WHOCDE+'''<>''00'' ) or  ( wh.WH0CDE<>'''+WHOCDE+''' and '''+WHOCDE+'''=''00'') )  '+
' and   ( ( dep.WH1CDE='''+WH1CDE+''' and  '''+WH1CDE+'''<>''00'' ) or ( dep.WH1CDE<>'''+WH1CDE+''' and  '''+WH1CDE+'''=''00'' )  ) '+
'	and  ( ( job.JOBCDE='''+JOBCDE+''' and '''+JOBCDE+'''<>''00'' ) or ( job.JOBCDE<>'''+JOBCDE+''' and '''+JOBCDE+'''=''00'' ) ) '+
'	and  ( ( typ.IRTCDE='''+IRTCDE+''' and '''+IRTCDE+'''<>''00'' ) or ( typ.IRTCDE<>'''+IRTCDE+''' and '''+IRTCDE+'''=''00'' ) ) '+
' order by req.IRHCOD';


  cdsIssueReqList.Data:=GetDataSet(strSQL);

end;

procedure TfrmMasterIssueReq.cxGridDBTableView1DblClick(Sender: TObject);
begin
  pgAllClients.ActivePage:= TabIssueReqData;
  getIssueReqData(cdsIssueReqList.fieldbyname('IRHCOD').AsInteger);
end;

procedure TfrmMasterIssueReq.InitCmb;
var cdsTemp : TClientDataSet;
begin

  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet('select ''00'' as WH0CDE,''-- All --'' as WH0NAM union select WH0CDE,WH0NAM from ICMTTWH0 where WH0ACT=''A''');
  loadCmbItems(cmbWarehouse.Items,cdsTemp,'WH0CDE','WH0NAM','');
  cdsTemp.data := GetDataSet('select ''00'' as JOBCDE,''-- All --'' as JOBNAM union select JOBCDE,JOBNAM from ICMTTJOB where JOBACT=''A''');
  loadCmbItems(cmbProject.Items,cdsTemp,'JOBCDE','JOBNAM','');
  cdsTemp.data := GetDataSet('select ''00'' as WH1CDE,''-- All --'' as WH1NAM union select WH1CDE,WH1NAM from ICMTTWH1 where WH1ACT=''A''');
  loadCmbItems(cmbDepartments.Items,cdsTemp,'WH1CDE','WH1NAM','');

  cdsTemp.data := GetDataSet('select ''00'' as IRTCDE,''-- All --'' as IRTNAM union select IRTCDE,IRTNAM from ICMTTIRT where IRTACT=''A''');
  loadCmbItems(cmbIssueReqType.Items,cdsTemp,'IRTCDE','IRTNAM','');

  cmbWarehouse.ItemIndex:=0;
  cmbIssueReqType.ItemIndex:=0;
  cmbDepartments.ItemIndex:=0;
  cmbIssueReqType.ItemIndex:=0;
  cmbProject.ItemIndex:=0;




  //cmbProdType.ItemIndex:= loadCmbItems(cmbProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM',cdsProducts.fieldbyname('PRDTYP').AsString);
end;

procedure TfrmMasterIssueReq.btnRefreshClick(Sender: TObject);
begin
  getIssueReqList;
end;

procedure TfrmMasterIssueReq.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterIssueReq.btnPrintIssueReqClick(Sender: TObject);
var dllParams : TDLLParameter;
  DefaltValue:TList;
begin

    DefaltValue:=TList.Create;
    DefaltValue.Add(TStringValue.Create('IRHCOD',IntToStr(FIssueReqCode)));
    //DefaltValue.Add(TStringValue.Create('RCHCOD',IntToStr(FPOCode)));
    dllParams.ReportCode:='DEP00-001';
    ShowReportGenerator(Application,nil,swModal,dllParams,DefaltValue,true,GetReportGroup);

end;

procedure TfrmMasterIssueReq.btnApproveClick(Sender: TObject);
begin

  if Application.MessageBox(pchar('�׹�ѹ͹��ѵ�㺢��ԡ�Թ��� !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    if not (cdsIssueReqHeader.State in [dsedit,dsinsert]) then cdsIssueReqHeader.Edit;
    cdsIssueReqHeader.FieldByName('IRHFLG').AsString:='A';
    cdsIssueReqHeader.Post;

    if cdsIssueReqHeader.ChangeCount>0 then
    begin
      UpdateDataset(cdsIssueReqHeader,'select * from ICMTTIRH limit 0');
      Application.MessageBox(pchar('͹��ѵ����º����'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);
    end;

  end;



end;

procedure TfrmMasterIssueReq.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterIssueReq.cxGridDBTableView1IRHFLICustomDrawCell(
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
  if  AViewInfo.GridRecord.Values[cxGridDBTableView1IRHFLI.Index] = 'F' then
  begin
    ACanvas.DrawText('Issued', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clBlue;
  end
  else if  AViewInfo.GridRecord.Values[cxGridDBTableView1IRHFLI.Index] = 'N' then
  begin
    ACanvas.DrawText('New', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2FFFF;
  end
  else if  AViewInfo.GridRecord.Values[cxGridDBTableView1IRHFLI.Index] = 'P' then
  begin
    ACanvas.DrawText('Pending', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $009DCEFF;
  end
  else if  AViewInfo.GridRecord.Values[cxGridDBTableView1IRHFLI.Index] = 'E' then
  begin
    ACanvas.DrawText('Holded', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clGray;
  end
  else if  AViewInfo.GridRecord.Values[cxGridDBTableView1IRHFLI.Index] = 'C' then
  begin
    ACanvas.DrawText('Cancel', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clGray;
  end

  else
    ACanvas.Brush.Color := clGray ;

  ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;

end.
