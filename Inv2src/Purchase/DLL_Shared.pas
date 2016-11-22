{ *********************************************************************** }
{                                                                         }
{ The Siam Developer  Runtime Library                                     }
{ SiamDev - DLL Shared Template Library                                   }
{                                                                         }
{ Copyright (c) 2012 Siam Developer Co., Ltd.                             }
{ Jongruk Aripoo (jongruk.a@hotmail.com)                                  }
{ *********************************************************************** }
unit DLL_Shared;

interface

uses
   Windows, Forms, Dialogs,xTabs;

var
   DLLApp: TApplication;
   DLLScr: TScreen;
   DLLAppHandle: THandle;

procedure RestoreAppAndScr;
procedure ShowTestDllMessage;
procedure DisplayModalForm(AHandle: THandle);
procedure DisplayModalForm2(App: TApplication);
procedure CreateModeLessForm(AHandle: THandle);
procedure CreateModeLessForm2(App: TApplication);
procedure DestroyModeLessForm;
function CreateMDIChildForm2(App: TApplication; Scr: TScreen;xTabs:TxTabs):longint;
procedure DestroyMDIChildForm(Handle : longint;xTabs:TxTabs);

exports
    RestoreAppAndScr,
    ShowTestDllMessage,
    DisplayModalForm,
    DisplayModalForm2,
    CreateModeLessForm,
    CreateModeLessForm2,
    DestroyModeLessForm,
    CreateMDIChildForm2,
    DestroyMDIChildForm;

implementation

uses FormDLL3;



procedure ShowTestDllMessage;
begin
    ShowMessage('This is a test message from the DLL.');
end;

procedure RestoreAppAndScr;
begin
   Screen := DLLScr;
   Application := DLLApp;
end;

procedure DisplayModalForm(AHandle: THandle);
var
   DLLModalForm: TfrmDLLForm3;
begin
   Application.Handle := AHandle;
   DLLModalForm := TfrmDLLForm3.Create(Application);
   try
      DLLModalForm.Caption := 'Modal Form';
      DLLModalForm.ShowModal;
   finally
      DLLModalForm.Free;
      RestoreAppAndScr;
   end;
end;

procedure CreateModeLessForm(AHandle: THandle);
begin

end;

procedure DestroyModeLessForm;
begin

end;

procedure DisplayModalForm2(App: TApplication);

begin

end;

procedure CreateModeLessForm2(App: TApplication);
begin

end;

function CreateMDIChildForm2(App: TApplication; Scr: TScreen;xTabs:TxTabs):longint;
var idx:integer;
begin
   if not Assigned(frmDLLForm3) then
   begin
      Application := App;
      //Assign Screen Object
      if Assigned(Scr) then Screen := Scr;
      //DLLForm2 := TDLLForm2.Create(Application);
      frmDLLForm3 := TfrmDLLForm3.Create(Application.MainForm);
      frmDLLForm3.Caption := 'MDI Child Form 3';
      frmDLLForm3.hint:= 'DLLForm3.dll';
      frmDLLForm3.Tag:=longint(frmDLLForm3);
      frmDLLForm3.WindowState := wsMaximized;

      idx:= xTabs.Tabs.AddObject(frmDLLForm3.Caption,frmDLLForm3);
      xTabs.ActiveTab:=idx;
      //tform( xTabs.Tabs.Objects[idx]).Tag:=longint(tform( xTabs.Tabs.Objects[idx]));


      xTabs.Refresh;

      frmDLLForm3.Show;
      result := longint(frmDLLForm3);

   end
   else
   begin
      frmDLLForm3.Show;
      result := longint(frmDLLForm3);
   end;
end;

procedure DestroyMDIChildForm(Handle : longint;xTabs:TxTabs);
var i:integer;
begin
   if Assigned(TfrmDLLForm3(Handle)) then
      TfrmDLLForm3(Handle).Free;

   TfrmDLLForm3(Handle) := nil;
   RestoreAppAndScr;
end;

end.
