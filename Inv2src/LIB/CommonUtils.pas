{ *********************************************************************** }
{                                                                         }
{ The Bantung Software  Runtime Library                                   }
{ Bantung - Common Utility Library                                 }
{                                                                         }
{ Copyright (c) 2012 Bantung Software Co., Ltd.                           }
{                                                                         }
{ *********************************************************************** }
unit CommonUtils;


interface
uses
  Windows, Messages,Classes, Forms,jvUIb,CommonLIB,SysUtils,IdIPWatch,MyAccess;

type
  TShowWindowType = (swNone, swModal, swNomal);

  TFuncShowReportGenerator =   function (
    _MainApp: TApplication; _DBConn: TMyConnection;
    _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList;AutoReport:boolean): TForm; stdcall;  

  function ShowInsigniaRegister(
    _MainApp: TApplication; _DBConn: TJvUIBDataBase;
    _Type: TShowWindowType; _Parameter: string): TForm; stdcall;


  function ShowFavorRegister(
    _MainApp: TApplication; _DBConn: TJvUIBDataBase;
    _Type: TShowWindowType; _Parameter: string): TForm; stdcall;

  function SelectFund(_MainApp: TApplication; _DBConn: TJvUIBDataBase;
  _Type: TShowWindowType; _Parameter: TDLLParameter; out _Output : TDLLParameter): TForm;stdcall;

  function ShowReportGenerator(
    _MainApp: TApplication; _DBConn: TMyConnection;
    _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList;AutoReport:boolean;RptGroup:string): TForm; stdcall;

  
  function SelSearch(_MainApp: TApplication;
  _Type: TShowWindowType; _Parameter: TDLLParameter; out _Output : TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;_SelectField,_SQL:string): TForm; stdcall;

  function DecryptEx(const S: String; const Level: Byte = 2): String;
  function EncryptEx(const S: String; const Level: Byte = 2): String;

  procedure executilsdxInitialize;stdcall;


implementation


const
  InsignigReg = 'InsigniaReg.dll';
  FavorReg = 'FavorReg.dll';
  FndUtils = 'FndUtils.dll';
  RGLib = 'RGLib.dll';
  ExecUtilsLib ='seachutils.dll';

var
  RGLib_DLLHandle : THandle;
  _FuncShowReportGenerator : TFuncShowReportGenerator;


  function ShowInsigniaRegister(
    _MainApp: TApplication; _DBConn: TJvUIBDataBase;
    _Type: TShowWindowType; _Parameter: string):TForm; external InsignigReg name 'Execute';



  function ShowFavorRegister(
    _MainApp: TApplication; _DBConn: TJvUIBDataBase;
    _Type: TShowWindowType; _Parameter: string):TForm; external FavorReg name 'Execute';

  function SelectFund(_MainApp: TApplication; _DBConn: TJvUIBDataBase;
  _Type: TShowWindowType; _Parameter: TDLLParameter; out _Output : TDLLParameter): TForm;  external FndUtils name 'SelectFund';






  function SelSearch(_MainApp: TApplication; _Type: TShowWindowType; _Parameter: TDLLParameter; out _Output : TDLLParameter;
    _SearchType,_Cols,_ColsWidth:TList;_SelectField,_SQL:string): TForm; external ExecUtilsLib name 'SelSearch';

function ShowReportGenerator(_MainApp: TApplication; _DBConn: TMyConnection;
  _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList;AutoReport:boolean;RptGroup:string): TForm; external RGLib name 'Execute';

  procedure executilsdxInitialize; external ExecUtilsLib name 'dxInitialize';

{
function ShowReportGenerator(
    _MainApp: TApplication; _DBConn: TMyConnection;
    _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList;AutoReport:boolean):TForm;stdcall;
begin
  try
    RGLib_DLLHandle := LoadLibrary(RGLib);
    if RGLib_DLLHandle<>0 then
    begin
       _FuncShowReportGenerator := GetProcAddress(RGLib_DLLHandle,'Execute');
      if Assigned(_FuncShowReportGenerator) then
      begin
           Result := _FuncShowReportGenerator(_MainApp,_DBConn,_Type,_Parameter,DefaultValue,AutoReport);
      end;
    end;
  finally
    FreeLibrary(RGLib_DLLHandle);
  end;
end;
}





//=========
function DecryptStr(const S: String; const Key: Byte = 11;
  const Level: Byte = 1): String;
var
  i, l: Integer;
  _S1, _S2: String;
begin
  Result := '';
  _S1 := S;
  while (_S1 <> '') do
  begin
    _S2 := Copy(_S1, 1, 2);
    Delete(_S1, 1, 2);
    Result :=  Result + Chr(StrToInt('$' + _S2));
  end;

  for l := Level downto 1 do
    for i := 1 to Length(Result) do
      Result[i] := Chr(Ord(Result[i]) xor (not Key xor l));

  for i := 1 to Length(Result) do
    Result[i] := Chr(Ord(Result[i]) xor Key);
end;

function EncryptStr(const S: String; const Key: Byte = 11;
  const Level: Byte = 1): String;
var
  i, l: Integer;
  _St: String;
begin
  _St := '';
  for i := 1 to Length(S) do
    _St := _St + Chr(Ord(S[i]) xor Key);

  for l := 1 to Level do
    for i := 1 to Length(_St) do
      _St[i] := Chr(Ord(_St[i]) xor (not Key xor l));

  Result := '';
  for i := 1 to Length(_St) do
    Result :=  Result + IntToHex(Ord(_St[i]), 2);
end;

function DecryptEx(const S: String; const Level: Byte = 2): String;
var
  i: Integer;
begin
  Result := S;
  for i := 1 to Level do
    Result := DecryptStr(Result);
end;

function EncryptEx(const S: String; const Level: Byte = 2): String;
var
  i: Integer;
begin
  Result := S;
  for i := 1 to Level do
    Result := EncryptStr(Result);
end;



end.
