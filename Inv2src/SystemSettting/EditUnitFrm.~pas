unit EditUnitFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, Mask, RzEdit, RzDBEdit,
  RzLabel, DBCtrls, DB, DBClient;

type
  TfrmEditUnit = class(TForm)
    RzPanel1: TRzPanel;
    btnSaveUnit: TRzBitBtn;
    btnCancelUnit: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsUnit: TClientDataSet;
    dsUnit: TDataSource;
    procedure btnSaveUnitClick(Sender: TObject);
    procedure btnCancelUnitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FUnitID: integer;
    procedure SetUnitID(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property UnitID : integer read FUnitID write SetUnitID;
  end;

var
  frmEditUnit: TfrmEditUnit;

implementation

uses CommonLIB, STDLIB, CdeLIB;

{$R *.dfm}

{ TfrmEditUnit }

procedure TfrmEditUnit.SetUnitID(const Value: integer);
begin
  FUnitID := Value;
  cdsUnit.Data := GetDataSet('select * from ICMTTUNI where UNICOD='+IntToStr(FUnitID))  ;
end;

procedure TfrmEditUnit.btnSaveUnitClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsUnit.State in [dsinsert] then
  begin
    IsNew := true;
    cdsUnit.FieldByName('UNICOD').AsInteger :=getCdeRun('SETTING','RUNNING','UNICOD','CDENM1');
    if cdsUnit.FieldByName('UNIACT').IsNull then
        cdsUnit.FieldByName('UNIACT').AsString:='A';

  end;


  if cdsUnit.State in [dsedit,dsinsert] then cdsUnit.Post;
  if cdsUnit.ChangeCount>0 then
  begin
    UpdateDataset(cdsUnit,'select * from ICMTTUNI where UNICOD='+IntToStr(FUnitID)) ;
    if IsNew then  setCdeRun('SETTING','RUNNING','UNICOD','CDENM1');
  end;

  FUnitID := cdsUnit.FieldByName('UNICOD').AsInteger;
  Close;
end;

procedure TfrmEditUnit.btnCancelUnitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditUnit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelUnitClick(nil);
  if Key=VK_F11 then  btnSaveUnitClick(nil);
end;

end.
