unit EditProdTypeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel;

type
  TfrmEditProdType = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    btnSaveProd: TRzBitBtn;
    btnCancelProd: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsProdType: TClientDataSet;
    dsProdType: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveProdClick(Sender: TObject);
    procedure btnCancelProdClick(Sender: TObject);
  private
    FProdTypeCode: integer;
    procedure SetProdTypeCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property ProdTypeCode : integer read FProdTypeCode write SetProdTypeCode;
  end;

var
  frmEditProdType: TfrmEditProdType;

implementation

uses STDLIB, CdeLIB;

{$R *.dfm}

procedure TfrmEditProdType.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelProdClick(nil);
  if Key=VK_F11 then  btnSaveProdClick(nil);
end;

procedure TfrmEditProdType.btnSaveProdClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsProdType.State in [dsinsert] then
  begin
    IsNew := true;
    cdsProdType.FieldByName('PTYCOD').AsInteger :=getCdeRun('SETTING','RUNNING','PTYCOD','CDENM1');
    if cdsProdType.FieldByName('PTYACT').IsNull then
        cdsProdType.FieldByName('PTYACT').AsString:='A';

  end;


  if cdsProdType.State in [dsedit,dsinsert] then cdsProdType.Post;
  if cdsProdType.ChangeCount>0 then
  begin
    UpdateDataset(cdsProdType,'select * from ICMTTPTY where PTYCOD='+IntToStr(FProdTypeCode)) ;
    if isNew then
    setCdeRun('SETTING','RUNNING','PTYCOD','CDENM1');

  end;

   FProdTypeCode:= cdsProdType.FieldByName('PTYCOD').AsInteger;
   Close;
end;

procedure TfrmEditProdType.btnCancelProdClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmEditProdType.SetProdTypeCode(const Value: integer);
begin
  FProdTypeCode := Value;
  cdsProdType.Data := GetDataSet('select * from ICMTTPTY where PTYCOD='+IntToStr(FProdTypeCode));
end;

end.
