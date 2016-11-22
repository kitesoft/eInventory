unit EditProdGroupFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel;

type
  TfrmEditProdGroup = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    btnSaveProdgroup: TRzBitBtn;
    btnCancelProdgroup: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsProdGroup: TClientDataSet;
    dsProdGroup: TDataSource;
    procedure btnSaveProdgroupClick(Sender: TObject);
    procedure btnCancelProdgroupClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FProdGroupCode: integer;
    procedure SetProdGroupCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property ProdGroupCode : integer read FProdGroupCode write SetProdGroupCode;
  end;

var
  frmEditProdGroup: TfrmEditProdGroup;

implementation

uses STDLIB, CdeLIB;

{$R *.dfm}

procedure TfrmEditProdGroup.btnSaveProdgroupClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsProdGroup.State in [dsinsert] then
  begin
    IsNew := true;
    cdsProdGroup.FieldByName('PGRCOD').AsInteger :=getCdeRun('SETTING','RUNNING','PGRCOD','CDENM1');
    if cdsProdGroup.FieldByName('PGRACT').IsNull then
        cdsProdGroup.FieldByName('PGRACT').AsString:='A';

  end;


  if cdsProdGroup.State in [dsedit,dsinsert] then cdsProdGroup.Post;
  if cdsProdGroup.ChangeCount>0 then
  begin
    UpdateDataset(cdsProdGroup,'select * from ICMTTPGR where PGRCOD='+IntToStr(FProdGroupCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','PGRCOD','CDENM1');
  end;

   FProdGroupCode:= cdsProdGroup.FieldByName('PGRCOD').AsInteger;
   Close;
end;

procedure TfrmEditProdGroup.btnCancelProdgroupClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditProdGroup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelProdgroupClick(nil);
  if Key=VK_F11 then  btnSaveProdgroupClick(nil);
end;

procedure TfrmEditProdGroup.SetProdGroupCode(const Value: integer);
begin
  FProdGroupCode := Value;
  cdsProdGroup.Data := GetDataSet('select * from ICMTTPGR where PGRCOD='+IntToStr(FProdGroupCode));
end;

end.
