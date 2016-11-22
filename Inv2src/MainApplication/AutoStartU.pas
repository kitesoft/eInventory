unit AutoStartU;

interface

uses
  ShellApi,Windows,Forms,
  sysutils,
  Inifiles,
  TlHelp32;

const
  execute_startup='upd.exe';
  execute_startup_updf='upd_.exe';
  execute_startup_xmlf='upd_.xml';
  execute_startup_xml='upd.xml';
  _maxVClass=5;


function ckNewVersion:boolean;

function KillTask(ExeFileName: string): Integer;
function processExists(exeFileName: string): Boolean;
procedure updateUpd;


implementation

function HasAttr(const FileName: string; Attr: Word): Boolean;
var
 FileAttr: Integer;
begin
  FileAttr := FileGetAttr(FileName);
  if FileAttr = -1 then FileAttr := 0;
  Result := (FileAttr and Attr) = Attr;
end;

function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer): THandle;
var
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  Result := ShellExecute(Application.MainForm.Handle, nil,
    StrPCopy(zFileName, FileName), StrPCopy(zParams, Params),
    StrPCopy(zDir, DefaultDir), ShowCmd);
end;

procedure CopyFile(const FileName, DestName: TFileName);
var
  CopyBuffer: Pointer; { buffer for copying }
  TimeStamp, BytesCopied: Longint;
  Source, Dest: Integer; { handles }
  Destination: TFileName; { holder for expanded destination name }
  FileS_:real;
const
  ChunkSize: Longint = 4096;//8192; { copy in 8K chunks }
begin
  Destination := ExpandFileName(DestName); { expand the destination path }
  if HasAttr(Destination, faDirectory) then { if destination is a directory... }
    Destination := Destination + '\' + ExtractFileName(FileName); { ...clone file name }
  TimeStamp := FileAge(FileName); { get source's time stamp }
  GetMem(CopyBuffer, ChunkSize); { allocate the buffer }
  try
    Source := FileOpen(FileName, fmShareDenyWrite); { open source file }
//    if Source < 0 then raise EFOpenError.Create(FmtLoadStr(SFOpenError, [FileName]));
    try
      Dest := FileCreate(Destination); { create output file; overwrite existing }
     // if Dest < 0 then raise EFCreateError.Create(FmtLoadStr(SFCreateError, [Destination]));
      try
        repeat
          BytesCopied := FileRead(Source, CopyBuffer^, ChunkSize); { read chunk }
          if BytesCopied > 0 then { if we read anything... }
          begin
            FileWrite(Dest, CopyBuffer^, BytesCopied); { ...write chunk }
            Application.ProcessMessages;
          end
        until BytesCopied < ChunkSize; { until we run out of chunks }
      finally
        FileClose(Dest); { close the destination file }
      end;
    finally
      FileClose(Source); { close the source file }
    end;
  finally
    FreeMem(CopyBuffer, ChunkSize); { free the buffer }
  end;
end;

function processExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;



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


procedure updateUpd;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+execute_startup_updf) then
  begin
    if processExists(execute_startup) then KillTask(execute_startup);
    if FileExists(ExtractFilePath(Application.ExeName)+execute_startup) then
    begin
      DeleteFile(ExtractFilePath(Application.ExeName)+execute_startup);
    end;

    CopyFile(pchar(ExtractFilePath(Application.ExeName)+execute_startup_updf),pchar(ExtractFilePath(Application.ExeName)+execute_startup));
    DeleteFile(ExtractFilePath(Application.ExeName)+execute_startup_updf);
  end;

  if FileExists(ExtractFilePath(Application.ExeName)+execute_startup_xmlf) then
  begin
    if FileExists(ExtractFilePath(Application.ExeName)+execute_startup_xmlf) then DeleteFile(ExtractFilePath(Application.ExeName)+execute_startup_xml);
    CopyFile(pchar(ExtractFilePath(Application.ExeName)+execute_startup_xmlf),pchar(ExtractFilePath(Application.ExeName)+execute_startup_xml));
    DeleteFile(ExtractFilePath(Application.ExeName)+execute_startup_xmlf);
  end;

end;


function ckNewVersion:boolean;
var
    isNewVersion,IsApplicationTerminate,IsLoadSourceFile,isFinish:boolean;
    downloadFileIndex:integer;
    iniF:TIniFile;

    _Version1,_Version2:string;
    _V1,_V2:array[1..5] of Integer;

    i,k:integer;
    ss:string;
begin

   // assing new version
   IsLoadSourceFile:=(FileExists(ExtractFilePath(Application.ExeName)+'config.xml'));
   isNewVersion := false;

   // check version
   if not isNewVersion then
   if ((FileExists(ExtractFilePath(Application.ExeName)+'config.xml')) and (FileExists(ExtractFilePath(Application.ExeName)+'server_config.xml'))) then
   begin
     // config  -- version1
     iniF:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.xml');
     _Version1:=inif.ReadString('Application','Version','');
     iniF.Free;
     // config  -- version2
     iniF:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'server_config.xml');
     _Version2:=inif.ReadString('Application','Version','');
     iniF.Free;

     // version 2 server
     _Version2:=trim(_Version2);
     k:=1;
     ss:='';
     for i:=1 to length(_Version2) do begin
        if (_Version2[i]<>'.') then begin
            ss:=ss+_Version2[i];
        end else begin
            _V2[k]:=StrToInt(ss);
            ss:='';
            inc(k);
        end;

        if i=length(_Version2) then
          _V2[5]:=StrToInt(ss);

     end;

    // version 1 self
     _Version1:=trim(_Version1);
     k:=1;
     ss:='';
     for i:=1 to length(_Version1) do begin
        if (_Version1[i]<>'.') then begin
            ss:=ss+_Version1[i];
        end else begin
            _V1[k]:=StrToInt(ss);
            ss:='';
            inc(k);
        end;

        if i=length(_Version1) then
          _V1[5]:=StrToInt(ss);

     end;

     for k:=1 to _maxVClass do begin
        if _V2[k]>_V1[k] then
            isNewVersion:=true;
     end;

     if isNewVersion=false then IsApplicationTerminate:=true;

   end;

   if not (FileExists(ExtractFilePath(Application.ExeName)+'config.xml')) then
    isNewVersion:=true;

   if not (FileExists(ExtractFilePath(Application.ExeName)+'startup.xml')) then
    isNewVersion:=false;





  Result := isNewVersion;

end;


end.
