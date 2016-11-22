unit SearchFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, ComCtrls, StdCtrls, Mask, RzEdit, RzLabel;

type
  TfrmSearch = class(TForm)
    blAllContainer: TBevel;
    btnClose: TRzBitBtn;
    btnOK: TRzBitBtn;
    Listview: TListView;
    edSearchText: TRzEdit;
    RzLabel1: TRzLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSearchTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListviewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FIsOK: boolean;
    FCustomerID: string;
    procedure SetIsOK(const Value: boolean);
    procedure SetCustomerID(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property IsOK : boolean read FIsOK write SetIsOK;
    property CustomerID : string read FCustomerID write SetCustomerID;
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}

procedure TfrmSearch.btnCloseClick(Sender: TObject);
begin
  FIsOK := false;
  Close;
end;

procedure TfrmSearch.btnOKClick(Sender: TObject);
begin
  FIsOK := true;
  FCustomerID :='C121100001';
  Close;
end;

procedure TfrmSearch.FormShow(Sender: TObject);
begin
  FIsOK :=false;
  edSearchText.SetFocus;
  edSearchText.SelectAll;
end;

procedure TfrmSearch.SetIsOK(const Value: boolean);
begin
  FIsOK := Value;
end;

procedure TfrmSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCloseClick(nil);
  if Key=VK_F11 then  btnOKClick(nil);

end;

procedure TfrmSearch.edSearchTextKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_down then Listview.SetFocus;
end;

procedure TfrmSearch.ListviewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_up then
    if Listview.Selected.Index=0 then
    begin
      edSearchText.SetFocus;
      edSearchText.SelectAll;
    end;

  if Key=VK_RETURN then btnOKClick(sender);    

end;

procedure TfrmSearch.SetCustomerID(const Value: string);
begin
  FCustomerID := Value;
end;

end.
