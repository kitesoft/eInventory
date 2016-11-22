unit EditUnitPackingFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, Mask, RzEdit, RzDBEdit,
  RzLabel, DBCtrls, DB, DBClient;

type
  TfrmEditUnitPacking = class(TForm)
    RzPanel1: TRzPanel;
    btnSaveUnit: TRzBitBtn;
    btnCancelUnit: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzLabel2: TRzLabel;
    DBCheckBox1: TDBCheckBox;
    cdsPackUnit: TClientDataSet;
    dsPackUnit: TDataSource;
    DBCheckBox2: TDBCheckBox;
    procedure btnCancelUnitClick(Sender: TObject);
    procedure btnSaveUnitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FPackUniUNI: integer;
    FPackUniCOD: integer;
    FPackPacName: string;
    procedure SetPackUniCOD(const Value: integer);
    procedure SetPackUniUNI(const Value: integer);
    procedure SetPackPacName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property PackUniCOD : integer read FPackUniCOD write SetPackUniCOD;
    property PackUniUNI :integer read FPackUniUNI write SetPackUniUNI;
    property PackPacName : string read FPackPacName write SetPackPacName;
  end;

var
  frmEditUnitPacking: TfrmEditUnitPacking;

implementation

uses CdeLIB, STDLIB;

{$R *.dfm}

{ TfrmEditUnitPacking }

procedure TfrmEditUnitPacking.SetPackUniCOD(const Value: integer);
begin
  FPackUniCOD := Value;
  cdsPackUnit.Data := GetDataSet('select * from ICMTTPAC where PACCOD='+IntToStr(FPackUniCOD));
end;

procedure TfrmEditUnitPacking.SetPackUniUNI(const Value: integer);
begin
  FPackUniUNI := Value;
end;

procedure TfrmEditUnitPacking.btnCancelUnitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditUnitPacking.btnSaveUnitClick(Sender: TObject);
var IsNew : boolean;
begin
  if cdsPackUnit.State in [dsinsert] then
  begin
    IsNew :=true;
    cdsPackUnit.FieldByName('PACUNI').AsInteger :=FPackUniUNI;
    if cdsPackUnit.FieldByName('PACFLG').IsNull then
      cdsPackUnit.FieldByName('PACFLG').AsString:='N';
    if cdsPackUnit.FieldByName('PACACT').IsNull then
      cdsPackUnit.FieldByName('PACACT').AsString:='A';

//    cdsPackUnit.FieldByName('PACCOD').AsInteger :=getCdeRunWithLen(FPackUniUNI,'SETTING','RUNNING','PACCOD','CDENM1');
    cdsPackUnit.FieldByName('PACCOD').AsInteger :=getPackingRunWithLen(FPackUniUNI,'SETTING','RUNNING','PACCOD','CDENM1',FPackUniUNI);
    cdsPackUnit.FieldByName('PACCDE').AsInteger :=getPackingRunWithLen(FPackUniUNI,'SETTING','RUNNING','PACCOD','CDENM1',FPackUniUNI);
//    cdsPackUnit.FieldByName('PACCDE').AsString :=getPackingRunWithLenFormat(FPackUniUNI,'SETTING','RUNNING','PACCOD','CDENM1',FPackUniUNI);

    if cdsPackUnit.FieldByName('PACFLG').AsString<>'Y' then
      cdsPackUnit.FieldByName('PACNAM').AsString :=cdsPackUnit.FieldByName('PACNAM').AsString+'(x'+cdsPackUnit.FieldByName('PACRAT').AsString+')';
  end;



  if cdsPackUnit.State in [dsedit,dsinsert] then cdsPackUnit.Post;
  if cdsPackUnit.ChangeCount>0 then
  begin
    UpdateDataset(cdsPackUnit,'select * from ICMTTPAC where PACCOD='+IntToStr(FPackUniCOD)) ;
    if IsNew then
    //setCdeRun('SETTING','RUNNING','PACCOD','CDENM1');
    setPackingRun(FPackUniUNI);
  end;

  FPackUniCOD := cdsPackUnit.FieldByName('PACCOD').AsInteger;
  Close;
end;

procedure TfrmEditUnitPacking.SetPackPacName(const Value: string);
begin
  FPackPacName := Value;
end;

procedure TfrmEditUnitPacking.FormShow(Sender: TObject);
begin
  if trim(FPackPacName)<>'' then
    begin
      if not (cdsPackUnit.State in [dsinsert,dsedit]) then cdsPackUnit.Edit;
        cdsPackUnit.FieldByName('PACNAM').AsString :=FPackPacName;

    end;
end;

procedure TfrmEditUnitPacking.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelUnitClick(nil);
  if Key=VK_F11 then  btnSaveUnitClick(nil);
end;

end.
