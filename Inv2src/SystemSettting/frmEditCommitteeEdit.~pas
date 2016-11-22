unit frmEditCommitteeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel, RzCmboBx, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid,CommonLIB;

type
  TfrmEditCommittee = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    RzDBEdit2: TRzDBEdit;
    cdsCmmHdr: TClientDataSet;
    dsCmmHdr: TDataSource;
    grdAllReceives: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    btnAdd: TRzBitBtn;
    btnDelete: TRzBitBtn;
    cdsCmmDtl: TClientDataSet;
    dsCmmDtl: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FAppParameter: TDLLParameter;
    FCMHCode: integer;
    FCMHType: integer;
    { Private declarations }
    procedure refreshData();
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetCMHCode(const Value: integer);
    procedure SetCMHType(const Value: integer);
  public
    { Public declarations }
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
    property CMHCode : integer read FCMHCode write SetCMHCode;
    property CMHType : integer read FCMHType write SetCMHType;

  end;

var
  frmEditCommittee: TfrmEditCommittee;

implementation

uses  CdeLIB, STDLIB, CommonUtils, STK_LIB;

{$R *.dfm}

procedure TfrmEditCommittee.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditCommittee.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsCmmDtl.RecordCount<=0 then
  begin
      Application.MessageBox(pchar('ไม่สามารถบันทึกรายการได้'+#10#13+'กรุณาระบุข้อมูลให้ครบถ้วนก่อน!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
  end;



  if cdsCmmHdr.State in [dsinsert] then
  begin
    IsNew := true;
    cdsCmmHdr.FieldByName('CMHCOD').AsInteger :=getCdeRun('SETTING','RUNNING','CMHCOD','CDENM1');

    if cdsCmmHdr.FieldByName('CMHCDE').IsNull then
      cdsCmmHdr.FieldByName('CMHCDE').AsString:=FormatCurr('000',cdsCmmHdr.FieldByName('CMHCOD').AsInteger);
      
    cdsCmmHdr.FieldByName('CMHTYP').AsInteger:=FCMHType;
    if cdsCmmHdr.FieldByName('CMHACT').IsNull then
        cdsCmmHdr.FieldByName('CMHACT').AsString:='A';


  end;


  if cdsCmmHdr.State in [dsedit,dsinsert] then cdsCmmHdr.Post;
  if cdsCmmHdr.ChangeCount>0 then
  begin
    UpdateDataset(cdsCmmHdr,'select * from ICMTTCMH limit 0') ;
    if isNew then
    setCdeRun('SETTING','RUNNING','CMHCOD','CDENM1');
  end;

   cdsCmmDtl.First;
   while not cdsCmmDtl.Eof do
   begin

    cdsCmmDtl.Edit;
    cdsCmmDtl.FieldByName('CMDCOD').AsInteger:=cdsCmmHdr.FieldByName('CMHCOD').AsInteger;
    cdsCmmDtl.Post;

    cdsCmmDtl.Next;
   end;

  if cdsCmmDtl.ChangeCount>0 then
  begin
    UpdateDataset(cdsCmmDtl,'select * from ICMTTCMD limit 0') ;
  end;

   FCMHCode :=  cdsCmmHdr.FieldByName('CMHCOD').AsInteger;
   Close;
end;

procedure TfrmEditCommittee.refreshData;
begin
  cdsCmmHdr.Data := GetDataSet('select * from ICMTTCMH where CMHCOD='+IntToStr(FCMHCode)+' and CMHTYP='+IntToStr(FCMHType));
  cdsCmmDtl.Data := GetDataSet('select * from ICMTTCMD where CMDCOD='+IntToStr(FCMHCode)+' and CMDTYP='+IntToStr(FCMHType)+' order by CMDSEQ');
end;

procedure TfrmEditCommittee.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditCommittee.SetCMHCode(const Value: integer);
begin
  FCMHCode := Value;
  refreshData;
end;

procedure TfrmEditCommittee.btnAddClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
  _seq : integer;
begin

  _seq := cdsCmmDtl.RecordCount+1;

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('PERCOD','รหัส'));
  _SearchType.Add(TStringValue.Create('PERCDE','รหัสทั่วไป'));
  _SearchType.Add(TStringValue.Create('PERNAM','ชื่อ'));

  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('PERCOD','รหัส'));
  _Cols.Add(TStringValue.Create('PERCDE','รหัสทั่วไป'));
  _Cols.Add(TStringValue.Create('PERNAM','ชื่อ'));

  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','90'));
  _ColsWidth.Add(TStringValue.Create('3','200'));

  Parameter.SearchTitle:='รายชื่อคลังสินค้า';
  executilsdxInitialize;


  _SQL :=' select * from ICMTTPER where PERACT=''A'' ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'PERCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
     cdsCmmDtl.Append;
     cdsCmmDtl.FieldByName('CMDCOD').AsInteger:=_seq;
     cdsCmmDtl.FieldByName('CMDSEQ').AsInteger:=_seq;
     cdsCmmDtl.FieldByName('CMDTYP').AsInteger:=FCMHType;
     cdsCmmDtl.FieldByName('CMDPER').AsInteger:=StrToInt(_Parameter.SelectCode);
     cdsCmmDtl.FieldByName('CMDPEN').AsString:=getMTTName('PER',_Parameter.SelectCode);
     cdsCmmDtl.FieldByName('CMDPON').AsString:=getMTTName('POS',_Parameter.SelectCode);
     cdsCmmDtl.Post;
  end;


end;

procedure TfrmEditCommittee.btnDeleteClick(Sender: TObject);
begin
    if cdsCmmDtl.RecordCount>0 then
      if not cdsCmmDtl.FieldByName('CMDCOD').IsNull then
        if Application.MessageBox(pchar('ยืนยันลบรายการ ?'),pchar('Confirm'),MB_OKCANCEL or MB_ICONWARNING)=mrOk then
        begin
          cdsCmmDtl.Delete;
        end;
end;

procedure TfrmEditCommittee.SetCMHType(const Value: integer);
begin
  FCMHType := Value;
end;

procedure TfrmEditCommittee.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.
