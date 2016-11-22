program inv2;

uses
  Windows,
  Messages,
  Forms,
  Tlhelp32,
  sysutils,
  ShellApi,
  CommonLIB in '..\LIB\CommonLIB.pas',
  CommonUtils in '..\LIB\CommonUtils.pas',
  uCiaXml in '..\LIB\uCiaXml.pas',
  MainApplicationFrm in 'MainApplicationFrm.pas' {frmMainApplication},
  STDLIB in '..\STDLIB\STDLIB.pas',
  InformationFrm in 'InformationFrm.pas' {frmInformation},
  ConfigFrm in 'ConfigFrm.pas' {frmConfig},
  InstallDatabaseFrm in 'InstallDatabaseFrm.pas' {frmInstallDatabase},
  AutoStartU in 'AutoStartU.pas',
  uDbPatcher in 'uDbPatcher.pas' {frmDbPatcher};

{$R *.res}

begin
  Application.Initialize;

  updateUpd;
  if FileExists(ExtractFilePath(Application.ExeName) + execute_startup) then
  begin
    ShellExecute(0, 'open', Pchar(ExtractFilePath(Application.ExeName) +
      execute_startup), Pchar(''), nil, SW_SHOWNORMAL);
  end;

  Application.Title := 'Inv2';
  Application.CreateForm(TfrmMainApplication, frmMainApplication);
    Application.Run;
end.
