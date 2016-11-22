unit SearchCustomerFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CommonLIB,CommonUtils, ComCtrls, RzButton, StdCtrls, Mask,
  RzEdit, RzCmboBx, RzPanel, ExtCtrls, DB, DBClient, Provider,
  jvuibdataset, jvuib, ImgList;

type
  TfrmSearchCustomer = class(TForm)
    pnClientContainer: TPanel;
    pnTop: TRzPanel;
    Label7: TLabel;
    Label1: TLabel;
    cmbSearchType: TRzComboBox;
    edSearchText: TRzEdit;
    btnSearch: TRzBitBtn;
    ListView: TListView;
    trnsDefault: TJvUIBTransaction;
    dsSQL: TJvUIBQuery;
    dsCustInfo: TJvUIBDataSet;
    dspCustInfo: TDataSetProvider;
    cdsCustInfo: TClientDataSet;
    dscCustInfo: TDataSource;
    ImageList: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListViewDblClick(Sender: TObject);
    procedure ListViewCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
  private
    FDLLParameter: TDLLParameter;
    FCustName: string;
    FCustCode: string;
    FCustIdCard: string;
    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure SetCustCode(const Value: string);
    procedure SetCustIdCard(const Value: string);
    procedure SetCustName(const Value: string);
    procedure fillListview();
    { Private declarations }
  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property CustCode : string read FCustCode write SetCustCode;
    property CustName : string read FCustName write SetCustName;
    property CustIdCard : string read FCustIdCard write SetCustIdCard;
  end;

var
  frmSearchCustomer: TfrmSearchCustomer;

implementation

{$R *.dfm}

{ TfrmSearchCustomer }


{ TfrmSearchCustomer }

procedure TfrmSearchCustomer.fillListview;
var
  item : TListItem;
begin
 if cdsCustInfo.Active then
   with  cdsCustInfo do
   begin
      self.Caption:='ผู้เช่า ( จำนวน '+inttostr(recordcount)+' รายการ )';
      ListView.Items.Clear;
      first;
      while not cdsCustInfo.Eof do
      begin
         item := ListView.Items.Add;
         item.Caption:= fieldbyname('CIFCODE').AsString;
         item.SubItems.Add(fieldbyname('FNAME').AsString) ;
         item.SubItems.Add(fieldbyname('LNAME').AsString) ;
         item.SubItems.Add(fieldbyname('IDCARD').AsString) ;
         item.Data := TString.Create(fieldbyname('CIFCODE').AsString);
        if not cdsCustInfo.Eof then next;
      end;
   end;
end;

procedure TfrmSearchCustomer.SetCustCode(const Value: string);
begin
  FCustCode := Value;
end;

procedure TfrmSearchCustomer.SetCustIdCard(const Value: string);
begin
  FCustIdCard := Value;
end;

procedure TfrmSearchCustomer.SetCustName(const Value: string);
begin
  FCustName := Value;
end;

procedure TfrmSearchCustomer.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmSearchCustomer.FormShow(Sender: TObject);
begin
(*
  cmbSearchType.Items.Clear;
  cmbSearchType.Items.AddObject('รหัส',TString.Create('CIFCODE'));
  cmbSearchType.Items.AddObject('ชื่อ',TString.Create('FNAME'));
  cmbSearchType.Items.AddObject('สกุล',TString.Create('LNAME'));
  cmbSearchType.Items.AddObject('รหัสประจำตัวประชาชน',TString.Create('IDCARD'));
  cmbSearchType.ItemIndex:=0;

  edSearchText.SetFocus;
  edSearchText.SelectAll;


  dsCustInfo.SQL.Text:='select * from MTTCUS00 where status<>''I''';
  {
  dsCustInfo.Params.ByNameAsString['SEARCHFLD']:='FNAME';
  dsCustInfo.Params.ByNameAsString['SEARCHTXT']:='';
  }

  cdsCustInfo.Close;
  cdsCustInfo.open;

  if cdsCustInfo.Active then fillListview;

  *)

end;

procedure TfrmSearchCustomer.btnSearchClick(Sender: TObject);
begin
//  dsCustInfo.Params.ByNameAsString['SEARCHFLD']:=TString(cmbSearchType.Items.Objects[cmbSearchType.ItemIndex]).Str;
//  dsCustInfo.Params.ByNameAsString['SEARCHTXT']:=edSearchText.Text;

  dsCustInfo.SQL.Text:='select * from MTTCUS00 where '+TString(cmbSearchType.Items.Objects[cmbSearchType.ItemIndex]).Str+' like '''+edSearchText.Text+'%'' and status<>''I''';

  //InputBox('','',dsCustInfo.SQL.Text);

  cdsCustInfo.Close;
  cdsCustInfo.open;

  if cdsCustInfo.Active then fillListview;

end;

procedure TfrmSearchCustomer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then close;
  if key = vk_return then
  begin
      if ListView.Selected<> nil then
       if ListView.Focused then
        begin
          ListViewDblClick(sender);
        end;

      if edSearchText.Focused then
        begin
          btnSearchClick(nil);
        end;
  end;


  if key = vk_down then
    if (( not ListView.Focused) and (not cmbSearchType.Focused)) then
    begin
        ListView.SetFocus;
    end;
end;

procedure TfrmSearchCustomer.ListViewDblClick(Sender: TObject);
begin
    FCustCode:=TString(ListView.Selected.Data).Str;
    close;
end;

procedure TfrmSearchCustomer.ListViewCustomDrawSubItem(
  Sender: TCustomListView; Item: TListItem; SubItem: Integer;
  State: TCustomDrawState; var DefaultDraw: Boolean);
var
  recTemp   : TRect;
  iWidth    : integer;
  i         : integer;
  bmpImage  : TBitmap;
begin
  if (Item.Selected) then
    Sender.Canvas.Brush.Color := $02D6E9D6 // $00FFDFBF
  else
  begin
    Sender.Canvas.Brush.Color := clWhite;
    sender.canvas.pen.Color := clblack;
  end;
  iWidth := 0;
  for i := 0 to SubItem-1 do
    iWidth := iWidth + ListView.Columns[i].Width;

  recTemp := Item.DisplayRect(drBounds);

  if (SubItem = 1) then
  begin
    Sender.Canvas.TextRect(recTemp,recTemp.left+5,recTemp.top,Item.Caption);
  end;
  if (SubItem < 4) then
    Sender.Canvas.TextOut(recTemp.Left+iWidth, recTemp.Top, Item.SubItems[SubItem-1])
  else
  begin
  {
    bmpImage := TBitmap.Create();
    i := Item.SubItemImages[SubItem-1];
    ImageList.GetBitmap(0, bmpImage);
    Sender.Canvas.Draw(recTemp.Left+iWidth+5, recTemp.Top+1, bmpImage);
    bmpImage.Free();
    }

  end;
  DefaultDraw := false;
end;

end.

