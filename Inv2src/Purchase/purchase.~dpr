library purchase;

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
  DBClient,
  DB,
  SqlExpr,
  Forms,
  CommonLIB in '..\LIB\CommonLIB.pas',
  uCiaXml in '..\LIB\uCiaXml.pas',
  CommonUtils in '..\LIB\CommonUtils.pas',
  SamSTDLIB in '..\LIB\SamSTDLIB.pas',
  STDLIB in '..\STDLIB\STDLIB.pas',
  CdeLIB in '..\LIB\CdeLIB.pas',
  MasterPurchaseFrm in 'MasterPurchaseFrm.pas' {frmMasterPurchase},
  AddProdItemFrm in 'AddProdItemFrm.pas' {frmAddProdItem},
  STK_LIB in '..\LIB\STK_LIB.pas';

{$R *.res}

var
   DLLApp: TApplication;
   DLLScr: TScreen;
   DLLAppHandle: THandle;


type
  TShowWindowType = (swNone, swModal, swNormal);

procedure RestoreAppAndScr;
begin
   Screen := DLLScr;
   Application := DLLApp;
end;

function Execute(_MainApp: TApplication; _DBConn: TSQLConnection;
  _Type: TShowWindowType; _Parameter: TDLLParameter): TForm; stdcall;
begin
      Application := _MainApp;
      //Assign Screen Object
      //if Assigned(Scr) then Screen := Scr;
      //DLLForm2 := TDLLForm2.Create(Application);
      Result := TfrmMasterPurchase.Create(Application.MainForm);
      TfrmMasterPurchase(Result).DLLParameter := _Parameter;

      //TfrmFrontReceive(Result).Conn:=_DBConn;

      Result.FormStyle := fsMDIChild;
      Result.WindowState:=wsMaximized;
     // DLLForm2.Caption := 'MDI Child Form';
      Result.Show;

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
  dxFinalize,Execute,//HandleMessageFunc,
  DLLEntryPoint;
begin
    //DLLProc := @DLLEntryPoint;
    //DLLEntryPoint(DLL_PROCESS_ATTACH);
end.
