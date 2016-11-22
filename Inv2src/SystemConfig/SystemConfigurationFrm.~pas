unit SystemConfigurationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, ComCtrls, Mask, RzEdit,
  RzDBEdit, DBCtrls, DB, DBClient,CommonLIB, RzButton;

type
  TfrmSystemConfiguration = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel13: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBMemo1: TRzDBMemo;
    cdsCompany: TClientDataSet;
    dsCompany: TDataSource;
    btnSave: TRzBitBtn;
    RzLabel3: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FDLLParameter: TDLLParameter;
    { Private declarations }
    procedure getData();
    procedure SetDLLParameter(const Value: TDLLParameter);
  public
    { Public declarations }
    property DLLParameter : TDLLParameter  read FDLLParameter write SetDLLParameter;
  end;

var
  frmSystemConfiguration: TfrmSystemConfiguration;

implementation

uses STDLIB;

{$R *.dfm}

{ TfrmSystemConfiguration }

procedure TfrmSystemConfiguration.getData;
begin
  cdsCompany.Data :=GetDataSet(' select * from ICMTTCMP where CMPCOD='''+FDLLParameter.Company+''' and CMPBRN='''+FDLLParameter.Branch+''' and CMPDEP='''+FDLLParameter.Department+''' and CMPSEC='''+FDLLParameter.Section+''' ');
end;

procedure TfrmSystemConfiguration.SetDLLParameter(
  const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmSystemConfiguration.FormShow(Sender: TObject);
begin
  getData;
end;

procedure TfrmSystemConfiguration.btnSaveClick(Sender: TObject);
begin
  if cdsCompany.State in [dsinsert,dsedit] then cdsCompany.Post;

  if cdsCompany.ChangeCount>0 then
  begin
    UpdateDataset(cdsCompany,' select * from ICMTTCMP where CMPCOD='''+FDLLParameter.Company+''' and CMPBRN='''+FDLLParameter.Branch+''' and CMPDEP='''+FDLLParameter.Department+''' and CMPSEC='''+FDLLParameter.Section+''' ');
    Application.MessageBox(pchar('Successfull.'),pchar('Information'),MB_OK or MB_ICONINFORMATION);    
  end;
end;

end.
