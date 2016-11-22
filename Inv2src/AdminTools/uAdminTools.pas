unit uAdminTools;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, ComCtrls, SevenZipVCL,
  DAScript, MyScript, DB, MemDS, DBAccess, MyAccess, ZSqlProcessor, DADump,
  MyDump, ZipMstr, ZAbstractConnection, ZConnection, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons, DBClient, Mask,
  JvExMask, JvToolEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,uCiaXml,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,ValEdit,  CheckLst,Math,CommCtrl;

type

  TRolePermission = class
    Id : integer;
    RoleId:integer;
    MenuId:integer;
    Entry:string;
    Edit:string;
    Delete:string;
    Cancel:string;
    Approve:string;
    Option1:string;
    Option2:string;
    Option3:string;
    Option4:string;
    Option5:string;
    Option6:string;
    Option7:string;
    Option8:string;
    Option9:string;
    Option10:string;
  end;


  TfrmAdminTools = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    TabUserPermissions: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    MyConnection1: TMyConnection;
    ZConnection1: TZConnection;
    Zip: TZipMaster;
    MyDump: TMyDump;
    zdump: TZSQLProcessor;
    MyQuery: TMyQuery;
    MyScript: TMyScript;
    SevenZip1: TSevenZip;
    RzPanel1: TRzPanel;
    ProgressBar: TProgressBar;
    TotalPg: TProgressBar;
    btnBackup: TcxButton;
    ListView1: TListView;
    StatusLabel: TLabel;
    edServer: TEdit;
    edDatabase: TEdit;
    edUserName: TEdit;
    edPassword: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BackupFileNameEdit: TJvFilenameEdit;
    Options: TGroupBox;
    raDatabase: TRadioButton;
    raAllStockDatabase: TRadioButton;
    raOnlyStockData: TRadioButton;
    cxMemo1: TcxMemo;
    btnShowTables: TcxButton;
    btnCheckBackup: TcxButton;
    btnRestoreAll: TcxButton;
    btnBackUpSelected: TcxButton;
    btnRestoreSelected: TcxButton;
    Splitter1: TSplitter;
    lvUsrePermission: TListView;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsAllRole: TClientDataSet;
    dsAllRole: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    btnSave: TcxButton;
    procedure MyDumpBackupProgress(Sender: TObject; ObjectName: String;
      ObjectNum, ObjectCount, Percent: Integer);
    procedure MyDumpRestoreProgress(Sender: TObject; Percent: Integer);
    procedure SevenZip1Addfile(Sender: TObject; Filename: WideString;
      Filesize: Int64);
    procedure SevenZip1Extractfile(Sender: TObject; Filename: WideString;
      Filesize: Int64);
    procedure SevenZip1Listfile(Sender: TObject; Filename: WideString;
      Fileindex, FileSizeU, FileSizeP, Fileattr, Filecrc: Int64;
      Filemethod: WideString; FileTime: Double);
    procedure SevenZip1PreProgress(Sender: TObject; MaxProgress: Int64);
    procedure SevenZip1Progress(Sender: TObject; Filename: WideString;
      FilePosArc, FilePosFile: Int64);
    procedure btnBackupClick(Sender: TObject);
    procedure btnShowTablesClick(Sender: TObject);
    procedure btnRestoreAllClick(Sender: TObject);
    procedure btnRestoreSelectedClick(Sender: TObject);
    procedure btnCheckBackupClick(Sender: TObject);
    procedure btnBackUpSelectedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvUsrePermissionColumnClick(Sender: TObject;
      Column: TListColumn);
    procedure lvUsrePermissionCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvUsrePermissionCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure lvUsrePermissionMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cdsAllRoleAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    FListViewOldWndProc,FListViewStockOldWndProc,FListViewSubStockOldWndProc: TWndMethod;
    LastUpdateTickcount : Int64;
    FMode: integer;
    procedure zipFiles;
    procedure DoRestoreDataFromFile(fn: string);
    procedure DoRestoreDatafromZipFile;
    procedure readConfigFile;

    procedure getAllRole();
    procedure initRolePermission(RoleId:integer);

    procedure ListViewNewWndProc(var Msg: TMessage);
    procedure ListViewStockNewWndProc(var Msg: TMessage);
    procedure ListViewSubStockNewWndProc(var Msg: TMessage);

    
  public
    { Public declarations }
  end;

const
  SubItemCheck = 1;
  cl1 = clWhite;
  cl2 = clWhite;

var
  frmAdminTools: TfrmAdminTools;
  gettempdir : string;
  const bakExt='.b7z'; // .7z

implementation

uses  sevenzip, CommonUtils, STDLIB;

{$R *.dfm}

function IfThenS(AValue: Boolean; const ATrue: string; const AFalse: string): string;
begin
  if AValue then
    Result := ATrue
  else
    Result := AFalse;
end;


function GetFileSize(const FileName: string): Int64;
var
  Handle: THandle;
  FindData: TWin32FindData;
begin
  Handle := FindFirstFile(PChar(FileName), FindData);
  if Handle <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      Int64Rec(Result).Lo := FindData.nFileSizeLow;
      Int64Rec(Result).Hi := FindData.nFileSizeHigh;
      Exit;
    end;
  end;
  Result := -1;
end;

function DeleteFiles(const FileMask: string): Boolean;
var
  SearchRec: TSearchRec;
begin
  Result := FindFirst(ExpandFileName(FileMask), faAnyFile, SearchRec) = 0;
  try
    if Result then
      repeat
        //        if (SearchRec.Name[1] <> '.') and
        //      !!! BUG !!!
        // (rom) added '..' to complete the fix
        if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') and
          (SearchRec.Attr and faVolumeID <> faVolumeID) and
          (SearchRec.Attr and faDirectory <> faDirectory) then
        begin
          Result := DeleteFile(ExtractFilePath(FileMask) + SearchRec.Name);
          if not Result then
            Break;
        end;
      until FindNext(SearchRec) <> 0;
  finally
    FindClose(SearchRec);
  end;
end;

procedure TfrmAdminTools.MyDumpBackupProgress(Sender: TObject;
  ObjectName: String; ObjectNum, ObjectCount, Percent: Integer);
begin
  ProgressBar.position:=percent;

  if (Gettickcount-LastUpdateTickcount)>3000 then
  begin
    LastUpdateTickcount:=GetTickCount;
    application.processmessages;

  end;
end;

procedure TfrmAdminTools.MyDumpRestoreProgress(Sender: TObject;
  Percent: Integer);
begin
  ProgressBar.position := percent;

  if (Gettickcount - LastUpdateTickcount) > 3000 then
  begin
    LastUpdateTickcount := GetTickCount;
    application.processmessages;

  end;
end;

procedure TfrmAdminTools.SevenZip1Addfile(Sender: TObject;
  Filename: WideString; Filesize: Int64);
begin
  statuslabel.caption := 'Compress file '+filename;
 progressbar.position := 0;
 progressbar.Max := filesize;
end;

procedure TfrmAdminTools.SevenZip1Extractfile(Sender: TObject;
  Filename: WideString; Filesize: Int64);
begin
 statuslabel.caption := 'Extract file ' + filename;
end;

procedure TfrmAdminTools.SevenZip1Listfile(Sender: TObject;
  Filename: WideString; Fileindex, FileSizeU, FileSizeP, Fileattr,
  Filecrc: Int64; Filemethod: WideString; FileTime: Double);
var
  l :tlistitem;
begin
 if fileattr = fadirectory then exit;

 l := listview1.Items.Add;
 l.Caption := extractfilename(filename);
 l.SubItems.Add(extractfilepath(filename));
 l.SubItems.Add(inttostr(Fileattr));
 l.SubItems.Add(inttostr(filesizep));
 l.SubItems.Add(inttostr(filesizeu));
 l.SubItems.Add(inttohex(filecrc,8));
 l.SubItems.Add(filemethod);
 l.SubItems.Add(inttostr(fileindex));
 l.SubItems.Add(Datetimetostr(filetime));
end;

procedure TfrmAdminTools.SevenZip1PreProgress(Sender: TObject;
  MaxProgress: Int64);
begin
  if Maxprogress > 0 then totalpg.Max := Maxprogress;
end;

procedure TfrmAdminTools.SevenZip1Progress(Sender: TObject;
  Filename: WideString; FilePosArc, FilePosFile: Int64);
begin
  totalpg.Position := fileposArc;

//progress of current file
 progressbar.Position := fileposfile;
 application.ProcessMessages;
end;



procedure TfrmAdminTools.zipFiles;
var
   Arch: I7zOutArchive;
 begin
 // with CreateInArchive(CLSID_CFormatZip) do
   begin
//     OpenStream(T7zStream.Create(TFileStream.Create('c:\test.zip', fmOpenRead), soOwned));
//     OpenStream(aStream, soReference);

     Arch := CreateOutArchive(CLSID_CFormat7z);
     // add a file
     Arch.AddFile('c:\test.bin', 'folder\test.bin');
     // add files using willcards and recursive search
     Arch.AddFiles('c:\test', 'folder', '*.pas;*.dfm', true);
     // add a stream
    // Arch.AddStream(aStream, soReference, faArchive, CurrentFileTime, CurrentFileTime, 'folder\test.bin', false, false);
     // compression level
     SetCompressionLevel(Arch, 5);
     // compression method if <> LZMA
     SevenZipSetCompressionMethod(Arch, m7BZip2);
     // add a progress bar ...
//     Arch.SetProgressCallback(...);
     // set a password if necessary
  //   Arch.SetPassword('password');
     // Save to file
     Arch.SaveToFile('c:\test.zip');
     // or a stream
    // Arch.SaveToStream(aStream);
   end;
 end;

procedure TfrmAdminTools.btnBackupClick(Sender: TObject);
var tblist:tstringlist;  i,fcount:integer; tc:tclientdataset;
   Arch: I7zOutArchive;
begin
  listview1.items.clear;

  myconnection1.connected:=false;
  myconnection1.server:= edServer.Text;
  myconnection1.database:=edDatabase.Text ;
  myconnection1.username:=edUserName.Text;
  myconnection1.password:=edPassword.text ;

  myconnection1.connected:=true;

  backupfilenameedit.readonly:=true;
  btnBackup.enabled:=false;

  myquery.close;
  myquery.sql.text:='show tables ';
  myquery.open;

  tblist:=tstringlist.create;

  fcount := 0;

  while not myquery.eof do
  begin
    inc(fcount);

   // if fcount <=100 then

    if raDatabase.Checked then
    begin
      if uppercase(myquery.fields[0].asstring)<>'REPLICATE_LOG' then
      tblist.add(myquery.fields[0].asstring)
    end
    else if raAllStockDatabase.Checked then
    begin
      if copy( myquery.fields[0].asstring,1,5)='stock' then
      tblist.add(myquery.fields[0].asstring) else
      if myquery.fields[0].asstring='serial' then
      tblist.add(myquery.fields[0].asstring) else

      if myquery.fields[0].asstring='reporttemplate' then
      tblist.add(myquery.fields[0].asstring) else
      if myquery.fields[0].asstring='drugitems' then
      tblist.add(myquery.fields[0].asstring) else
      if myquery.fields[0].asstring='nondrugitems' then
      tblist.add(myquery.fields[0].asstring) ;


    end else if raOnlyStockData.Checked then
    begin

      if UpperCase(trim(myquery.fields[0].asstring))<>'STOCK_USER'  then
      if UpperCase(trim(myquery.fields[0].asstring))<>'STOCK_USER_DEPARTMENT' then
      if UpperCase(trim(myquery.fields[0].asstring))<>'STOCK_USER_RIGHT' then
      if UpperCase(trim(myquery.fields[0].asstring))<>'STOCK_USER_WAREHOUSE'  //stock_user_warehouse;
      then
      begin

      if copy( myquery.fields[0].asstring,1,5)='stock' then
      tblist.add(myquery.fields[0].asstring) else
      if myquery.fields[0].asstring='serial' then
      tblist.add(myquery.fields[0].asstring) else

      if myquery.fields[0].asstring='reporttemplate' then
      tblist.add(myquery.fields[0].asstring) else
      if myquery.fields[0].asstring='drugitems' then
      tblist.add(myquery.fields[0].asstring) else
      if myquery.fields[0].asstring='nondrugitems' then
      tblist.add(myquery.fields[0].asstring) ;
      end;


    end;


    myquery.next;
  end;

  myquery.close;

  screen.cursor:=crhourglass;
  totalpg.max:=tblist.count;
  totalpg.position:=0;
  for i:=0 to tblist.count-1 do
  begin
     totalpg.position:=i;
     statuslabel.caption:='Backup table '+tblist[i];
     try
     application.processmessages;
     mydump.tablenames:=tblist[i];
     ProgressBar.position:=0;
     ProgressBar.max:=100;
     mydump.backuptofile(gettempdir+tblist[i]+'.sql');
     except
       on e:exception do
       begin
          cxmemo1.lines.add(e.message);
       end;
     end;

  end;


  myconnection1.connected:=false;

  statuslabel.caption:='Compress backup file';
  Application.ProcessMessages;

  (****)
  {
   begin
     Arch := CreateOutArchive(CLSID_CFormat7z);
     // add a file
     for i:=0 to tblist.count-1 do
      Arch.AddFile(gettempdir+tblist[i]+'.sql',tblist[i]+'.sql');

     //Arch.AddFiles('c:\test', 'folder', '*.pas;*.dfm', true);
     // add a stream
     // Arch.AddStream(aStream, soReference, faArchive, CurrentFileTime, CurrentFileTime, 'folder\test.bin', false, false);
     // compression level
     SetCompressionLevel(Arch, 5);
     // compression method if <> LZMA
     SevenZipSetCompressionMethod(Arch, m7BZip2);
     Arch.SetProgressCallback(nil, ProgressCallback);
     // add a progress bar ...
//     Arch.SetProgressCallback(...);
     // set a password if necessary
     Arch.SetPassword('password');
     // Save to file
     Arch.SaveToFile(BackupFileNameEdit.text);
     // or a stream
    // Arch.SaveToStream(aStream);
   end;
  }
  (****)


  sevenzip1.SZFileName := backupfilenameedit.text;

   sevenzip1.VolumeSize := 0;

   sevenzip1.AddRootDir := gettempdir;
   sevenzip1.Files.Clear;

   for i:=0 to tblist.count-1 do
   sevenzip1.Files.AddString(gettempdir+tblist[i]+'.sql');

   Sevenzip1.Add;



   statuslabel.caption := 'Compress done.';


   screen.cursor:=crdefault;



  for i:=0 to tblist.count-1 do
  begin
    DeleteFile(gettempdir+tblist[i]+'.sql');
    //cxMemo1.Lines.Add(gettempdir+tblist[i]+'.sql');
  end;


  tblist.free;







  backupfilenameedit.readonly:=false;
  btnBackup.enabled:=true;


  ProgressBar.Position:=0;
  TotalPg.Position:=0;
  showmessage('Successfull.');


end;


procedure TfrmAdminTools.btnShowTablesClick(Sender: TObject);
var
  l :tlistitem;
begin
  listview1.items.clear;

  myconnection1.connected:=false;
  myconnection1.server:= edServer.Text;
  myconnection1.database:=edDatabase.Text ;
  myconnection1.username:=edUserName.Text;
  myconnection1.password:=edPassword.text ;

  myconnection1.connected:=true;

  backupfilenameedit.readonly:=true;
  btnBackUpSelected.enabled:=false;

  myquery.close;
  myquery.sql.text:='show tables ';
  myquery.open;

  MyQuery.First;
  while not MyQuery.Eof do
  begin
     l := listview1.Items.Add;
     l.Caption := MyQuery.Fields[0].Value;

    if not MyQuery.Eof then MyQuery.Next;
  end;


  btnBackUpSelected.enabled:=true;

end;


procedure TfrmAdminTools.btnRestoreAllClick(Sender: TObject);
var
  i: integer;
  ts: tstringlist;
begin

  if
    messagedlg('กรุณายืนยันการนำข้อมูลมาใช้',
    mtconfirmation, [mbyes, mbno], 0) <> mryes then
    exit;

  myconnection1.connected := false;
  myconnection1.server:= edServer.Text;
  myconnection1.database:=edDatabase.Text ;
  myconnection1.username:=edUserName.Text;
  myconnection1.password:=edPassword.text ;

  myconnection1.connected := true;
  screen.cursor := crhourglass;

  if fmode = 1 then
  begin
    deletefiles(gettempdir + '*.sql');
    zip.fspecargs.clear;
    zip.zipfilename := backupfilenameedit.text;
    zip.extrbasedir := gettempdir;
    statuslabel.caption := 'Extract zip data ...';
    zip.extract;

  end
  else
  begin
    deletefiles(gettempdir + '*.sql');
    sevenzip1.ExtrBaseDir := gettempdir;

    //Overwrite existing files during extrect ?
    sevenzip1.ExtractOptions := sevenzip1.ExtractOptions + [ExtractOverwrite];

    //Clear Extractlist - for all files do nothing else
    sevenzip1.Files.clear;
    statuslabel.caption := 'Extracting file';
    //if listview1.SelCount > 0 then
    for i := 0 to listview1.Items.Count - 1 do
      // if listview1.Items[i].Selected then
      sevenzip1.Files.AddString(listview1.Items[i].SubItems[6]);

    //extract files
    i := sevenzip1.Extract;

  end;

  totalpg.position := 0;
  totalpg.max := listview1.Items.Count;


  for i := 0 to listview1.Items.Count - 1 do
  begin
    totalpg.position := i + 1;
    statuslabel.caption := 'Restoring file : ' + listview1.Items[i].caption;
    application.processmessages;
    try



        DoRestoreDataFromFile(gettempdir + listview1.Items[i].caption);


      // mydump.restorefromfile(gettempdir+listview1.Items[i].caption);
    except
      on e: exception do
      begin
        cxmemo1.lines.add('Error file : ' + listview1.Items[i].caption + '  ' +
          e.message);
      end;
    end;
  end;

{  if nativerestorecheck.checked then
  begin
    ts.savetofile(extractfiledir(application.exename) + '\pcu_restore.bat');
    ts.free;
    WinExecWait(extractfiledir(application.exename) + '\', 'pcu_restore.bat',
      '',
      sw_show);

  end;   }

  myconnection1.connected := false;
  deletefiles(gettempdir + '*.sql');
  screen.cursor := crdefault;

  showmessage('Restore done.');

end;


procedure TfrmAdminTools.DoRestoreDataFromFile(fn: string);
var
  tf: TextFile;
  s, ps: string;
  statement: string;
  i: integer;
  fz: Int64;
  tk1, tk2, lpz, tz, lasttk: int64;

  // SQLStream : TStringStream;

begin
  if not fileexists(fn) then
  begin
    showmessage('File not found ' + fn);
    exit;
  end;


  assignfile(tf, fn);
  reset(tf);
  i := 0;
  fz :=  GetFileSize(fn);
  cxmemo1.lines.add('Read dump file ' + fn + ' - ' +
    floattostrf(fz, ffcurrency, 10, 0));
  while not eof(tf) do
  begin
    inc(i);
    readln(tf);
  end;

  cxmemo1.lines.add('Read ' + inttostr(i) + ' Lines');
  application.processmessages;
  progressbar.max := i;
  progressbar.position := 0;

  reset(tf);
  i := 0;
  statement := '';

  //SQLStream:=TStringStream.create('');

  lpz := 0;
  tz := 0;
  while not eof(tf) do
  begin
    //if (i mod 100)=0 then
    tk1 := gettickcount;
    progressbar.position := progressbar.position + 1;

    if (gettickcount - lasttk) > 3000 then
    begin
      lasttk := gettickcount;
      application.processmessages;
    end;

    try

      { if length(statement) > 64 * 1024 * 1024 then
       begin
         cxmemo1.lines.add('Ignore big statement !!! >>' + copy(statement, 1,
           100));
         statement := '';

       end;   }

       //  if SQLStream.size>64*1024*1024 then
       //  begin
       //    memo1.lines.add('Ignore big statement !!! >>'+copy(sQLStream.DataString,1,100));
       //    sqlstream.free;
       //      statement := '';
       //      SQLStream:=TStringStream.create('');
       //      end;

      readln(tf, S);
      // application.processmessages;
      ps := trim(s);
      //ps := trim(ps);
      if copy(ps, 1, 2) = '--' then
        ps := '';

      if i < 10 then
      begin
        if uppercase(copy(ps, 1, 3)) = 'USE' then
          ps := ''
        else if uppercase(copy(ps, 1, 15)) = 'CREATE DATABASE' then
          ps := ''
        else if uppercase(copy(ps, 1, 3)) = 'SET' then
        begin

          // if rconnection.protocol<>'mysql-4.1' then
          // ps := '' else
          //  ps:='set names tis620';
        end;
      end;

      statement := statement + ps;

      // SQLStream.WriteString(ps);

      if ps <> '' then
        if (pos(';', ps) = length(ps)) then
        begin
          inc(i);

          // zdump.script.loadfromstream(SQLStream);
          //zdump.script.text := statement;

          myscript.sql.text := statement;

          // try

             // memo1.lines.add(copy(SQLStream.DataString, 1, 50) + ' Chunk : ' +
             // floattostrf(SQLStream.size, ffcurrency, 10, 0));  except end;

            // cxmemo1.lines.add(copy(statement, 1, 50) + ' Chunk : ' +
            //   floattostrf(length(statement), ffcurrency, 10, 0));
         //  except
         ////  end;

          lpz := lpz + length(statement);
          //lpz := lpz + sqlstream.size;

        //  application.processmessages;
          try
            //  zdump.Execute;
            myscript.execute;
          except
            on e: exception do
            begin

              cxmemo1.lines.add(e.message);
            end;
          end;

          { if lpz > 100000 then
           begin
             tz := tz + lpz;
             tk2 := gettickcount - tk1;

             tk2 := (((fz - tz) * tk2) div lpz);

             timelabel.caption := inttostr((tk2 div 1000) div 60) +
               ':' + inttostr((tk2 div 1000) mod 60);

             tk1 := gettickcount;
             lpz := 0;
           end; }
           // sqlstream.free;
          statement := '';
          // SQLStream:=TStringStream.create('');
        end;

    except
      on e: exception do
      begin
        cxMemo1.Lines.Add(e.message);
      end;
    end;

  end;
  closefile(tf);

  //sqlstream.free;
end;


procedure TfrmAdminTools.DoRestoreDatafromZipFile;
var
  i: integer;
begin
  myconnection1.connected := false;
  myconnection1.server:= edServer.Text;
  myconnection1.database:=edDatabase.Text ;
  myconnection1.username:=edUserName.Text;
  myconnection1.password:=edPassword.text ;
  myconnection1.connected := true;
  deletefiles(gettempdir + '*.sql');
  zip.fspecargs.clear;
  zip.zipfilename := BackupFileNameEdit.text;
  zip.extrbasedir := gettempdir;
  statuslabel.caption := 'Extract zip data ...';
  zip.extract;

  { if zip.ZipContents.Count > 0 then
     for i := 0 to zip.ZipContents.Count - 1 do
     begin
       if fileexists(gettempdir + zip.ZipContents[i]) then
         DoRestoreDataFromFile(gettempdir + zip.ZipContents[i])
       else
         showmessage('Error extract error file not found [' + zip.ZipContents[i]
           +
           ']');
     end;   }

  showmessage('Restore done.');
end;


procedure TfrmAdminTools.btnRestoreSelectedClick(Sender: TObject);
var
  i: integer;
  ts: tstringlist;
begin

  if
    messagedlg('กรุณายืนยันการนำข้อมูลมาใช้',
    mtconfirmation, [mbyes, mbno], 0) <> mryes then
    exit;

  myconnection1.connected := false;
  myconnection1.server:= edServer.Text;
  myconnection1.database:=edDatabase.Text ;
  myconnection1.username:=edUserName.Text;
  myconnection1.password:=edPassword.text ;

  myconnection1.connected := true;
  screen.cursor := crhourglass;

  if fmode = 1 then
  begin
    deletefiles(gettempdir + '*.sql');
    zip.fspecargs.clear;
    zip.zipfilename := backupfilenameedit.text;
    zip.extrbasedir := gettempdir;
    statuslabel.caption := 'Extract zip data ...';
    zip.extract;

  end
  else
  begin
    deletefiles(gettempdir + '*.sql');
    sevenzip1.ExtrBaseDir := gettempdir;

    //Overwrite existing files during extrect ?
    sevenzip1.ExtractOptions := sevenzip1.ExtractOptions + [ExtractOverwrite];

    //Clear Extractlist - for all files do nothing else
    sevenzip1.Files.clear;
    statuslabel.caption := 'Extracting file';
    //if listview1.SelCount > 0 then
    for i := 0 to listview1.Items.Count - 1 do
      // if listview1.Items[i].Selected then
      sevenzip1.Files.AddString(listview1.Items[i].SubItems[6]);

    //extract files
    i := sevenzip1.Extract;

  end;

  totalpg.position := 0;
  totalpg.max := listview1.Items.Count;


  for i := 0 to listview1.Items.Count - 1 do
  begin
    totalpg.position := i + 1;
    statuslabel.caption := 'Restoring file : ' + listview1.Items[i].caption;
    application.processmessages;
    try



        if   listview1.Items[i].Checked then
        DoRestoreDataFromFile(gettempdir + listview1.Items[i].caption);


    except
      on e: exception do
      begin
        cxmemo1.lines.add('Error file : ' + listview1.Items[i].caption + '  ' +
          e.message);
      end;
    end;
  end;


  myconnection1.connected := false;
  deletefiles(gettempdir + '*.sql');
  screen.cursor := crdefault;

  showmessage('Restore done.');

end;


procedure TfrmAdminTools.btnCheckBackupClick(Sender: TObject);
var
  tblist: tstringlist;
  filecount, i: integer;
begin

  if not fileexists(BackupFileNameEdit.text) then
  begin
    showmessage('Invalid backup file');
    exit;
  end;

  listview1.items.clear;

  if copy(BackupFileNameEdit.text, length(BackupFileNameEdit.text) - 3, 4) =
    '.zip' then
  begin

    //if messagedlg('Please confirm restore database ?',
    //  mtconfirmation, [mbyes, mbno], 0) <> mryes then
   //   exit;
   // DoRestoreDatafromZipFile;
   // exit;
    zip.fspecargs.clear;
    zip.zipfilename := BackupFileNameEdit.text;
    filecount := zip.Count;
    FMode := 1;
  end
  else
  begin

    sevenzip1.SZFileName := BackupFileNameEdit.text;

    filecount := sevenzip1.List;
    FMode := 2;

  end;

  btnRestoreAll.enabled := filecount > 0;
  btnRestoreSelected.enabled := filecount > 0;

  if filecount = 0 then
  begin
    showmessage('No backup found');
    exit;
  end
  else
  begin

  end;

end;


procedure TfrmAdminTools.btnBackUpSelectedClick(Sender: TObject);
var tblist:tstringlist;  i,fcount:integer; tc:tclientdataset;
   Arch: I7zOutArchive;
   itemCount:integer;
begin


  backupfilenameedit.readonly:=false;
  btnBackUpSelected.enabled:=false;


  tblist:=tstringlist.create;

  fcount := 0;
  itemCount:=0;

  for itemCount := 0 to ListView1.Items.Count-1 do
  begin
   // if fcount <=100 then
   if ListView1.Items[fcount].Checked then
   begin
    if raDatabase.Checked then
    begin
      if uppercase(trim(ListView1.Items[fcount].Caption))<>'REPLICATE_LOG' then
      tblist.add(trim(ListView1.Items[fcount].Caption))
    end
    else if raAllStockDatabase.Checked then
    begin
      if copy(trim(ListView1.Items[fcount].Caption),1,5)='stock' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else
      if trim(ListView1.Items[fcount].Caption)='serial' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else

      if trim(ListView1.Items[fcount].Caption)='reporttemplate' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else
      if trim(ListView1.Items[fcount].Caption)='drugitems' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else
      if trim(ListView1.Items[fcount].Caption)='nondrugitems' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) ;


    end else if raOnlyStockData.Checked then
    begin

      if UpperCase(trim(ListView1.Items[fcount].Caption))<>'STOCK_USER'  then
      if UpperCase(trim(ListView1.Items[fcount].Caption))<>'STOCK_USER_DEPARTMENT' then
      if UpperCase(trim(ListView1.Items[fcount].Caption))<>'STOCK_USER_RIGHT' then
      if UpperCase(trim(ListView1.Items[fcount].Caption))<>'STOCK_USER_WAREHOUSE'  //stock_user_warehouse;
      then
      begin

      if copy( trim(ListView1.Items[fcount].Caption),1,5)='stock' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else
      if trim(ListView1.Items[fcount].Caption)='serial' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else

      if trim(ListView1.Items[fcount].Caption)='reporttemplate' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else
      if trim(ListView1.Items[fcount].Caption)='drugitems' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) else
      if trim(ListView1.Items[fcount].Caption)='nondrugitems' then
      tblist.add(trim(ListView1.Items[fcount].Caption)) ;
      end;


    end;

   end;
   inc(fcount);

  end;

  myquery.close;

  screen.cursor:=crhourglass;
  totalpg.max:=tblist.count;
  totalpg.position:=0;
  for i:=0 to tblist.count-1 do
  begin
     totalpg.position:=i;
     statuslabel.caption:='Backup table '+tblist[i];
     try
     application.processmessages;
     mydump.tablenames:=tblist[i];
     ProgressBar.position:=0;
     ProgressBar.max:=100;
     mydump.backuptofile(gettempdir+tblist[i]+'.sql');
     except
       on e:exception do
       begin
          cxmemo1.lines.add(e.message);
       end;
     end;

  end;


  myconnection1.connected:=false;

  statuslabel.caption:='Compress backup file';
  Application.ProcessMessages;


  sevenzip1.SZFileName := backupfilenameedit.text;

   sevenzip1.VolumeSize := 0;

   sevenzip1.AddRootDir := gettempdir;
   sevenzip1.Files.Clear;

   for i:=0 to tblist.count-1 do
   sevenzip1.Files.AddString(gettempdir+tblist[i]+'.sql');

   Sevenzip1.Add;



   statuslabel.caption := 'Compress done.';


   screen.cursor:=crdefault;

  tblist.free;

  for i:=0 to tblist.count-1 do
  DeleteFile(gettempdir+tblist[i]+'.sql');


  backupfilenameedit.readonly:=false;
  btnBackUpSelected.enabled:=true;

  showmessage('Successfull.');


end;

procedure TfrmAdminTools.FormShow(Sender: TObject);
var bf:string;
begin
  //RegisterFileType('b7z',Application.ExeName) ;
  readConfigFile;

  gettempdir := ExtractFilePath(Application.ExeName)+'temp\';
  bf:=ExtractFilePath(Application.ExeName) + 'backup\';
  forcedirectories(bf);
  forcedirectories(gettempdir);
  BackupFileNameEdit.text:=bf+'backup_'+trim(edDatabase.Text)+'_'+formatdatetime('yyyymmddhhnnss',now)+bakExt;



  getAllRole;
{  if ParamCount>0 then
  begin
    BackupFileNameEdit.Text := ParamStr(1);
    PageControl.ActivePage:=tabRestore;
  end else PageControl.ActivePage:=tabBackup;
 }
  //ShowMessage(IntToStr(ParamCount));
  //ShowMessage(ParamStr(1));


end;

procedure TfrmAdminTools.readConfigFile;
const
_config_file ='appconfig.xml';

var rep:boolean;
xmlConn : TXMLConfig;
_app_address,_app_hostname,_app_database,_app_user,_app_password,_app_db_port:string;
begin
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
    if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
    begin

        xmlConn.WriteString('AppConfig','ADDRESS','10.0.2.101');
        xmlConn.WriteString('AppConfig','HOSTNAME','localhost');
        xmlConn.WriteString('AppConfig','USER','joni');
        xmlConn.WriteString('AppConfig','PASSWORD','123456');
        xmlConn.WriteString('AppConfig','DATABASE','inv2_db');
        xmlConn.Save;
    end;


     _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
     _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
     _app_database:=DecryptEx(xmlConn.ReadString('AppConfig','DATABASE',''));
     _app_user:=DecryptEx(xmlConn.ReadString('AppConfig','USER','sa'));
     _app_password:=DecryptEx(xmlConn.ReadString('AppConfig','PASSWORD','123456'));
     _app_db_port:=xmlConn.ReadString('AppConfig','PORT','3306');


     edServer.Text:=_app_address;
     edDatabase.Text := _app_database;
     edUserName.Text :=_app_user;
     edPassword.Text := _app_password;
end;


procedure TfrmAdminTools.getAllRole;
begin
  cdsAllRole.Data := GetDataSet('select * from ICMTTROL');
end;

procedure TfrmAdminTools.lvUsrePermissionColumnClick(Sender: TObject;
  Column: TListColumn);
var i:integer;
begin

  if (Sender is Tlistview) then
    //if TListView(Sender).ItemIndex>0 then
      if TListView(Sender).tag=1 then
      begin
        if Column.Index<=0 then Exit;

        Column.Tag :=Column.Tag+1;
        for I := 0 to TListView(Sender).Items.Count - 1 do
        begin
          if (Column.Tag mod 2)<>0 then
            TListView(Sender).Items.Item[i].SubItems[Column.Index-1]:='Y' else TListView(Sender).Items.Item[i].SubItems[Column.Index-1]:='N';

          case (Column.Index) of //TListView(Sender).ItemIndex
            1: TRolePermission(TListView(Sender).Items[i].data).Entry
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            2: TRolePermission(TListView(Sender).Items[i].data).Edit
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            3: TRolePermission(TListView(Sender).Items[i].data).Delete
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            4: TRolePermission(TListView(Sender).Items[i].data).Cancel
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            5: TRolePermission(TListView(Sender).Items[i].data).Approve
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            6: TRolePermission(TListView(Sender).Items[i].data).Option1
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            7: TRolePermission(TListView(Sender).Items[i].data).Option2
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            8: TRolePermission(TListView(Sender).Items[i].data).Option3
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
            9: TRolePermission(TListView(Sender).Items[i].data).Option4
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
           10: TRolePermission(TListView(Sender).Items[i].data).Option5
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
           11: TRolePermission(TListView(Sender).Items[i].data).Option6
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
           12: TRolePermission(TListView(Sender).Items[i].data).Option7
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
           13: TRolePermission(TListView(Sender).Items[i].data).Option8
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
           14: TRolePermission(TListView(Sender).Items[i].data).Option9
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
           15: TRolePermission(TListView(Sender).Items[i].data).Option10
                      := IfThenS(uppercase(TListView(Sender).Items[i].SubItems.Strings[Column.Index-1])='Y','Y','N') ;
          end;
        end;
      end;
end;

procedure TfrmAdminTools.lvUsrePermissionCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if (Item.Index mod 2) = 0 then
    sender.Canvas.Brush.Color := cl1
  else
    sender.Canvas.Brush.Color := cl2;
end;

procedure TfrmAdminTools.lvUsrePermissionCustomDrawSubItem(
  Sender: TCustomListView; Item: TListItem; SubItem: Integer;
  State: TCustomDrawState; var DefaultDraw: Boolean);
var  
  s    : TSize;  
  r    : TRect;  
  rc   : TRect;  
  i    : Integer;
  Dx   : Integer;  
  cr   : TColor;  
begin  
  if (SubItem >= SubItemCheck) then
  begin
    DefaultDraw := False;
    rc  := Item.DisplayRect(drBounds);
    Dx  := 0;  
    for i := 0 to SubItem - 1 do
      Inc(Dx,Sender.Column[i].Width);
    rc.Left  := rc.Left + Dx;  
    rc.Right := rc.Left + Sender.Column[SubItem].Width;  
    cr := Sender.Canvas.Brush.Color;
    if Item.Selected and Sender.RowSelect and Sender.Focused then
      Sender.Canvas.Brush.Color := clHighlight
    else

    if (Item.Index mod 2) = 0 then
      sender.Canvas.Brush.Color :=cl1
    else
      sender.Canvas.Brush.Color := cl2;

//      Sender.Canvas.Brush.Color :=   clWindow;
    Sender.Canvas.FillRect(rc);  
    if cdsFocused in State then  
    begin  
      DrawFocusRect(Sender.Canvas.Handle,rc);  
      Sender.Canvas.FillRect(Rect(rc.Left,rc.Top + 1,rc.Left + 1,rc.Bottom - 1));  
    end;
    Sender.Canvas.Brush.Color := cr;
    s.cx := GetSystemMetrics(SM_CXMENUCHECK);  
    s.cy := GetSystemMetrics(SM_CYMENUCHECK);  
    Dx   := (Sender.Column[SubItem].Width-GetSystemMetrics(SM_CXMENUCHECK)) div 2;
    r.Top    := rc.Top + (rc.Bottom - rc.Top - s.cy) div 2;
    r.Bottom := r.Top + s.cy;  
    r.Left   := rc.Left + Dx;  
    r.Right  := r.Left + s.cx;

    DrawFrameControl(Sender.Canvas.Handle, r, DFC_BUTTON, IfThen(CompareText(Item.SubItems[SubItem-1],'Y')=0, DFCS_CHECKED,DFCS_BUTTONCHECK));
  end;
end;

procedure TfrmAdminTools.lvUsrePermissionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var  
  s    : TSize;  
  r    : TRect;  
  Rect : TRect;  
  i    : Integer;  
  Dx   : Integer;


pt: TPoint;
item : TLIstItem;
hittestinfo: TLVHitTestInfo;

begin
  //  pt:= TListView(Sender).ScreenToClient( mouse.cursorpos );
  pt:= TListView(Sender).ScreenToClient( mouse.cursorpos );
  //item := TListView(Sender).GetItemAt( pt.x, pt.y );
  item := TListView(Sender).GetItemAt( 0, pt.y );

  //ShowMessage(IntToStr(pt.x)+','+IntToStr(pt.Y));
  if (Sender is TListView) then
  If assigned( item ) then
  begin
    TListView(Sender).ItemIndex := item.Index;

 // If assigned( item ) then
//    showmessage('Hit on item '+item.Caption )  ;

    FillChar( hittestinfo, sizeof( hittestinfo ), 0 );
    hittestinfo.pt := pt;
  If -1 <>TListView(Sender).perform( LVM_SUBITEMHITTEST, 0, lparam(@hittestinfo))
  then
      {
      showmessage( format(
    'Item: %d (%s), subitem: %d (%s)',
    [hittestinfo.iItem, lv1.items[hittestinfo.iItem].caption,
    hittestinfo.iSubItem,
    lv1.items[hittestinfo.iItem].Subitems[ hittestinfo.iSubItem-1 ]] ));
    }
    

    if (TListView(Sender).ItemIndex > -1) and (Shift = [ssleft]) then     //?????
    //if (lv1.ItemIndex > -1)  then     //?????
    begin
      Rect  :=TListView(Sender).Items[TListView(Sender).ItemIndex].DisplayRect(drBounds);
      Dx := 0;
      for i := 0 to hittestinfo.iSubItem - 1 do
        Inc(Dx,TListView(Sender).Column[i].Width);
      Rect.Left  :=Rect.Left + Dx;
      Rect.Right :=Rect.Left + TListView(Sender).Column[hittestinfo.iSubItem].Width;
      s.cx := GetSystemMetrics(SM_CXMENUCHECK);
      s.cy := GetSystemMetrics(SM_CYMENUCHECK);
      Dx   := (TListView(Sender).Column[hittestinfo.iSubItem].Width - GetSystemMetrics(SM_CXMENUCHECK)) div 2;
      r.Top    := Rect.Top + (Rect.Bottom - Rect.Top - s.cy) div 2;
      r.Bottom := r.Top + s.cy;
      r.Left   := Rect.Left + Dx;
      r.Right  := r.Left + s.cx;
      if (x >= r.Left) and (y >= r.Top) and (x <= r.Right) and (y <= r.Bottom)then
      begin   //?????????


        // no remove
        if (TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1] = 'Y') then
          TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1] := 'N'
        else
          TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1] := 'Y';



        if TListView(Sender).Items[TListView(Sender).ItemIndex].data<>nil then
        begin
          if TListView(Sender).Tag=1 then   // user permission
          begin
            case (hittestinfo.iSubItem) of //TListView(Sender).ItemIndex

              1: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Entry
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              2: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).edit
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              3: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).delete
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              4: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).cancel
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              5: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).approve
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              6: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option1
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              7: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option2
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              8: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option3
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
              9: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option4
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
             10: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option5
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
             11: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option6
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
             12: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option7
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
             13: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option8
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
             14: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option8
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;
             15: TRolePermission(TListView(Sender).Items[TListView(Sender).ItemIndex].data).Option10
                        := IfThenS(uppercase(TListView(Sender).Items[TListView(Sender).ItemIndex].SubItems.Strings[hittestinfo.iSubItem-1])='Y','Y','N') ;

            end;

          end;
        end;

      end;
    end;
  end;// else ShowMessage('item not assign');
end;

procedure TfrmAdminTools.initRolePermission(RoleId: integer);
var
  lvPmItem,lvStockItem,lvSubStockItem : TListItem;
  i:integer;

  cdsStockDepartment ,cdsStockWarehouse,cdsStockRight: Tclientdataset;
  strsql:string;


begin
  try

    lvUsrePermission.Items.clear;
    //lvStock.Items.Clear;
    //lvSubStock.Items.clear;

    //RoleID:=1;

    // stock right
    cdsStockRight := TClientDataSet.Create(nil);
    strsql:=''+
 '      select  '+
 '      a.RECORD_ID,a.NAME_TH,b.*  '+
 '      from CTSTTMNU a  '+
 '      left join ICMTTRPM b on a.RECORD_ID = b.PERMNU and b.PERRCO='+IntToStr(RoleId) +
 '      order by a.RECORD_ID  ';

    cdsStockRight.data := GetDataSet(strsql);
    if cdsStockRight.Active then
      if cdsStockRight.RecordCount>0 then
      begin
        cdsStockRight.first;



        while not cdsStockRight.eof do
        begin
          lvPmItem := lvUsrePermission.Items.Add;


          lvPmItem.Data := TRolePermission.Create;
          TRolePermission(lvPmItem.Data).Id:=1;//cdsStockRight.FieldByName('stock_permission_id').AsInteger;
          TRolePermission(lvPmItem.Data).RoleId:=cdsStockRight.FieldByName('PERRCO').AsInteger;
          TRolePermission(lvPmItem.Data).MenuId:=cdsStockRight.FieldByName('RECORD_ID').AsInteger;

          TRolePermission(lvPmItem.Data).Entry:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERENT').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Edit:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PEREDI').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Delete:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERDEL').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Cancel:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERCAN').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Approve:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERAPP').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option1:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO01').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option2:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO02').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option3:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO03').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option4:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO04').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option5:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO05').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option6:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO06').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option7:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO07').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option8:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO08').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option9:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO09').AsString))='Y','Y','N');
          TRolePermission(lvPmItem.Data).Option10:=IfThenS(uppercase(trim(cdsStockRight.FieldByName('PERO10').AsString))='Y','Y','N');

          lvPmItem.Caption := cdsStockRight.FieldByName('RECORD_ID').AsString+' - '+trim(cdsStockRight.FieldByName('NAME_TH').AsString);


          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Entry)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Edit)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Delete)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Cancel)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Approve)='Y','Y','N')) ;

          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option1)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option2)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option3)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option4)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option5)='Y','Y','N')) ;

          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option6)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option7)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option8)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option9)='Y','Y','N')) ;
          lvPmItem.SubItems.Add(IfThenS(uppercase(TRolePermission(lvPmItem.Data).Option10)='Y','Y','N')) ;

          cdsStockRight.next;
        end;
      end;

  finally
     cdsStockRight.free;
  end;
end;


procedure TfrmAdminTools.cdsAllRoleAfterScroll(DataSet: TDataSet);
begin
  initRolePermission(cdsAllRole.FieldByName('ROLCOD').AsInteger);
end;

procedure TfrmAdminTools.FormCreate(Sender: TObject);
begin
  FListViewOldWndProc := lvUsrePermission.WindowProc;
  lvUsrePermission.WindowProc := ListViewNewWndProc;

  with lvUsrePermission do
  begin
    RowSelect := True;
    ReadOnly := True;
  end;  
end;

procedure TfrmAdminTools.FormDestroy(Sender: TObject);
begin
  lvUsrePermission.WindowProc := FlistViewOldWndProc;
  FListViewOldWndProc  := nil;
end;

procedure TfrmAdminTools.ListViewNewWndProc(var Msg: TMessage);
var
  hdn: ^THDNotify;
begin
  if Msg.Msg = WM_NOTIFY then
  begin
    hdn := Pointer(Msg.lParam);
    if (hdn.hdr.code = HDN_BeginTrackW) or (hdn.hdr.code = HDN_BeginTrackA) then
      Msg.Result := 1
    else
      FListViewOldWndProc(Msg);
  end
  else
    FListViewOldWndProc(Msg);
end;

procedure TfrmAdminTools.ListViewStockNewWndProc(var Msg: TMessage);
var  
  hdn: ^THDNotify;
begin
  if Msg.Msg = WM_NOTIFY then
  begin
    hdn := Pointer(Msg.lParam);
    if (hdn.hdr.code = HDN_BeginTrackW) or (hdn.hdr.code = HDN_BeginTrackA) then
      Msg.Result := 1
    else
      FListViewStockOldWndProc(Msg);
  end
  else
    FListViewStockOldWndProc(Msg);
end;

procedure TfrmAdminTools.ListViewSubStockNewWndProc(var Msg: TMessage);
var  
  hdn: ^THDNotify;
begin
  if Msg.Msg = WM_NOTIFY then
  begin
    hdn := Pointer(Msg.lParam);
    if (hdn.hdr.code = HDN_BeginTrackW) or (hdn.hdr.code = HDN_BeginTrackA) then
      Msg.Result := 1
    else
      FListViewSubStockOldWndProc(Msg);
  end
  else
    FListViewSubStockOldWndProc(Msg);
end;


procedure TfrmAdminTools.btnSaveClick(Sender: TObject);
var cdsWarehousePermission,cdsSubStockPermission,cdsUserPermission,cdsTemp,cdsAllUser:TClientDataSet;
  i:integer;
  RoleId:integer;
begin
  try

    if cdsAllRole.RecordCount<=0 then
    begin
      Application.MessageBox(pchar('??????????????????? !! ????????????????????????'),pchar('Warning'),MB_ICONWARNING or MB_OK);
      exit;
    end;

    cdsTemp :=TClientDataSet.Create(nil);
    cdsAllUser := TClientDataSet.Create(nil);

    //RoleId :=1;
    RoleId :=cdsAllRole.FieldByName('ROLCOD').AsInteger;
    {
    // update warehouse    ===================================================================================================
    cdsWarehousePermission:=TClientDataSet.Create(nil);
    cdsWarehousePermission.data:=HOSxP_GetDataSet('select * from stock_user_warehouse_permission where stock_user_role_id='+inttostr(RoleId));

    if cdsWarehousePermission.ChangeCount>0  then
      HOSxP_UpdateDelta(cdsWarehousePermission.Delta,'select * from stock_user_warehouse_permission where stock_user_role_id='+inttostr(RoleId));
      }
     {
    // update Sub Stock    ===================================================================================================
    cdsSubStockPermission:=TClientDataSet.Create(nil);
    cdsSubStockPermission.data:=HOSxP_GetDataSet('select * from stock_user_substock_permission where stock_user_role_id='+inttostr(RoleId));

    if cdsSubStockPermission.ChangeCount>0  then
      HOSxP_UpdateDelta(cdsSubStockPermission.Delta,'select * from stock_user_substock_permission where stock_user_role_id='+inttostr(RoleId));
    }

    // update user permission    ===============================================================================================
    cdsUserPermission:=TClientDataSet.Create(nil);
    cdsUserPermission.data:=GetDataSet('select * from ICMTTRPM where PERRCO='+inttostr(RoleId));
    for i := 0 to lvUsrePermission.Items.Count - 1 do
    begin
      if
        cdsUserPermission.Locate('PERCOD;PERRCO;PERMNU'
        ,VarArrayOf([TRolePermission(lvUsrePermission.Items[i].data).Id,RoleId
        ,TRolePermission(lvUsrePermission.Items[i].data).MenuId]),[])
      then
        cdsUserPermission.edit
      else
        begin
          cdsUserPermission.Append;
          cdsUserPermission.FieldByName('PERRCO').AsInteger:=RoleId;
          cdsUserPermission.FieldByName('PERCOD').AsInteger:=TRolePermission(lvUsrePermission.Items[i].data).Id;
          cdsUserPermission.FieldByName('PERMNU').AsInteger:=TRolePermission(lvUsrePermission.Items[i].data).MenuId;
        end;
      //cdsWarehousePermission.Append;


      cdsUserPermission.FieldByName('PERENT').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Entry);
      cdsUserPermission.FieldByName('PEREDI').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Edit);
      cdsUserPermission.FieldByName('PERDEL').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Delete);
      cdsUserPermission.FieldByName('PERCAN').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Cancel);
      cdsUserPermission.FieldByName('PERAPP').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Approve);
      cdsUserPermission.FieldByName('PERO01').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option1);
      cdsUserPermission.FieldByName('PERO02').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option2);
      cdsUserPermission.FieldByName('PERO03').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option3);
      cdsUserPermission.FieldByName('PERO04').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option4);
      cdsUserPermission.FieldByName('PERO05').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option5);
      cdsUserPermission.FieldByName('PERO06').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option6);
      cdsUserPermission.FieldByName('PERO07').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option7);
      cdsUserPermission.FieldByName('PERO08').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option8);
      cdsUserPermission.FieldByName('PERO09').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option9);
      cdsUserPermission.FieldByName('PERO10').AsString:=uppercase(TRolePermission(lvUsrePermission.Items[i].data).Option10);
            //:=IfThen(uppercase(TStockWhPermission(lvSubStock.Items[i].data).stock_user_warehouse_permission_access)='Y','Y','N') ;
            //:=IfThen(uppercase(TStockWhPermission(lvSubStock.Items[i].data).stock_user_warehouse_permission_access)='Y','Y','N') ;
      cdsUserPermission.Post;
    end;

    if cdsUserPermission.ChangeCount>0  then
      UpdateDataset(cdsUserPermission,'select * from ICMTTRPM where PERRCO='+inttostr(RoleId));

    ShowMessage('success');
  finally
    cdsTemp.free;
    cdsAllUser.free;
  end;

    // update sub sotck
end;

end.
