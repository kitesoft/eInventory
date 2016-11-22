unit MainApplicationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, DBXpress, FMTBcd, DBClient, Provider, DB, JvXPCore, JvXPBar,
  SqlExpr, XPMenu, AppEvnts, ExtCtrls, ImgList, JvExForms, JvScrollBox,
  xTabs, StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  ComCtrls, JvExExtCtrls, JvNetscapeSplitter,Tlhelp32, frxpngimage,
  RzStatus;

type

  PCurrentMenuItem = ^TCurrentMenuItem;
  TCurrentMenuItem = record
    Parent_ID: Integer;
    MenuItem: TMenuItem;

    Prior: PCurrentMenuItem;
  end;

  TProgramItemInfo = packed record
    ProgramName: String;
    Description: String;
    Paramrter: String;
    MainFormHandle: TForm;
    DLLHandled: THandle;
    AppClose: TCloseEvent;
    AppActivate: TNotifyEvent;
    MenuItem: TMenuItem;
    Tag : integer;
  end;
  TProgramsItemInfo = array of TProgramItemInfo;
  

  TfrmMainApplication = class(TForm)
    lbVersion: TLabel;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    Status: TStatusBar;
    pnSignOnPanel: TPanel;
    lbSignOn: TLabel;
    Image1: TImage;
    gbBox: TGroupBox;
    pnServerInfo: TPanel;
    lbDatabaseName: TLabel;
    edDatabaseName: TcxTextEdit;
    pnSecurity: TPanel;
    lbUserID: TLabel;
    lbPassword: TLabel;
    lbFPoint: TLabel;
    edUserID: TcxTextEdit;
    edPassword: TcxTextEdit;
    cmbLocation: TcxComboBox;
    Panel1: TPanel;
    btnSignOn: TcxButton;
    btnExit: TcxButton;
    xTab: TxTabs;
    pnLeft: TJvScrollBox;
    Button1: TButton;
    imgList1: TImageList;
    tmTimer: TTimer;
    tmFreeLib: TTimer;
    aEvents: TApplicationEvents;
    XPMenu1: TXPMenu;
    PopupMenu00: TPopupMenu;
    ApplicationEvents: TApplicationEvents;
    btnConfig: TcxButton;
    btnInstallDB: TcxButton;
    VersionInfo: TRzVersionInfo;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSignOnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edUserIDKeyPress(Sender: TObject; var Key: Char);
    procedure xTabCloseTab(Sender: TObject; Index: Integer;
      var Close: Boolean);
    procedure xTabTabChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure btnConfigClick(Sender: TObject);
    procedure btnInstallDBClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
    UID : string;
    FUserID: String;
    FBranch : string;
    FPassword: String;

    FMenusLanguage: String;
    FMenuReloaded: Boolean;
    FFreeHandled: THandle;

    FProgramsItemInfo: TProgramsItemInfo;

    procedure ShowServerInfoPanel();
    procedure LoadMenu();
    procedure HideSignOnPanel();
    procedure HideServerInfoPanel();

    procedure MenuItemsClick(Sender: TObject);
    procedure AppExtClose(Sender: TObject; var Action: TCloseAction);
    procedure AppExtActivate(Sender: TObject);
    procedure RunningProgramClick(Sender: TObject);    

  public
    { Public declarations }
    SignOnTime: Integer;
  end;

var
  frmMainApplication: TfrmMainApplication;
  HandleMessageProc :function (Msg : TMsg):Boolean; stdcall;
  


  PN_SIGNON_HEIGH: Integer;
  PN_BOX_HEIGH: Integer;

  PN_SEC_TOP: Integer;


  _Company,
  _Branch,
  _Department,
  _Section:string;

implementation

uses CommonLIB, CommonUtils, STDLIB, InformationFrm, ConfigFrm,
  InstallDatabaseFrm, AutoStartU, uDbPatcher;

{$R *.dfm}

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;


procedure TfrmMainApplication.FormCreate(Sender: TObject);
begin

  FMenusLanguage := 'ENG';
  _Company:='00';
  _Branch:='00';
  _Department:='00';
  _Section:='00';

//  initSqlConnection(Conn);
//  initDataset(self,Conn);
end;

procedure TfrmMainApplication.FormResize(Sender: TObject);
begin
  lbVersion.Left := ClientWidth - lbVersion.Width - 15;
  lbVersion.Top := ClientHeight - Status.Height - lbVersion.Height - 5;

  if (pnSignOnPanel.Visible) then
  begin
    pnSignOnPanel.Left := ClientWidth - pnSignOnPanel.Width - 15;
    pnSignOnPanel.Top :=
      ClientHeight - Status.Height -
      lbVersion.Height - pnSignOnPanel.Height - 10;
  end;
end;


procedure TfrmMainApplication.FormShow(Sender: TObject);
begin
  // show version

  VersionInfo.FilePath:=Application.ExeName;

  Application.Title:= _AppName;
  frmMainApplication.Caption:=_AppName+' - '+_VersionCode;
  lbVersion.Caption := 'Inv2 v'+VersionInfo.FileVersion+' '+_VersionCode;



  if (Trim(edDatabaseName.Text) <> '') then
  begin
    if (Trim(edUserID.Text) <> '') then
      edPassword.SetFocus()
    else
      edUserID.SetFocus();
  end else
  begin
    ShowServerInfoPanel();
    //edDatabaseName.SetFocus();
  end;


  frmMainApplication.WindowState:=wsMaximized;
//  loadCmbItems(cmbLocation.Properties.Items,cdsTemp,'select MTTCDE,MTTDES from MTTCDE where MTTGRP=''FRONT'' and MTTACT=''A''','MTTCDE','MTTDES','00');

end;

procedure TfrmMainApplication.ShowServerInfoPanel;
begin
  if (not pnServerInfo.Visible) then
  begin
    pnSignOnPanel.Height := PN_SIGNON_HEIGH;
    gbBox.Height := PN_BOX_HEIGH;
    pnSecurity.Top := PN_SEC_TOP;

    pnServerInfo.Visible := True;
  end;
end;

procedure TfrmMainApplication.btnSignOnClick(Sender: TObject);
var
  _Msg: String;
  frmInfo : TfrmInformation;
  fPatcherForm:TfrmDbPatcher;
  cdsLogin,cdsTemp : TClientDataSet;
  USRPWD,NewUSRRHA,NewUSRPWD,StrUSRPWD:string;
  Logined:boolean;
begin
  try


    Screen.Cursor := crHourGlass;
    Logined := false;


    //ChangPWD();
    //edUserID.Text:=QuotedStr(EncryptEx('ADMIN'));
    //Application.MessageBox(pchar(DecryptEx(EncryptEx('ADMIN'))),pchar(''),MB_OK);

    //inputbox('','',EncryptEx('ADMIN'));



    btnSignOn.Enabled := False;
    btnExit.Enabled := False;
    cdstemp:=TClientDataSet.Create(nil);
    cdstemp.Data :=GetDataSet('SELECT * FROM information_schema.tables WHERE table_name = ''ICMTTUSR'' and table_schema='''+GetDatabaseName+''' ');

    if cdsTemp.RecordCount>0 then
    begin
        cdsLogin := TClientDataSet.Create(nil);
        cdsLogin.Data  := GetDataSet('select count(*) as usercount from ICMTTUSR ');
        if cdsLogin.FieldByName('usercount').AsInteger>0 then
        begin
          if (Trim(edUserID.Text)<>'') then
          begin
          cdsLogin.Data  := GetDataSet('select * from ICMTTUSR where USRCDE='''+edUserID.Text+''' and USRACT=''A''');

          if cdsLogin.Active then
            if cdsLogin.RecordCount>0 then
            begin
              USRPWD := cdsLogin.fieldbyname('USRPWD').AsString;

              if trim(USRPWD)<>'' then
                if trim(cdsLogin.fieldbyname('USRRHA').AsString)='' then
                  begin
                    Application.MessageBox(pchar('RHA Error !!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                    Screen.Cursor := crDefault;
                    btnSignOn.Enabled := true;
                    btnExit.Enabled := true;
                    edUserID.SetFocus;
                    edUserID.SelectAll;
                    exit;
                  end;



              if (trim(USRPWD)='') then // backdoor
                begin

                  if (_VersionName='Standard')  then
                  begin
                    NewUSRPWD:=InputBox('New Password','กรุณาระบุรหัสผ่าน','');
                    if trim(NewUSRPWD)<>'' then
                    begin
                      USRPWD := EncryptEx(NewUSRPWD);
                      NewUSRRHA := EncryptEx(trim(cdsLogin.fieldbyname('USRCOD').AsString)+trim(cdsLogin.fieldbyname('USRCDE').AsString)+NewUSRPWD+_VersionName);

                      cdsLogin.Edit;
                      cdsLogin.FieldByName('USRPWD').AsString := USRPWD;
                      cdsLogin.FieldByName('USRRHA').AsString := NewUSRRHA;

                      setModifyUSRDT(cdsLogin,edUserID.Text);
                      setSystemCMP(cdsLogin,_Company,_Branch,_Department,_Section);
                      //setEntryUSRDT(cdsLogin,edUserID.Text);

                      cdsLogin.Post;

                      if cdsLogin.ChangeCount>0 then
                      UpdateDataset(cdsLogin,'select * from ICMTTUSR where USRCDE='''+edUserID.Text+''' and USRACT=''A''');

                      Logined := true;

                    end;
                  end;

                end else
                begin
                  // check password
                  StrUSRPWD := DecryptEx(USRPWD);
                  Logined:= StrUSRPWD=trim(edPassword.Text);


                  // check RHA
                  if StrUSRPWD=trim(edPassword.Text) then
                  Logined:=cdsLogin.FieldByName('USRRHA').AsString=EncryptEx(trim(cdsLogin.fieldbyname('USRCOD').AsString)+trim(cdsLogin.fieldbyname('USRCDE').AsString)+StrUSRPWD+_VersionName)

                end;



               if Logined then
               begin
                UID:=cdsLogin.fieldbyname('USRCOD').AsString;
                LoadMenu();

                {
                close;
                CommandText:='select * from user_account where us_user='''+Trim(edUserID.Text)+''' and us_password='''+EncryptEx(trim(edPassword.Text))+'''  ';
                open;
                }

                (*
                if cdsLogin.Active then
                  if cdsLogin.RecordCount>0 then
                  begin
                  //LoadMenu();
                  {
                    SignOnTime := 0;

                    FMenuReloaded := False;
                    UID := trim(cdsLogin.fieldbyname('us_code').AsString);
                    FBranch := TString(cmbLocation.Properties.Items.Objects[cmbLocation.ItemIndex]).Str;



                    FUserID:=trim(cdsLogin.fieldbyname('us_name').AsString);

                    //mmChangePassword.Enabled := True;

                    Status.Panels[1].Text := ' SignedOn User: ' + FUserID;
                    Status.Panels[2].text := ' SignedOn Location : ('+ FBranch +') '+getDonationsPointName(cdsTemp,FBranch);
                    self.Caption:=self.Caption+' ['+Conn.Params.Values['HostName']+']['+Conn.Params.Values['DataBase']+']';

                    HideSignOnPanel();
                    HideServerInfoPanel();
                    }
                  end else
                  begin
                      _Msg := 'ไม่พบรหัสผู้ใช้งาน';
                      Application.MessageBox(PChar(_Msg), 'Error', MB_OK or MB_ICONERROR);
                      btnSignOn.Enabled := true;
                      btnExit.Enabled := true;

                      edUserID.SetFocus;
                      edUserID.SelectAll;
                  end;
                  *)

                    HideSignOnPanel();
                    HideServerInfoPanel();
               end else
               begin
                Application.MessageBox(pchar('ไม่สามารถเข้าสู่ระบบได้ '+#10#13+'รหัสผ่านไม่ถูก้อง หรือ ผู้ใช้งานนี้มีข้อผิดพลาด!!! '),pchar('Warning'),MB_OK or MB_ICONWARNING);
                edUserID.SetFocus;
                edUserID.SelectAll;
               end;

            end else
            begin
              Application.MessageBox(pchar('ไม่พบผู้ใช้งาน'),pchar('Warning'),MB_OK or MB_ICONWARNING);
              edUserID.SetFocus;
              edUserID.SelectAll;
            end;

            {
            frmInfo := TfrmInformation.Create(Application);
            frmInfo.ShowModal;
            frmInfo.Close;
            }

          end;
        end else
        begin
          // logon with no user supperuser mode
          Application.MessageBox(pchar('Logon with NO-USER Mode'),pchar('Information'),MB_OK or MB_ICONINFORMATION);

          UID:='00000';
          LoadMenu();

          HideSignOnPanel();
          HideServerInfoPanel();
        end;
    end else
    begin
      // logon with no user supperuser mode
      Application.MessageBox(pchar('Logon with NO-USER Mode'),pchar('Information'),MB_OK or MB_ICONINFORMATION);

      UID:='00000';
      LoadMenu();

      HideSignOnPanel();
      HideServerInfoPanel();
    end;

    Screen.Cursor := crDefault;
    btnSignOn.Enabled := true;
    btnExit.Enabled := true;
    cdsLogin.Free;

    // patch database
    try
     fPatcherForm := TfrmDbPatcher.Create(Application);

     if fPatcherForm.IsNewVersion then
       fPatcherForm.ShowModal;
    finally
       fPatcherForm.free;
    end;

  except
    on ee:Exception do
      begin

        Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONERROR);

        Screen.Cursor := crDefault;
        pnSignOnPanel.Enabled := true;
        pnSignOnPanel.Show;

        btnSignOn.Enabled := true;
        btnExit.Enabled := true;

         cdsLogin.Free;
      end;

  end;

end;



procedure TfrmMainApplication.LoadMenu;
const
  PULL_DOWN_ID = -1;
var
  _Parent_ID, _Position, _Tag, i,icount,iparent,irec: Integer;
 // _Item: TMenuItem;
  _XPBarItem : TJvXPBarItem;
  jvXPBar : TJvXPBar;
  cdsParentMenu ,cdsMenuData: TClientDataSet;
begin
  cdsParentMenu := TClientDataSet.Create(nil);
  cdsMenuData := TClientDataSet.Create(nil);

  cdsParentMenu.Data := GetDataSet('select * from CTSTTMNU where FLAG=''A'' and PARENT_ID=-1  and ACTIVATE=''A'' ORDER BY ORDER_ITEM desc');
  cdsParentMenu.First;


  _Tag := 0; _Position := 0; icount:=0;irec:=0;

  for iparent := 0 to cdsParentMenu.RecordCount-1 do
  begin
     jvXPBar := TJvXPBar.Create(pnLeft);
     jvXPBar.Name:='jvXPBar'+inttostr(iparent);
     jvXPBar.Parent:=pnLeft;
     jvXPBar.Align:=alTop;
     jvXPBar.Colors.BodyBorderColor:=clBlack;
     jvXPBar.Colors.BorderColor:=clBlack;
     jvXPBar.Colors.BodyColor:=clWhite;
     jvXPBar.Colors.CheckedColor:=$00D9C1BB;
     jvXPBar.Colors.FocusedColor:=$00D8ACB0;
     jvXPBar.Colors.FocusedFrameColor:=clHotLight;
     jvXPBar.Colors.GradientFrom:=$00C08000;
     jvXPBar.Colors.GradientTo:=$00C08000;
     jvXPBar.Colors.SeparatorColor:=$00F7D7C6;
     jvXPBar.ShowItemFrame:=true;
     jvXPBar.HeaderRounded:=false;
     jvXPBar.HotTrackColor:=clMaroon;
     jvXPBar.HeaderFont.Color:=clBlack;
     jvXPBar.Font.Name:='tahoma';
     jvXPBar.Font.Size:=10;
     jvXPBar.TopSpace:=0;
     jvXPBar.Top:=0;
     jvXPBar.Caption:=cdsParentMenu.fieldbyname('NAME_TH').AsString;
     {********}
      try
        if cdsMenuData.Active then
          cdsMenuData.Close;

        cdsMenuData.Data:=GetDataSet('select * from CTSTTMNU where FLAG=''A'' and PARENT_ID='+cdsParentMenu.fieldbyname('RECORD_ID').AsString+' ORDER BY ORDER_ITEM');

        {
        cdsMenuData.CommandText:=''+

        ' select  '+
        ' a.*,  '+
        ' b.*, '+
        ' c.*,  '+
        ' d.*,   '+
        ' d.NAME_TH as NAME,   '+
        ' d.DESC_THA as DESCRIPTION    '+
        ' from user_account a   '+
        ' left join UserRole b on a.us_role=b.role  and a.us_code=b.uid   '+
        ' left join RolesPermission c on b.role=c.RoleId   '+
        ' left join MTTMNU d on c.MenuId=d.RECORD_ID    '+
        //' where a.us_code='''+UID+'''';
        ' where a.us_code='''+UID+'''  and d.PARENT_ID='+cdsParentMenu.fieldbyname('RECORD_ID').AsString+' and c.FAccess=''A''';
        }


        //inputbox('','',cdsMenuData.CommandText);

        cdsMenuData.Open();
        jvXPBar.Visible:=( cdsMenuData.RecordCount>0);





        cdsMenuData.Last();

        //if (not FMenuReloaded) then
        //  SetLength(FProgramsItemInfo, cdsMenuData.RecordCount);

        cdsMenuData.First();
        while (not (cdsMenuData.Eof)) do
        begin
          inc(irec);

          if (not FMenuReloaded) then
          SetLength(FProgramsItemInfo, irec);

          //if Trim(cdsMenuData.fieldbyname('FAccess').AsString)='A' then
          begin
          _Parent_ID := cdsMenuData.fieldbyname('PARENT_ID').AsInteger;



          _XPBarItem := jvXPBar.Items.Add;
          _XPBarItem.Caption:= Trim(cdsMenuData.fieldbyname('NAME_TH').Value);
          if not (cdsMenuData.fieldbyname('DESC_THA').IsNull) then
          _XPBarItem.Hint :=Trim(cdsMenuData.fieldbyname('DESC_THA').Value);
          _XPBarItem.Enabled:=Trim(cdsMenuData.fieldbyname('ACTIVATE').AsString)='A';


          _XPBarItem.Tag:=_Tag;

          FProgramsItemInfo[_Tag].ProgramName := Trim(cdsMenuData.fieldbyname('APP_NAME').Value);
          FProgramsItemInfo[_Tag].Description := _XPBarItem.Caption;
          if (not FMenuReloaded) then
            FProgramsItemInfo[_Tag].MainFormHandle := nil;

          if (FProgramsItemInfo[_Tag].ProgramName <> '') then
          begin
            _XPBarItem.OnClick:=MenuItemsClick;
          end;

          Inc(_Tag);
          Inc(icount);

          end;
          cdsMenuData.Next();
        end;
      finally
        cdsMenuData.Close();
      end;
     {********}


     if not cdsParentMenu.eof then cdsParentMenu.next;
  end;
end;


procedure TfrmMainApplication.HideServerInfoPanel;
begin
  if (pnServerInfo.Visible) then
  begin
    pnSecurity.Top := pnServerInfo.Top;
    pnSignOnPanel.Height := pnSignOnPanel.Height - pnServerInfo.Height;
    gbBox.Height := gbBox.Height - pnServerInfo.Height;

    pnSignOnPanel.Top := pnSignOnPanel.Top + pnServerInfo.Height;

    pnServerInfo.Visible := False;
  end;
end;

procedure TfrmMainApplication.HideSignOnPanel;
begin
  pnSignOnPanel.Enabled := False;
  pnSignOnPanel.Hide();
end;

procedure TfrmMainApplication.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

begin
  if (FMenusLanguage = 'THA') then
    CanClose :=
      (Application.MessageBox(
        'คุณต้องการจบการทำงานของโปรแรกมทั้งหมดเดี๋ยวนี้หรือไม่?',
        'ยืนยันคำสั่ง', MB_YESNO or MB_ICONINFORMATION) = mrYes)
  else
  if (FMenusLanguage = 'ENG') then
    CanClose :=
      (Application.MessageBox(
        'Do you want to quit all application now?',
        'Confirmation operation', MB_YESNO or MB_ICONINFORMATION) = mrYes);


    if CanClose then
        KillTask(ExtractFileName(Application.ExeName));

end;

procedure TfrmMainApplication.MenuItemsClick(Sender: TObject);
type
  TShowWindowType = (swNone, swModal, swNomal);

  TExecuteProgram = function(
    _MainApp: TApplication; _DBConn: TSQLConnection;
    _Type: TShowWindowType; _Parameter: TDLLParameter): TForm; stdcall;

  TProgramType = (ptEXE, ptDLL, ptBPL, ptUnknow);

  function GetPrgramType(_ProgramName: String): TProgramType;
  begin
    if (UpperCase(ExtractFileExt(_ProgramName)) = '.EXE') then
      Result := ptEXE
    else
    if (UpperCase(ExtractFileExt(_ProgramName)) = '.DLL') then
      Result := ptDLL
    else
    if (UpperCase(ExtractFileExt(_ProgramName)) = '.BPL') then
      Result := ptBPL
    else
      Result := ptUnknow;
  end;

  function GetFormHandle(_ProgramName: String): TForm;
  var
    i,j: Integer;
  begin
    Result := nil;
    for i := 0 to High(FProgramsItemInfo) do
    begin
        if (FProgramsItemInfo[i].ProgramName = _ProgramName) then
        begin
          //Result := FProgramsItemInfo[i].MainFormHandle;

          if xTab.Tabs.Count> 0 then
          for j:=0 to xTab.Tabs.Count-1 do
          if xTab.Tabs.Strings[j]= FProgramsItemInfo[i].Description then
          begin
            xTab.ActiveTab:=j;
            Result := FProgramsItemInfo[i].MainFormHandle;
          end;

          Exit;
        end;
    end;
  end;

  procedure AddRunningProgram(_Item: Integer);
  var
    _PrgItem: TMenuItem;
    i: Integer;
  begin
    FProgramsItemInfo[_Item].AppClose :=FProgramsItemInfo[_Item].MainFormHandle.OnClose;
    FProgramsItemInfo[_Item].MainFormHandle.OnClose := AppExtClose;

    FProgramsItemInfo[_Item].AppActivate := FProgramsItemInfo[_Item].MainFormHandle.OnActivate;
    FProgramsItemInfo[_Item].MainFormHandle.OnActivate := AppExtActivate;

    FProgramsItemInfo[_Item].MainFormHandle.Tag := _Item;
    //ShowMessage(IntToStr(FProgramsItemInfo[_Item].MainFormHandle.Tag));
  end;

var
  _ProgramName: String;
  _Parameter: TDLLParameter;
  _ProgramType: TProgramType;
  _ExecuteProgram: TExecuteProgram;
  _RunningForm: TForm;
  _Item: Integer;
  _tabcount:integer;

  cHandle: Integer;


  dxInitialize: procedure;
  dxFinalize: procedure;
begin
  if (Sender is TMenuItem) then
    _Item := (Sender as TMenuItem).Tag
  else
    _Item := (Sender as TJvXPBarItem).Tag;

  _ProgramName := FProgramsItemInfo[_Item].ProgramName;
  _Parameter.Parameters := FProgramsItemInfo[_Item].Paramrter;

  _Parameter.UserID :='ADMIN';
  _Parameter.WorkStation :='WRK001';
  _Parameter.Company:='00';
  _Parameter.Branch:='00';
  _Parameter.Department:='00';
  _Parameter.Section:='00';



  if (Trim(_ProgramName) <> '') then
  begin
    _ProgramType := GetPrgramType(_ProgramName);
    case _ProgramType of
      ptEXE: WinExec(PChar(_ProgramName + ' ' + _Parameter.Parameters), SW_SHOW);
      ptDLL, ptBPL:
      begin
        _RunningForm := GetFormHandle(_ProgramName);

        if (not Assigned(_RunningForm)) then
        begin
          FProgramsItemInfo[_Item].DLLHandled := LoadLibrary(PChar(_ProgramName));
          FProgramsItemInfo[_Item].Tag:=_Item;

          if (FProgramsItemInfo[_Item].DLLHandled <> 0) then
          begin


            dxInitialize := GetProcAddress(FProgramsItemInfo[_Item].DLLHandled, 'dxInitialize');
            if Assigned(dxInitialize) then
              dxInitialize;

            //dxFinalize := GetProcAddress(FProgramsItemInfo[_Item].DLLHandled, 'dxFinalize');



            _ExecuteProgram := GetProcAddress(FProgramsItemInfo[_Item].DLLHandled, 'Execute');
            
            if(Assigned(_ExecuteProgram)) then
            begin

              FProgramsItemInfo[_Item].MainFormHandle :=_ExecuteProgram(Application, nil, swNone, _Parameter);
              FProgramsItemInfo[_Item].MainFormHandle.Tag:=_Item;
              FProgramsItemInfo[_Item].Tag :=_Item;
              if (Assigned(FProgramsItemInfo[_Item].MainFormHandle))  then
              begin
                xTab.Tabs.AddObject(FProgramsItemInfo[_Item].Description, TObject(FProgramsItemInfo[_Item].MainFormHandle));
                xTab.ActiveTab := -1 + xTab.Tabs.Count;

                AddRunningProgram(_Item);

               // if Assigned(dxFinalize) then
               //   dxFinalize;
              end;

              if (not Assigned(FProgramsItemInfo[_Item].MainFormHandle)) then
              begin
                FreeLibrary(FProgramsItemInfo[_Item].DLLHandled);
                Exit;
              end;
            end else
              FProgramsItemInfo[_Item].MainFormHandle := nil;
          end;
        end else
        begin
          try
            _RunningForm.BringToFront();

          except
            FProgramsItemInfo[_Item].MainFormHandle := nil;
            MenuItemsClick(Sender);
          end;
        end;

      end;
    end;
  end;

end;


procedure TfrmMainApplication.edUserIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    SelectNext(ActiveControl, True, True);

    if (Sender = edPassword) then
    begin

      if (Trim(edUserID.Text) = '') then
      begin
        edUserID.SetFocus();
        Exit;
      end;

      if (cmbLocation.ItemIndex = -1)  then
      begin
        cmbLocation.ItemIndex:=0;
        //cmbLocation.SetFocus();
        Exit;
      end;

      btnSignOnClick(edPassword);
    end;

    Key := #0;
  end;
end;

procedure TfrmMainApplication.AppExtClose(Sender: TObject;
  var Action: TCloseAction);
var
  i,tabcount,indextab, _ItemC: Integer;
begin
  Action := cafree;
  (*

    _ItemC := (Sender as TForm).Tag;

    if (Assigned(FProgramsItemInfo[_ItemC].AppClose)) then
      FProgramsItemInfo[_ItemC].AppClose(Sender, Action);

    FProgramsItemInfo[_ItemC].MainFormHandle := nil;



    while (tmFreeLib.Enabled) do { wait for terminating last operation } ;
    FFreeHandled := FProgramsItemInfo[_ItemC].DLLHandled;
    tmFreeLib.Enabled := True;


    {delete xtab}

    xTab.Refresh;
    for tabcount:=0 to xTab.Tabs.Count-1 do
    begin
      if xTab.Tabs.Strings[tabcount]=FProgramsItemInfo[_ItemC].Description then
      begin
        xTab.DeleteTab(tabcount);
        exit;
      end;
    end;
    *)
end;

procedure TfrmMainApplication.AppExtActivate(Sender: TObject);
var
  i, _Item: Integer;
begin

  _Item := (Sender as TForm).Tag;

  if (Assigned(FProgramsItemInfo[_Item].AppActivate)) then
    FProgramsItemInfo[_Item].AppActivate(Sender);

  FProgramsItemInfo[_Item].MenuItem.Checked := True;

end;

procedure TfrmMainApplication.RunningProgramClick(Sender: TObject);
var
  i, _Item: Integer;
begin
  _Item := (Sender as TMenuItem).Tag;

  for i := 0 to High(FProgramsItemInfo) do
  begin
    if (Assigned(FProgramsItemInfo[i].MainFormHandle)) then
    begin
      if (FProgramsItemInfo[i].MainFormHandle.Tag = _Item) then
        FProgramsItemInfo[i].MainFormHandle.BringToFront();
    end;
  end;
end;

procedure TfrmMainApplication.xTabCloseTab(Sender: TObject; Index: Integer;
  var Close: Boolean);

  function GetFormHandle(_ProgramName: String): TForm;
  var
    i,j: Integer;
  begin
    Result := nil;
    for i := 0 to High(FProgramsItemInfo) do
    begin
        if FProgramsItemInfo[i].Description=_ProgramName then
        begin
         Result := FProgramsItemInfo[i].MainFormHandle;
        end;
    end;
  end;

var
  _RunningForm: TForm;
  _Item: Integer;
begin

    //try
      if xTab.Tabs.Count=1 then
      begin
        if (Application.MessageBox(pchar('ยืนยันการจบโปรแกรม ? '),pchar('Exit Applicatoin'),MB_OKCANCEL or MB_ICONWARNING)=mrOK)
        then Application.Terminate;
      end else
      begin
          _RunningForm := GetFormHandle(xTab.Tabs.Strings[Index]);
          if Assigned(_RunningForm)  then
          begin
           _RunningForm.Tag:=_Item;
           _RunningForm.Close;
           //_RunningForm.free;
           xTab.DeleteTab(index);

          end;
      end;
end;

procedure TfrmMainApplication.xTabTabChange(Sender: TObject);
  function GetFormHandle(_ProgramName: String): TForm;
  var
    i,j: Integer;
  begin
    Result := nil;
    for i := 0 to High(FProgramsItemInfo) do
    begin
      if FProgramsItemInfo[i].Description=_ProgramName then
       Result := FProgramsItemInfo[i].MainFormHandle;
    end;
  end;
var
  _RunningForm: TForm;
  _Item: Integer;
begin

      if xTab.ActiveTab>=0 then
        if xTab.ActiveTab <= xTab.Tabs.Count then
        begin
          _RunningForm := GetFormHandle(xTab.Tabs.Strings[xTab.ActiveTab]);
          if Assigned(_RunningForm) then
          begin
            try
              _RunningForm.BringToFront();
            except
              FProgramsItemInfo[_Item].MainFormHandle := nil;
            end;
          end;
        end;

end;

procedure TfrmMainApplication.Button1Click(Sender: TObject);
var
  cds ,cdsMenuData: TClientDataSet;
begin
  cds := TClientDataSet.Create(nil);
  cds.Data := GetDataSet('select * from CTSTTMNU');
  ShowMessage(IntToStr(cds.RecordCount));
  
end;

procedure TfrmMainApplication.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);

  function GetDllHandle(_ProgramName: String): THandle;
  var
    i,j: Integer;
  begin
    for i := 0 to High(FProgramsItemInfo) do
    begin
      if FProgramsItemInfo[i].Description=_ProgramName then
       Result := FProgramsItemInfo[i].DLLHandled;
    end;
  end;
var
  _DllHandle: THandle;
  _Item: Integer;
begin

      if xTab.ActiveTab>=0 then
        if xTab.ActiveTab <= xTab.Tabs.Count then
        begin
          {
          _DllHandle := GetDllHandle(xTab.Tabs.Strings[xTab.ActiveTab]);
          if _DllHandle<>0 then
          begin

              if (Msg.Message <> WM_KEYDOWN) then
                Exit;

                HandleMessageProc := GetProcAddress(_DllHandle,pchar('HandleMessageFunc'));
                if Assigned(HandleMessageProc) then
                begin
                    if (Msg.wParam = VK_TAB) or (Msg.wParam = VK_UP)
                    or (Msg.wParam = VK_F2)
                    or (Msg.wParam = VK_F3)
                    or (Msg.wParam = VK_F4)
                    or (Msg.wParam = VK_F5)
                    or (Msg.wParam = VK_F6)
                    or (Msg.wParam = VK_F7)
                    or (Msg.wParam = VK_F8)
                    or (Msg.wParam = VK_F9)
                    or (Msg.wParam = VK_F11)
                    or (Msg.wParam = VK_LEFT) or (Msg.wParam = VK_RIGHT)
                    or (Msg.wParam = VK_DOWN) or (Msg.wParam = VK_RETURN) then
                         Handled := HandleMessageProc(Msg);
                end;

          end;
          }
        end;

end;



procedure TfrmMainApplication.btnConfigClick(Sender: TObject);
var
  frm : TfrmConfig;
begin
  frm := TfrmConfig.Create(Application);
  frm.ShowModal;
  frm.Free;

  edUserID.SetFocus;
end;

procedure TfrmMainApplication.btnInstallDBClick(Sender: TObject);
var frm:TfrmInstallDatabase;
begin
   frm := TfrmInstallDatabase.Create(Application);
   frm.ShowModal;
   frm.Free;
end;

procedure TfrmMainApplication.btnExitClick(Sender: TObject);
begin
 frmMainApplication.Close;
end;

end.
