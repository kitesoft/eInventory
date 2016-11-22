unit MasterBudgetFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel;

type
  TfrmMasterBudget = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    Button1: TButton;
    pnRight: TRzPanel;
    pnTop: TRzPanel;
    pnMiddle: TRzPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterBudget: TfrmMasterBudget;

implementation

{$R *.dfm}

end.
