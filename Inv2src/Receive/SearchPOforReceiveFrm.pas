unit SearchPOforReceiveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel;

type
  TfrmSearchPOforReceive = class(TForm)
    RzPanel1: TRzPanel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchPOforReceive: TfrmSearchPOforReceive;

implementation

{$R *.dfm}

procedure TfrmSearchPOforReceive.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSearchPOforReceive.btnSaveClick(Sender: TObject);
begin
  Close;
end;

end.
