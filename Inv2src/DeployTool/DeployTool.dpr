program DeployTool;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  STDLIB in '..\STDLIB\STDLIB.pas',
  uCiaXml in '..\LIB\uCiaXml.pas',
  CommonLIB in '..\LIB\CommonLIB.pas',
  CommonUtils in '..\LIB\CommonUtils.pas',
  FmxUtils in 'FmxUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
