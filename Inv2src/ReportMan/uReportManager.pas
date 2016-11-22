unit uReportManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel,commonlib, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ComCtrls, frxDesgn, frxClass,
  frxPreview;

type
  TfrmReportManager = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    Panel2: TPanel;
    btnDesignReport: TButton;
    btnPreviewReport: TButton;
    pnReportDesigner: TPanel;
    procedure btnDesignReportClick(Sender: TObject);
    procedure btnPreviewReportClick(Sender: TObject);
  private
    FDLLParameter: TDLLParameter;
    procedure SetDLLParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property DLLParameter : TDLLParameter  read FDLLParameter write SetDLLParameter;
  end;

var
  frmReportManager: TfrmReportManager;

implementation

{$R *.dfm}

{ TfrmReportManager }

procedure TfrmReportManager.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmReportManager.btnDesignReportClick(Sender: TObject);
begin
  frxReport1.DesignReportInPanel(pnReportDesigner);
end;

procedure TfrmReportManager.btnPreviewReportClick(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
