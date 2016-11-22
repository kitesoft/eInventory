library seachutils;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  ShareMem,
  SysUtils,
  Classes,
  dxCore,
  Windows,
  Forms,
  JvUIB,
  CommonLIB in '..\LIB\CommonLIB.pas',
  uCiaXml in '..\LIB\uCiaXml.pas',
  CommonUtils in '..\LIB\CommonUtils.pas',
  SamSTDLIB in '..\LIB\SamSTDLIB.pas',
  STDLIB in '..\STDLIB\STDLIB.pas',
  SamFrm in 'SamFrm.pas' {frmSam},
  SearchFrm in 'SearchFrm.pas' {frmSearch};

var
   DLLApp: TApplication;
   DLLScr: TScreen;
   DLLAppHandle: THandle;

{$R *.res}

type
  TShowWindowType = (swNone, swModal, swNormal);

procedure RestoreAppAndScr;
begin
   Screen := DLLScr;
   Application := DLLApp;
end;




function SelSearch(_MainApp: TApplication; _Type: TShowWindowType; _Parameter: TDLLParameter; out _Output : TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;_SelectField,_SQL:string): TForm; stdcall;
begin
  Application := _MainApp;
  Result := TfrmSearch.Create(Application.MainForm);
  //TfrmSearch(Result).trnsDefault.DataBase:=_DBConn;
  //if TfrmSearch(Result).trnsDefault.DataBase<> nil then
  //begin
   // if (_Type = swModal) then
    //begin
      Result.FormStyle                := fsNormal;
      Result.WindowState              := wsNormal;

      TfrmSearch(Result).DLLParameter := _Parameter;
      TfrmSearch(Result).SQL          := _SQL;
      TfrmSearch(Result).Cols         := _Cols;
      TfrmSearch(Result).ColsWidth    := _ColsWidth;
      TfrmSearch(Result).SearchType   := _SearchType;
      TfrmSearch(Result).SelectField   := _SelectField;

      Result.ShowModal;

      _Output.SelectCode:=TfrmSearch(Result).SelectCode;
      _Output.SelectName:=TfrmSearch(Result).SelectName;

      FreeAndNil(Result);
      (*
    end else
    begin

      Result.FormStyle := fsMDIChild;
      Result.WindowState:=wsMaximized;
      Result.Show();

    end; *)
  //end;
end;

//DLL Entry Point
procedure DLLEntryPoint(dwReason: DWORD); stdcall; //register; //stdcall;
begin
   case dwReason of
      DLL_PROCESS_ATTACH: //1
      begin
         DLLAppHandle := Application.Handle;
         DLLApp := Application;
         DLLScr := Screen;
      end;
      DLL_PROCESS_DETACH: //3
      begin
         //DestroyModeLessForm;
         //DestroyMDIChildForm;

         RestoreAppAndScr;
         Application.Handle := DLLAppHandle;
      end;
      DLL_THREAD_ATTACH : {ShowMessage('Thread Attach')};  //2
      DLL_THREAD_DETACH : {ShowMessage('Thread Detach')};  //0
   end;
end;



exports
  dxInitialize,
  dxFinalize,SelSearch,
  DLLEntryPoint;
begin

    //DLLProc := @DLLEntryPoint;
   // DLLEntryPoint(DLL_PROCESS_ATTACH);
end.

