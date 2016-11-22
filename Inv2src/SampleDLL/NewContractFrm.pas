unit NewContractFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, RzLabel, Mask, RzEdit, RzDBEdit,
  ComCtrls, RzButton, DBGridEh, DBCtrlsEh, DBLookupEh, DB, DBClient,
  DBCtrls, RzDBCmbo, Buttons;

type
  TfrmNewContract = class(TForm)
    pnAllClients: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgDetail: TPageControl;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    edCifCode: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    TabSheet2: TTabSheet;
    btnOK: TRzBitBtn;
    btnClose: TRzBitBtn;
    TabSheet1: TTabSheet;
    cmbRates: TDBLookupComboboxEh;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzLabel21: TRzLabel;
    cdsContract: TClientDataSet;
    dsContract: TDataSource;
    dsRates: TDataSource;
    cdsRates: TClientDataSet;
    dsContractRate: TDataSource;
    cdsContractRate: TClientDataSet;
    RzLabel22: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    cdsContractStatus: TClientDataSet;
    dsContractStatus: TDataSource;
    sbtSearch: TSpeedButton;
    dsCustomer: TDataSource;
    cdsCustomer: TClientDataSet;
    btnApprove: TRzBitBtn;
    btnCancelContract: TRzBitBtn;
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsRatesDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbtSearchClick(Sender: TObject);
    procedure cdsContractBeforePost(DataSet: TDataSet);
    procedure RzDBEdit5Exit(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure btnCancelContractClick(Sender: TObject);
  private
    { Private declarations }
    FIsOK: boolean;
    FConRun: string;
    procedure SetIsOK(const Value: boolean);
    procedure getRates();
    procedure getConTract();
    procedure getContractStatus();
    procedure getCustomer(cifcode:string);

    procedure SetConRun(const Value: string);
    procedure initButton(docStatus:string);


  public
    { Public declarations }
    mstSQL:string;

    property IsOK:boolean read FIsOK write SetIsOK;
    property ConRun:string read FConRun write SetConRun;
  end;

var
  frmNewContract: TfrmNewContract;

implementation

uses CommonLIB, STDLIB, CommonUtils, Math, CdeLIB;

{$R *.dfm}

procedure TfrmNewContract.btnCloseClick(Sender: TObject);
begin
  FIsOK := false;
  Close;
end;

procedure TfrmNewContract.SetIsOK(const Value: boolean);
begin
  FIsOK := Value;
end;

procedure TfrmNewContract.btnOKClick(Sender: TObject);
var cdsTempConIns : TClientDataSet;
    item:integer;
   // yyyy,mm,dd:word;
   dueDate : TDateTime;
begin
  try

    if not btnOK.Enabled then Exit;


    FIsOK :=true;
    dueDate := Now;

    if cdsContract.State in [dsinsert,dsedit] then cdsContract.Post;

    if cdsContract.changecount>0 then
      UpdateDataset(cdsContract,mstsql);

    if cdsContract.fieldbyname('CONSTS').AsString='Y' then
    begin
      cdsTempConIns := TClientDataSet.Create(nil);
      
      cdsTempConIns.Data := GetDataSet('select * from MTTINS00 where INSRUN='''+cdsContract.fieldbyname('CONRUN').AsString+'''');

      if cdsTempConIns.RecordCount>0 then
        while not (cdsTempConIns.Eof) do cdsTempConIns.Delete;


      if cdsTempConIns.ChangeCount>0 then
        UpdateDataset(cdsTempConIns,'select * from MTTINS00 where INSRUN='''+cdsContract.fieldbyname('CONRUN').AsString+'''');        

      //DecodeDate(cdsContract.fieldbyname('CONDTE').asdatetime,yyyy,mm,dd);

      for item := 1 to cdsContract.fieldbyname('CONPER').AsInteger do
      begin
        cdsTempConIns.Append;
        cdsTempConIns.FieldByName('INSACT').AsString:='A';
        cdsTempConIns.FieldByName('INSRUN').AsString:=cdsContract.fieldbyname('CONRUN').AsString;
        cdsTempConIns.FieldByName('INSITM').AsInteger:=item;

        cdsTempConIns.FieldByName('INSIAM').AsCurrency:=cdsContract.fieldbyname('CONMAM').AsCurrency;
        cdsTempConIns.FieldByName('INSVAM').AsCurrency:=cdsContract.fieldbyname('CONMVM').AsCurrency;
        duedate:=IncMonth(cdsContract.fieldbyname('CONDTE').asdatetime,item);

        cdsTempConIns.FieldByName('INSNAM').AsCurrency:=cdsContract.fieldbyname('CONMRT').AsCurrency;
        cdsTempConIns.FieldByName('INSF01').AsString:='N';
        cdsTempConIns.FieldByName('INSETD').AsDateTime:=Now;
        cdsTempConIns.FieldByName('INSDUE').AsDateTime:=duedate;


        cdsTempConIns.Post;

      end;

      if cdsTempConIns.ChangeCount>0 then
        UpdateDataset(cdsTempConIns,'select * from MTTINS00 where INSRUN='''+cdsContract.fieldbyname('CONRUN').AsString+'''');
    end;
    
    MessageDlg('บันทึกเรียบร้อย !!!',mtInformation,[mbOK],0);
  except
    on ee:Exception do
      begin
        Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONERROR);
      end;
  end;

  Close;
end;

procedure TfrmNewContract.FormShow(Sender: TObject);
begin
  IsOK := false;

  //
  getRates;
  getContractStatus;
  getConTract();
end;

procedure TfrmNewContract.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key= VK_ESCAPE then btnCloseClick(nil);
  if Key= VK_F11 then btnOKClick(nil);
  if Key= VK_F6 then sbtSearchClick(nil);

end;

procedure TfrmNewContract.getRates;
begin
  cdsRates.Data:=GetDataSet('select * from MTTRTE00');
end;

procedure TfrmNewContract.getConTract();
begin
end;

procedure TfrmNewContract.SetConRun(const Value: string);
begin
  FConRun := Value;
  mstSQL:= 'select * from MTTCON00 where CONRUN='''+Value+'''';

  cdsContract.Data :=GetDataSet(mstSQL);

  if cdsContract.RecordCount=0 then
    if not (cdsContract.State in [dsinsert,dsedit]) then
      begin
        cdsContract.Edit;
        cdsContract.FieldByName('CONRUN').AsString:=Value;
      end;

  getCustomer(cdsContract.fieldbyname('concif').AsString);
  initButton(cdsContract.fieldbyname('consts').AsString);


end;

procedure TfrmNewContract.dsRatesDataChange(Sender: TObject;
  Field: TField);
begin
  if  not cdsContract.fieldbyname('CONRTE').IsNull then
    cdsContractRate.Data:=GetDataSet('select * from MTTRTE00 where RTECDE='''+cdsContract.fieldbyname('CONRTE').AsString+'''');
end;

procedure TfrmNewContract.FormCreate(Sender: TObject);
begin
   SetChildTaborders(pnAllClients);
   SetControl(pgDetail,false);   
end;

procedure TfrmNewContract.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton) then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End;
end;

procedure TfrmNewContract.getContractStatus;
begin
  cdsContractStatus.Data := GetDataSet('select * from MTTCDE00 where CDEGRP=''CONTRACT'' and CDEABR=''STATUS'' and CDEACT=''A'' order by CDEITM');
end;

procedure TfrmNewContract.sbtSearchClick(Sender: TObject);
{
begin
//
end;
}

var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SelecField,_SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('CIFCODE','รหัส'));
  _SearchType.Add(TStringValue.Create('FNAME','ชื่อ'));
  _SearchType.Add(TStringValue.Create('LNAME','สกุล'));
  _SearchType.Add(TStringValue.Create('IDCARD','รหัสประจำตัวประชาชน'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('CIFCODE','รหัส'));
  _Cols.Add(TStringValue.Create('FNAME','ชื่อ'));
  _Cols.Add(TStringValue.Create('LNAME','สกุล'));
  _Cols.Add(TStringValue.Create('IDCARD','รหัสประจำตัวประชาชน'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','100'));
  _ColsWidth.Add(TStringValue.Create('2','200'));
  _ColsWidth.Add(TStringValue.Create('3','200'));
  _ColsWidth.Add(TStringValue.Create('4','300'));

  Parameter.SearchTitle:='รายชื่อ';
  executilsdxInitialize;
  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'CIFCODE','select * from MTTCUS00 where status<>''I''');


  if not (cdsContract.State in [dsedit,dsinsert]) then cdsContract.Edit;

  if Trim(_Parameter.SelectCode)<>'' then
  begin
    cdsContract.FieldByName('CONCIF').AsString:= _Parameter.SelectCode;
    getCustomer(_Parameter.SelectCode);
    edCifCode.SetFocus;
    edCifCode.SelectAll;

    SetControl(pgDetail,true);    
  end;



end;


procedure TfrmNewContract.getCustomer(cifcode: string);
begin
  cdsCustomer.Data := GetDataSet('select * from mttcus00 where cifcode='''+cifcode+'''');
end;

procedure TfrmNewContract.initButton(docStatus:string);
begin
  btnOK.Enabled := getCdeAdjOption('STATUS','CONTRACT',docStatus);
end;

procedure TfrmNewContract.cdsContractBeforePost(DataSet: TDataSet);
var cdsTemp : TClientDataSet;
begin
  try


    DataSet.FieldByName('CONITR').AsCurrency := ( DataSet.fieldbyname('CONAMT').AsCurrency * cdsContractRate.fieldbyname('RTEPER').AsFloat ) / 100;
    DataSet.FieldByName('CONNET').AsCurrency :=  DataSet.fieldbyname('CONAMT').AsCurrency  + DataSet.fieldbyname('CONITR').AsCurrency   ;
    if  DataSet.FieldByName('CONSTS').AsString='Y' then
      DataSet.FieldByName('CONDTE').AsDateTime := Now;


    cdsTemp := TClientDataSet.Create(nil);

    if not (DataSet.FieldByName('CONRTE').IsNull) then
    begin
        cdsTemp.Data := GetDataSet('select * from MTTRTE00 where RTECDE='''+trim(DataSet.FieldByName('CONRTE').AsString)+'''');
        if cdsTemp.Active then
          if cdsTemp.RecordCount>0 then
          begin
             DataSet.FieldByName('CONPER').AsCurrency := cdsTemp.fieldbyname('RTEMPE').AsCurrency;


             DataSet.FieldByName('CONMRT').AsCurrency := DataSet.FieldByName('CONNET').AsCurrency/DataSet.FieldByName('CONPER').AsInteger;
             DataSet.FieldByName('CONMAM').AsCurrency := DataSet.FieldByName('CONAMT').AsCurrency/DataSet.FieldByName('CONPER').AsInteger;
             DataSet.FieldByName('CONMVM').AsCurrency
                := ((DataSet.FieldByName('CONAMT').AsCurrency/DataSet.FieldByName('CONPER').AsInteger )*cdsTemp.FieldByName('RTEPER').AsCurrency)/100;

             DataSet.FieldByName('CONWRT').AsCurrency := DataSet.FieldByName('CONNET').AsCurrency/(DataSet.FieldByName('CONPER').AsInteger*2);
             DataSet.FieldByName('CONWAM').AsCurrency := DataSet.FieldByName('CONAMT').AsCurrency/(DataSet.FieldByName('CONPER').AsInteger*2);
             DataSet.FieldByName('CONWVM').AsCurrency
                := ((DataSet.FieldByName('CONAMT').AsCurrency/(DataSet.FieldByName('CONPER').AsInteger*2))*cdsTemp.FieldByName('RTEPER').AsCurrency)/100;

          end;
    end;


  finally
    cdsTemp.Free;
  end;
end;

procedure TfrmNewContract.RzDBEdit5Exit(Sender: TObject);
begin
  if cdsContract.State in [dsInsert,dsEdit] then
  cdsContract.Post;
end;

procedure TfrmNewContract.btnApproveClick(Sender: TObject);
begin
  if not (cdsContract.State in [dsInsert,dsEdit] ) then cdsContract.Edit;
  cdsContract.FieldByName('CONSTS').AsString:='Y';

  cdsContract.Post;

  if cdsContract.ChangeCount>0 then
    UpdateDataset(cdsContract,'select * from MTTCON00 where CONRUN='''+FConRun+'''');

  Close;    
end;

procedure TfrmNewContract.btnCancelContractClick(Sender: TObject);
begin
  if not (cdsContract.State in [dsInsert,dsEdit] ) then cdsContract.Edit;
  cdsContract.FieldByName('CONSTS').AsString:='C';
  cdsContract.Post;


  if cdsContract.ChangeCount>0 then
    UpdateDataset(cdsContract,'select * from MTTCON00 where CONRUN='''+FConRun+'''') ;

  Close;

end;

end.
