unit CashFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzButton, StdCtrls, Mask, RzEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, RzLabel;

type
  TfrmCash = class(TForm)
    blAllContainer: TBevel;
    btnClose: TRzBitBtn;
    btnOK: TRzBitBtn;
    lbNet: TLabel;
    lbInterest: TLabel;
    lbAmount: TLabel;
    edAmount: TcxCurrencyEdit;
    lbChange: TLabel;
    RzLabel5: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    FIsOK: boolean;
    FCurrAmount: currency;
    FPayAmount: currency;
    FPayNet: currency;
    FPayVat: currency;
    FChagngeAmt: currency;
    FReceiveAmt: currency;
    FReceiveNet: currency;
    procedure SetIsOK(const Value: boolean);
    procedure SetCurrAmount(const Value: currency);
    procedure SetPayAmount(const Value: currency);
    procedure SetPayNet(const Value: currency);
    procedure SetPayVat(const Value: currency);
    procedure SetChagngeAmt(const Value: currency);
    procedure SetReceiveAmt(const Value: currency);
    procedure SetReceiveNet(const Value: currency);
    { Private declarations }
  public
    { Public declarations }
    FAllowCash : boolean;
    property IsOK: boolean read FIsOK write SetIsOK;
    property CurrAmount : currency read FCurrAmount write SetCurrAmount;
    property PayAmount  : currency read FPayAmount write SetPayAmount;
    property PayVat : currency read FPayVat write SetPayVat;
    property PayNet :currency read FPayNet write SetPayNet;
    property ChagngeAmt : currency read FChagngeAmt write SetChagngeAmt;
    property ReceiveAmt : currency read FReceiveAmt write SetReceiveAmt;
    property ReceiveNet : currency read FReceiveNet write SetReceiveNet;
  end;

var
  frmCash: TfrmCash;

implementation

uses Math, CommonLIB;

{$R *.dfm}

procedure TfrmCash.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCash.SetIsOK(const Value: boolean);
begin
  FIsOK := Value;
end;

procedure TfrmCash.btnOKClick(Sender: TObject);
begin
  if not btnOK.Enabled then Exit;
  IsOK :=true;
  Close;
end;

procedure TfrmCash.FormShow(Sender: TObject);
begin
  IsOK := false;
  btnOK.Enabled := false;
  edAmount.SetFocus;
end;

procedure TfrmCash.SetCurrAmount(const Value: currency);
begin
  FCurrAmount := Value;
end;

procedure TfrmCash.SetPayAmount(const Value: currency);
begin
  FPayAmount := Value;
  lbAmount.Caption := FormatCurr('#,##0.00',Value)+' ';
end;

procedure TfrmCash.SetPayNet(const Value: currency);
begin
  FPayNet := Value;
  lbNet.Caption := FormatCurr('#,##0.00',Value)+' ';
end;

procedure TfrmCash.SetPayVat(const Value: currency);
begin
  FPayVat := Value;
  lbInterest.Caption := FormatCurr('#,##0.00',Value)+' ';
end;

procedure TfrmCash.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCloseClick(nil);
  if Key=VK_F11 then  btnOKClick(nil);

end;

procedure TfrmCash.edAmountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key =VK_RETURN then
  begin
    ReceiveAmt := edAmount.Value;
    ChagngeAmt := ReceiveAmt - PayNet;

    if ChagngeAmt>=0 then
    begin
      FAllowCash := true;
      btnOK.Enabled:=true;
    end else
    begin
      FAllowCash:= false;
      btnOK.Enabled := false;
    end;
  end;
end;

procedure TfrmCash.SetChagngeAmt(const Value: currency);
begin
  FChagngeAmt := Value;
  lbChange.Caption:= FormatCurr('#,###.00',ChagngeAmt)
end;

procedure TfrmCash.SetReceiveAmt(const Value: currency);
begin
  FReceiveAmt := Value;
end;

procedure TfrmCash.SetReceiveNet(const Value: currency);
begin
  FReceiveNet := Value;

end;

procedure TfrmCash.FormCreate(Sender: TObject);
begin
  FAllowCash := false;
end;

end.
