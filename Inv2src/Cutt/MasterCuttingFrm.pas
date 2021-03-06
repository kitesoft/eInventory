unit MasterCuttingFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxLabel,
  cxCalendar, cxCurrencyEdit, DBCtrls, RzDBEdit, ComCtrls, RzDTP, RzDBDTP,
  Buttons, Mask, RzEdit, RzButton, RzCmboBx, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzTabs, DBClient,CommonLIB,SiAuto,SmartInspect;

type
  TfrmMasterCutting = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    tabAllIssueList: TTabSheet;
    Splitter1: TSplitter;
    pnMiddle: TRzPanel;
    pgWarehouseProduct: TRzPageControl;
    TabCuttingList: TRzTabSheet;
    grdAllCutting: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
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
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
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
    btnNewCutting: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    TabCuttingData: TTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel15: TRzLabel;
    btnSearchDep: TSpeedButton;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel14: TRzLabel;
    btnSearchCuttType: TSpeedButton;
    btnSearchCuttJob: TSpeedButton;
    RzLabel4: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel21: TRzLabel;
    RzLabel23: TRzLabel;
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
    RzDBEdit1: TRzDBEdit;
    ckShowUnitCod: TCheckBox;
    btnPrint: TRzBitBtn;
    RzDBEdit9: TRzDBEdit;
    edCuttTypeCode: TRzEdit;
    edCuttTypeName: TRzEdit;
    edCuttJobCode: TRzEdit;
    edCuttJobName: TRzEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBMemo1: TRzDBMemo;
    RzDBEdit2: TRzDBEdit;
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
    dsAllCuttingList: TDataSource;
    cdsAllCuttingList: TClientDataSet;
    dsCuttingHdr: TDataSource;
    cdsCuttingHdr: TClientDataSet;
    dsCuttingDtl: TDataSource;
    cdsCuttingDtl: TClientDataSet;
    btnCancelApprove: TRzBitBtn;
    procedure btnAddItemClick(Sender: TObject);
    procedure btnNewCuttingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchDepClick(Sender: TObject);
    procedure edDepCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchCuttTypeClick(Sender: TObject);
    procedure edCuttTypeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchCuttJobClick(Sender: TObject);
    procedure edCuttJobCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRefreshAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure btnCancelApproveClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    FCuttCode : integer;
    FCuttAmount: currency;
    FWarehouseCode: integer;
    FCuttProjectCode: integer;
    FDepCode: integer;
    FCuttTypeCode: integer;
    FDLLParameter: TDLLParameter;

    procedure getAllCuttingList();
    procedure getCuttingData(CUHCOD:integer);
    procedure SetCuttTypeCode(const Value: integer);
    procedure SetCuttAmount(const Value: currency);
    procedure SetCuttProjectCode(const Value: integer);
    procedure SetDepCode(const Value: integer);
    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure SetWarehouseCode(const Value: integer);

    procedure PostStkTransaction(STKTYP:string;STKMVC,STKPRD:integer;STKPCD:string;STKWH0,STKWH1,STKUNI,STKPAC,STKQTY,STKLOC:integer;STKLOT:string;STKEXP:tdatetime;STKFLG:string;STKCAL:integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);
    procedure PostStk(STKTYPE:string;STKMVC,STKPRD:integer;STKPCD:string;STKWH0,STKWH1,STKUNI,STKPAC,STKQTY,STKLOC:integer;STKLOT:string;STKEXP:tdatetime;STKFLG:string;STKCAL:integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);
    
  public
    { Public declarations }

    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property CuttAmount : currency   read FCuttAmount write SetCuttAmount;
    property DepCode : integer  read FDepCode write SetDepCode;
    property WarehouseCode : integer  read FWarehouseCode write SetWarehouseCode;
    property CuttProjectCode : integer  read FCuttProjectCode write SetCuttProjectCode;
    property CUttTypeCode  : integer read FCuttTypeCode write SetCuttTypeCode;
  end;

var
  frmMasterCutting: TfrmMasterCutting;

implementation

uses  STDLIB, AddProdItemFrm, CdeLIB, CommonUtils, STK_LIB;

{$R *.dfm}

{ TfrmMasterCutting }

procedure TfrmMasterCutting.getAllCuttingList;
begin
  cdsAllCuttingList.Data := GetDataSet('select * from ICMTTCUH');
end;

procedure TfrmMasterCutting.getCuttingData(CUHCOD: integer);
begin
  cdsCuttingHdr.Data := GetDataSet('select * from ICMTTCUH where CUHCOD='+IntToStr(CUHCOD));
  cdsCuttingDtl.Data := GetDataSet('select * from ICMTTCUD where CUDCOD='+IntToStr(CUHCOD));

  WarehouseCode :=0;
  CuttProjectCode :=0;
  CUttTypeCode :=0;




  if cdsCuttingHdr.RecordCount>0 then
  begin
    DepCode := cdsCuttingHdr.fieldbyname('CUHWH1').AsInteger;
    CuttProjectCode :=cdsCuttingHdr.fieldbyname('CUHJOB').AsInteger;
    CUttTypeCode := cdsCuttingHdr.fieldbyname('CUHTYP').AsInteger;
  end;

end;

procedure TfrmMasterCutting.btnAddItemClick(Sender: TObject);
var
  frmAddItem : TfrmAddProdItem;
  Seq , ans ,ItemQTY : integer;
  ItemPrice ,ItemAmount: currency;

begin
  try
    frmAddItem := TfrmAddProdItem.Create(Application);
    frmAddItem.IsNew := true;
    frmAddItem.CuttCode := FCuttCode;
    frmAddItem.ProdCode := 0;
    frmAddItem.WarehouseCode := FWarehouseCode;
    frmAddItem.UnitCode := 0;
    frmAddItem.PackingCode:=0;
    frmAddItem.Qty := 1;
    frmAddItem.UnitPrice := 0;
    frmAddItem.ShowModal;

    Seq := cdsCuttingDtl.RecordCount+1;

    if cdsCuttingDtl.Active then
      if frmAddItem.IsOK then
      begin
        if cdsCuttingDtl.Locate('CUDPRD;CUDUNI;CUDPAC',VarArrayOf([frmAddItem.ProdCode,frmAddItem.UnitCode,frmAddItem.PackingCode]),[]) then
        begin
          ans := Application.MessageBox(pchar('����¡���Թ��ҫ�� '+#10#13+'[Yes]-��ͧ������ '+#10#13+'[No]-�����ӹǹ '+#10#13+'[Cancel]-¡��ԡ !!!'),pchar('Confirm'),MB_YESNOCANCEL or MB_ICONWARNING);


          ItemQTY:= cdsCuttingDtl.FieldByName('CUDQTY').AsInteger;
          ItemPrice := cdsCuttingDtl.FieldByName('CUDCOS').AsCurrency ;
          ItemAmount := cdsCuttingDtl.FieldByName('CUDAMT').AsCurrency;

          if ans = mrYes then
          begin
            CuttAmount := CuttAmount - cdsCuttingDtl.FieldByName('CUDAMT').AsCurrency; // POAMOUNT

            cdsCuttingDtl.Edit;
            cdsCuttingDtl.FieldByName('CUDQTY').AsInteger := frmAddItem.Qty;
            cdsCuttingDtl.FieldByName('CUDCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsCuttingDtl.FieldByName('CUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

            CuttAmount := CuttAmount + cdsCuttingDtl.FieldByName('CUDAMT').AsCurrency; // POAMOUNT
          end else
          if ans = mrNo then
          begin
            CuttAmount := CuttAmount - ItemAmount; // POAMOUNT
            cdsCuttingDtl.Edit;
            cdsCuttingDtl.FieldByName('CUDQTY').AsInteger := ItemQTY + frmAddItem.Qty;
            //cdsPODetail.FieldByName('PODCOS').AsCurrency := frmAddItem.UnitPrice;
            cdsCuttingDtl.FieldByName('CUDAMT').AsCurrency := (ItemQTY + frmAddItem.Qty)*ItemPrice;

            CuttAmount := CuttAmount + ((ItemQTY + frmAddItem.Qty)*ItemPrice); // POAMOUNT
          end else
          if ans=mrCancel then Exit;

        end else
        begin
          cdsCuttingDtl.Append ;
          Seq := cdsCuttingDtl.RecordCount+1;
          cdsCuttingDtl.FieldByName('CUDSEQ').AsInteger := Seq;
          CuttAmount := CuttAmount + (frmAddItem.Qty*frmAddItem.UnitPrice);  // POAMOUNT

          cdsCuttingDtl.FieldByName('CUDQTY').AsInteger := frmAddItem.Qty;
          cdsCuttingDtl.FieldByName('CUDCOS').AsCurrency := frmAddItem.UnitPrice;
          cdsCuttingDtl.FieldByName('CUDAMT').AsCurrency := frmAddItem.Qty*frmAddItem.UnitPrice;

        end;


          //cdsPODetail.Append;
          cdsCuttingDtl.FieldByName('CUDCOD').AsInteger := FCuttCode;
          cdsCuttingDtl.FieldByName('CUDCDE').AsString  := frmAddItem.ProdCDE;
          cdsCuttingDtl.FieldByName('CUDPRD').AsInteger := frmAddItem.ProdCode;

          cdsCuttingDtl.FieldByName('CUDWH0').AsInteger := frmAddItem.WarehouseCode;
          cdsCuttingDtl.FieldByName('CUDUNI').AsInteger := frmAddItem.UnitCode;

          cdsCuttingDtl.FieldByName('CUDPAC').AsInteger := frmAddItem.PackingCode;



          cdsCuttingDtl.FieldByName('CUDSEQ').AsInteger := Seq;

          cdsCuttingDtl.FieldByName('CUDPCN').AsString := frmAddItem.PackingName;
          cdsCuttingDtl.FieldByName('CUDUNA').AsString := frmAddItem.Unitname;
          cdsCuttingDtl.FieldByName('CUDPNA').AsString := frmAddItem.ProdName;

          cdsCuttingDtl.Post;

      end;
  finally
    frmAddItem.free;
  end;
end;

procedure TfrmMasterCutting.SetCuttTypeCode(const Value: integer);
begin
  FCuttTypeCode := Value;
  edCuttTypeCode.Text := getMTTCDE('IRT',IntToStr(FCuttTypeCode));
  edCuttTypeName.Text := getMTTName('IRT',IntToStr(FCuttTypeCode));
end;

procedure TfrmMasterCutting.SetCuttAmount(const Value: currency);
begin
  FCuttAmount := Value;
end;

procedure TfrmMasterCutting.SetCuttProjectCode(const Value: integer);
begin
  FCuttProjectCode := Value;
  edCuttJobCode.Text := getMTTCDE('JOB',IntToStr(FCuttProjectCode));
  edCuttJobName.Text := getMTTName('JOB',IntToStr(FCuttProjectCode));
end;

procedure TfrmMasterCutting.SetDepCode(const Value: integer);
begin
  FDepCode := Value;
  edDepCode.Text := getMTTCDE('WH1',IntToStr(FDepCode));
  edDepName.Text := getDepartmentName(IntToStr(FDepCode));
end;

procedure TfrmMasterCutting.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterCutting.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
end;

procedure TfrmMasterCutting.btnNewCuttingClick(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabCuttingData;
  getCuttingData(0);
end;

procedure TfrmMasterCutting.FormCreate(Sender: TObject);
begin
 SetChildTaborders(pnAllClients);
end;

procedure TfrmMasterCutting.btnSearchDepClick(Sender: TObject);
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

  Parameter.SearchTitle:='��ª��ͤ�ѧ�Թ��� / ˹��§ҹ';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTWH1 where WH1ACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'WH1COD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
      DepCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterCutting.edDepCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edDepCode.Text)<>'' then
    begin
      if IsInteger(trim(edDepCode.Text))
      then
       if getExistDepartment(trim(edDepCode.Text)) then
          DepCode := getMTTCOD('WH1',trim(edDepCode.Text))
        else
            Application.MessageBox(pchar('��辺��ѧ �Թ���/˹��§ҹ ����ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchDepClick(sender);
  end;
end;

procedure TfrmMasterCutting.btnSearchCuttTypeClick(Sender: TObject);
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
      CUttTypeCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterCutting.edCuttTypeCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edCuttTypeCode.Text)<>'' then
    begin
      if IsInteger(trim(edCuttTypeCode.Text))
      then
       if getExistMTTCode('IRT',trim(edCuttTypeCode.Text)) then
          CUttTypeCode := getMTTCOD('IRT',trim(edCuttTypeCode.Text))
        else

            Application.MessageBox(pchar('��辺��¡�û��������ԡ�Թ��ҷ���ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchCuttTypeClick(sender);
  end;
end;

procedure TfrmMasterCutting.btnSearchCuttJobClick(Sender: TObject);
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
      CuttProjectCode := StrToInt(_Parameter.SelectCode);
  end;


end;

procedure TfrmMasterCutting.edCuttJobCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edCuttJobCode.Text)<>'' then
    begin
      if IsInteger(trim(edCuttJobCode.Text))
      then
       if getExistMTTCode('JOB',trim(edCuttJobCode.Text)) then
          CuttProjectCode := getMTTCOD('JOB',trim(edCuttJobCode.Text))
        else

            Application.MessageBox(pchar('��辺��¡���ç��÷���ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);

    end else
      btnSearchCuttJobClick(sender);
  end;
end;

procedure TfrmMasterCutting.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmMasterCutting.btnSaveClick(Sender: TObject);
var IsNew : boolean;
  irow : integer;
  lotNo : string;
begin
  IsNew := false;
  lotNo:='';

  if cdsCuttingDtl.State in [dsedit,dsinsert] then cdsCuttingDtl.Post;
  if not (cdsCuttingHdr.State in [dsedit,dsinsert]) then cdsCuttingHdr.Edit;



//  cdsCuttingHdr.FieldByName('IUHIRC').AsInteger := cdsIssueReqHeader.fieldbyname('IRHCOD').AsInteger;
//  cdsCuttingHdr.FieldByName('IUHWH0').AsInteger := cdsIssueReqHeader.fieldbyname('IRHWH0').AsInteger;
  cdsCuttingHdr.FieldByName('CUHWH1').AsInteger := FDepCode;
 // cdsCuttingHdr.FieldByName('IUHDTE').AsDateTime := getServerDate;

  if cdsCuttingHdr.State in [dsinsert] then
  begin
    IsNew :=true;
    if cdsCuttingHdr.FieldByName('CUHACT').IsNull then
      cdsCuttingHdr.FieldByName('CUHACT').AsString:='A';

    cdsCuttingHdr.FieldByName('CUHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','MTT_CUHCOD','CDENM1');
    cdsCuttingHdr.FieldByName('CUHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','MTT_CUHCOD','CDEPRE')
                                                        ,cdsCuttingHdr.FieldByName('CUHCOD').AsInteger,getCde('SETTING','RUNNING','MTT_CUHCOD_LEN','CDENM1'));
    cdsCuttingHdr.FieldByName('CUHREV').AsInteger := 1;
  end;

    if cdsCuttingDtl.RecordCount>0 then
      begin
        // Fill COD
        cdsCuttingDtl.First;
        while not cdsCuttingDtl.Eof do
        begin

          if not (cdsCuttingDtl.State in [dsedit,dsinsert]) then cdsCuttingDtl.Edit;
          cdsCuttingDtl.FieldByName('CUDCOD').AsInteger := cdsCuttingHdr.FieldByName('CUHCOD').AsInteger;
          //cdsCuttingDtl.FieldByName('CUDIRC').AsInteger := cdsCuttingHdr.FieldByName('CUHCOD').AsInteger;

          setEntryUSRDT(cdsCuttingDtl,DLLParameter.UserID);
          setSystemCMP(cdsCuttingDtl,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);


          cdsCuttingDtl.Post;
          cdsCuttingDtl.Next;
        end;





      end;




    setEntryUSRDT(cdsCuttingHdr,DLLParameter.UserID);
    setSystemCMP(cdsCuttingHdr,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);







  if not ( cdsCuttingHdr.State in [dsinsert,dsedit]) then cdsCuttingHdr.Edit;

    cdsCuttingHdr.FieldByName('CUHAMT').AsCurrency := FCuttAmount;
    cdsCuttingHdr.FieldByName('CUHWH1').AsInteger := DepCode;
    cdsCuttingHdr.FieldByName('CUHJOB').AsInteger := CuttProjectCode;
    cdsCuttingHdr.FieldByName('CUHTYP').AsInteger := CUttTypeCode;
//    cdsIssueHeader.FieldByName('IUHVAM').AsCurrency := FPOVat;
//    cdsIssueHeader.FieldByName('IUHNET').AsCurrency := FPONetAmount;
    setModifyUSRDT(cdsCuttingHdr,DLLParameter.UserID);
   cdsCuttingHdr.Post;



  if cdsCuttingDtl.State in [dsEdit,dsInsert] then cdsCuttingDtl.Post;
  if cdsCuttingDtl.ChangeCount>0 then
  begin
    //UpdateDataset(cdsIssueDetail,'select * from ICTRNRCD limit 0');
    UpdateDataset(cdsCuttingDtl,'select * from ICMTTCUD where CUDCOD='+IntToStr(FCuttCode)+' order by CUDSEQ');
  end;


  if cdsCuttingHdr.State in [dsEdit,dsInsert] then cdsCuttingHdr.Post;
  if cdsCuttingHdr.ChangeCount>0 then
  begin
    UpdateDataset(cdsCuttingHdr,'select * from ICMTTCUH limit 0');
    FCuttCode := cdsCuttingHdr.FieldByName('CUHCOD').AsInteger;

    if IsNew then
    begin
      setCdeRun('SETTING','RUNNING','MTT_CUHCOD','CDENM1');

    end;

   { if lotNo<>'' then
      setCdeRun('SETTING','RUNNING','LOTNO','CDENM1');
      }


  end;

  ShowMessage('Successfull.');
  getCuttingData(FCuttCode);




end;

procedure TfrmMasterCutting.btnRefreshAllClick(Sender: TObject);
begin
 getAllCuttingList;
end;

procedure TfrmMasterCutting.FormShow(Sender: TObject);
begin
  getAllCuttingList;
end;

procedure TfrmMasterCutting.cxGridDBTableView1DblClick(Sender: TObject);
begin
  pgAllClients.ActivePage:=TabCuttingData;
  getCuttingData(cdsAllCuttingList.fieldbyname('CUHCOD').AsInteger);
end;

procedure TfrmMasterCutting.btnApproveClick(Sender: TObject);
var icount,IssueQty,IssueReqQty,ItemBalanceQty:integer;
    cdsCurrIssueItems,cdsDepartmentItems,cdsTemp,cdsOnHandLotsQTY,cdsOnHandLots : TClientDataSet;
    reqItemFinishCount,IssueItemACCM,IssueItemQTY:integer;
begin
  if not cdsCuttingHdr.Active then Exit;

  if ((cdsCuttingHdr.State in [dsedit,dsinsert]) or ( cdsCuttingDtl.State in [dsedit,dsinsert] )) then
  begin
    Application.MessageBox(pchar('��سҷӡ�úѹ�֡��͹ !!!'),pchar('Confirm'),MB_OK or MB_ICONWARNING);
    Exit;
  end;

  if cdsCuttingHdr.FieldByName('CUHFLG').AsString='A' then
  begin
    Application.MessageBox(pchar('��¡�ö١͹��ѵ����� �������ö͹��ѵ��� !!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
    Exit;
  end;

    IssueQty:=0;
    ItemBalanceQty := 0;
    reqItemFinishCount :=0;
    IssueReqQty := 0;


    // check onhand

    SiMain.LogMessage('check onhand');
    cdsOnHandLotsQTY := TClientDataSet.Create(nil);
    cdsOnHandLotsQTY.Data := GetDataSet(
     ' select  '+
     ' 	ifnull(sum(STLQTY),0) all_qty from ICMTTSTL  '+
     ' where  '+
     ' 		STLPRD='+cdsCuttingDtl.fieldbyname('CUDPRD').AsString+' and STLWH1='+cdsCuttingHdr.fieldbyname('CUHWH1').AsString+' and STLUNI='+cdsCuttingDtl.fieldbyname('CUDUNI').AsString+' and STLPAC='+cdsCuttingDtl.fieldbyname('CUDPAC').AsString+' '+
     ' and STLQTY>0 '+
     ' order by STLEXP '
    );


    if cdsOnHandLotsQTY.FieldByName('all_qty').AsInteger>=cdsCuttingDtl.FieldByName('CUDQTY').AsInteger then
    begin

    end else
    begin
      // issue item 0
      if Application.MessageBox(pchar('�Թ������ͨ��� �س��ͧ���͹��ѵ���¡���������!!!'),pchar('Warning'),MB_ICONWARNING or MB_YESNO)=mrNo then
       Exit;
    end;






  {*****************************}
  if Application.MessageBox(pchar('�׹�ѹ͹��ѵ�㺵Ѵ�����Թ��� !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    if not (cdsCuttingHdr.State in [dsedit,dsinsert]) then cdsCuttingHdr.Edit;
    cdsCuttingHdr.FieldByName('CUHFLG').AsString:='A';
    cdsCuttingHdr.FieldByName('CUHFL1').AsString:='Y'; // read only flag

    //cdsIssueHeader.FieldByName('RCHREV').AsInteger := FReviseNum+1;

    cdsCuttingHdr.Post;


    if cdsCuttingHdr.ChangeCount>0 then
    begin
      UpdateDataset(cdsCuttingHdr,'select * from ICMTTCUH where CUHCOD='+IntToStr(FCuttCode));
      //btnApprove.Enabled := false;

      //
      if cdsCuttingDtl.RecordCount>0 then
      begin
        cdsCuttingDtl.First;
        icount :=0;
        cdsOnHandLots := TClientDataSet.Create(nil);

        while not cdsCuttingDtl.Eof do
        begin


            cdsOnHandLots.Data:=GetDataSet(
               ' select  '+
               ' 	STLPRD,STLWH1,STLUNI,STLPAC,STLLOT,STLQTY,STLEXP,STLEXC from ICMTTSTL  '+
               ' where  '+
               ' 	STLPRD='+cdsCuttingDtl.fieldbyname('CUDPRD').AsString+' and STLWH1='+cdsCuttingHdr.fieldbyname('CUHWH1').AsString+' and STLUNI='+cdsCuttingDtl.fieldbyname('CUDUNI').AsString+' and STLPAC='+cdsCuttingDtl.fieldbyname('CUDPAC').AsString+' '+
               ' and STLQTY>0 '+
               ' order by STLEXP '
            );

            if cdsOnHandLots.RecordCount<=0 then
            begin
              Application.MessageBox(pchar('��辺��¡���Թ����������ö ͹��ѵ���¡����!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;// else




          IssueItemACCM :=  cdsCuttingDtl.FieldByName('CUDQTY').AsInteger;
          IssueItemQTY  :=  0;

          SiMain.LogMessage('Department Lot found :'+IntToStr(cdsOnHandLots.RecordCount));

          cdsOnHandLots.first;
          while not cdsOnHandLots.Eof do
          begin
            if cdsCuttingDtl.FieldByName('CUDQTY').AsInteger>0 then
            begin
              inc(icount);

              if not (cdsCuttingDtl.State in [dsinsert,dsedit]) then cdsCuttingDtl.Edit;
              cdsCuttingDtl.FieldByName('CUDLOT').AsString:=cdsOnHandLots.fieldbyname('STLLOT').AsString;
              cdsCuttingDtl.Post;



              if cdsOnHandLots.fieldbyname('STLQTY').asinteger >= IssueItemACCM then
                IssueItemQTY := IssueItemACCM
              else //if cdsOnHandLots.fieldbyname('STLQTY').asinteger < IssueItemACCM
                IssueItemQTY := cdsOnHandLots.fieldbyname('STLQTY').asinteger;


              // issue from department
              PostStkTransaction(
                'D',11,cdsCuttingDtl.fieldbyname('CUDPRD').asinteger,cdsCuttingDtl.fieldbyname('CUDPCD').asstring
                ,0
                ,cdsCuttingHdr.fieldbyname('CUHWH1').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDUNI').asinteger
                ,cdsCuttingDtl.fieldbyname('CUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',-1,cdsCuttingDtl.fieldbyname('CUDCOS').ascurrency
                ,cdsCuttingDtl.fieldbyname('CUDCOD').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDCDE').AsString
                ,icount
              );
              PostStk(
                '00',11,cdsCuttingDtl.fieldbyname('CUDPRD').asinteger,cdsCuttingDtl.fieldbyname('CUDPCD').asstring
                ,0
                ,cdsCuttingHdr.fieldbyname('CUHWH1').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDUNI').asinteger
                ,cdsCuttingDtl.fieldbyname('CUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',-1,cdsCuttingDtl.fieldbyname('CUDCOS').ascurrency
                ,cdsCuttingDtl.fieldbyname('CUDCOD').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDCDE').AsString
                ,icount
              );


              //end;
            end;
            cdsOnHandLots.Next;
          end;   // while


          cdsCuttingDtl.Next;
        end;
      end;


      if cdsCuttingDtl.ChangeCount>0 then
        UpdateDataset(cdsCuttingDtl,'select * from ICMTTCUD limit 0');
     


    end;

    Application.MessageBox(pchar('͹��ѵ����º����'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);    
  end;



end;

procedure TfrmMasterCutting.PostStk(STKTYPE: string; STKMVC,
  STKPRD: integer; STKPCD: string; STKWH0, STKWH1, STKUNI, STKPAC, STKQTY,
  STKLOC: integer; STKLOT: string; STKEXP: tdatetime; STKFLG: string;
  STKCAL: integer; STKCOS: currency; STKRF0: integer; STKRF1: string;
  STKSEQ: integer);
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

procedure TfrmMasterCutting.PostStkTransaction(STKTYP: string; STKMVC,
  STKPRD: integer; STKPCD: string; STKWH0, STKWH1, STKUNI, STKPAC, STKQTY,
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

        Application.MessageBox(pchar('͹��ѵ����º����'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);

      end;




    finally
      cdsStockLOT.Free;
      cdsMasterStock.Free;

    end;
end;

procedure TfrmMasterCutting.btnCancelApproveClick(Sender: TObject);
var icount,IssueQty,IssueReqQty,ItemBalanceQty:integer;
    cdsCurrIssueItems,cdsDepartmentItems,cdsTemp,cdsOnHandLotsQTY,cdsOnHandLots : TClientDataSet;
    reqItemFinishCount,IssueItemACCM,IssueItemQTY:integer;
begin
  if not cdsCuttingHdr.Active then Exit;

  if ((cdsCuttingHdr.State in [dsedit,dsinsert]) or ( cdsCuttingDtl.State in [dsedit,dsinsert] )) then
  begin
    Application.MessageBox(pchar('��سҷӡ�úѹ�֡��͹ !!!'),pchar('Confirm'),MB_OK or MB_ICONWARNING);
    Exit;
  end;

    IssueQty:=0;
    ItemBalanceQty := 0;
    reqItemFinishCount :=0;
    IssueReqQty := 0;


    // check onhand
    {
    SiMain.LogMessage('check onhand');
    cdsOnHandLotsQTY := TClientDataSet.Create(nil);
    cdsOnHandLotsQTY.Data := GetDataSet(
     ' select  '+
     ' 	ifnull(sum(STLQTY),0) all_qty from ICMTTSTL  '+
     ' where  '+
     ' 		STLPRD='+cdsCuttingDtl.fieldbyname('CUDPRD').AsString+' and STLWH1='+cdsCuttingHdr.fieldbyname('CUHWH1').AsString+' and STLUNI='+cdsCuttingDtl.fieldbyname('CUDUNI').AsString+' and STLPAC='+cdsCuttingDtl.fieldbyname('CUDPAC').AsString+' '+
     ' and STLQTY>0 '+
     ' order by STLEXP '
    );
    }

    {
    if cdsOnHandLotsQTY.FieldByName('all_qty').AsInteger>=cdsCuttingDtl.FieldByName('CUDQTY').AsInteger then
    begin

    end else
    begin
      // issue item 0
      if Application.MessageBox(pchar('�Թ������ͨ��� �س��ͧ���͹��ѵ���¡���������!!!'),pchar('Warning'),MB_ICONWARNING or MB_YESNO)=mrNo then
       Exit;
    end;
    }

  {*****************************}
  if Application.MessageBox(pchar('�׹�ѹ¡��ԡ͹��ѵ�㺵Ѵ�����Թ��� !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    if not (cdsCuttingHdr.State in [dsedit,dsinsert]) then cdsCuttingHdr.Edit;
    cdsCuttingHdr.FieldByName('CUHFLG').AsString:='C';
    cdsCuttingHdr.FieldByName('CUHFL1').AsString:='N'; // read only flag

    //cdsIssueHeader.FieldByName('RCHREV').AsInteger := FReviseNum+1;

    cdsCuttingHdr.Post;


    if cdsCuttingHdr.ChangeCount>0 then
    begin
      UpdateDataset(cdsCuttingHdr,'select * from ICMTTCUH where CUHCOD='+IntToStr(FCuttCode));
      //btnApprove.Enabled := false;

      //
      if cdsCuttingDtl.RecordCount>0 then
      begin
        cdsCuttingDtl.First;
        icount :=0;
        cdsOnHandLots := TClientDataSet.Create(nil);

        while not cdsCuttingDtl.Eof do
        begin


            cdsOnHandLots.Data:=GetDataSet(
               ' select  '+
               ' 	STLPRD,STLWH1,STLWH0,STLUNI,STLPAC,STLLOT,STLQTY,STLEXP,STLEXC from ICMTTSTL  '+
               ' where  '+
               ' 	STLPRD='+cdsCuttingDtl.fieldbyname('CUDPRD').AsString+' and STLWH1='+cdsCuttingHdr.fieldbyname('CUHWH1').AsString+' and STLWH0 ='+cdsCuttingDtl.fieldbyname('CUDWH0').AsString+'  and STLUNI='+cdsCuttingDtl.fieldbyname('CUDUNI').AsString+' and STLPAC='+cdsCuttingDtl.fieldbyname('CUDPAC').AsString+' '+
               '  '+
              // ' and STLQTY>0 '+
               ' order by STLEXP '
            );

            if cdsOnHandLots.RecordCount<=0 then
            begin
              Application.MessageBox(pchar('��辺��¡���Թ����������ö ͹��ѵ���¡����!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;// else

           




          IssueItemACCM :=  cdsCuttingDtl.FieldByName('CUDQTY').AsInteger;
          IssueItemQTY  :=  0;

          SiMain.LogMessage('Department Lot found :'+IntToStr(cdsOnHandLots.RecordCount));

          cdsOnHandLots.first;
          while not cdsOnHandLots.Eof do
          begin
            if cdsCuttingDtl.FieldByName('CUDQTY').AsInteger>0 then
            begin
              inc(icount);

              if cdsOnHandLots.fieldbyname('STLQTY').asinteger >= IssueItemACCM then
                IssueItemQTY := IssueItemACCM
              else //if cdsOnHandLots.fieldbyname('STLQTY').asinteger < IssueItemACCM
                IssueItemQTY := cdsOnHandLots.fieldbyname('STLQTY').asinteger;


              // issue from department
              PostStkTransaction(
                'D',12,cdsCuttingDtl.fieldbyname('CUDPRD').asinteger,cdsCuttingDtl.fieldbyname('CUDPCD').asstring
                ,0
                ,cdsCuttingHdr.fieldbyname('CUHWH1').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDUNI').asinteger
                ,cdsCuttingDtl.fieldbyname('CUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',1,cdsCuttingDtl.fieldbyname('CUDCOS').ascurrency
                ,cdsCuttingDtl.fieldbyname('CUDCOD').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDCDE').AsString
                ,icount
              );
              PostStk(
                '00',12,cdsCuttingDtl.fieldbyname('CUDPRD').asinteger,cdsCuttingDtl.fieldbyname('CUDPCD').asstring
                ,0
                ,cdsCuttingHdr.fieldbyname('CUHWH1').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDUNI').asinteger
                ,cdsCuttingDtl.fieldbyname('CUDPAC').asinteger,IssueItemQTY
                ,0,cdsOnHandLots.fieldbyname('STLLOT').AsString
                ,cdsOnHandLots.fieldbyname('STLEXP').asdatetime,'A',1,cdsCuttingDtl.fieldbyname('CUDCOS').ascurrency
                ,cdsCuttingDtl.fieldbyname('CUDCOD').AsInteger
                ,cdsCuttingDtl.fieldbyname('CUDCDE').AsString
                ,icount
              );


              //end;
            end;
            cdsOnHandLots.Next;
          end;   // while


          cdsCuttingDtl.Next;
        end;
      end;


      Application.MessageBox(pchar('͹��ѵ����º����'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);
    end;
  end;



end;


procedure TfrmMasterCutting.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterCutting.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

end.
