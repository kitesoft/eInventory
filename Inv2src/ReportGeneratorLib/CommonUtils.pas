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


  function ShowReportGenerator(
    _MainApp: TApplication; _DBConn: TMyConnection;
    _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList;AutoReport:boolean): TForm; stdcall;

//  function ShowReportX(
//    _MainApp: TApplication; _DBConn: TMyConnection;
//    _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList): TForm; stdcall;

  function DecryptEx(const S: String; const Level: Byte = 2): String;
  function EncryptEx(const S: String; const Level: Byte = 2): String;


implementation


const
  RGLib = 'RGLib.dll';
 // RGLibX = 'RGLibX.dll';



  function ShowReportGenerator(
    _MainApp: TApplication; _DBConn: TMyConnection;
    _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList;AutoReport:boolean):TForm; external RGLib name 'Execute';

  //function ShowReportX(
  //  _MainApp: TApplication; _DBConn: TMyConnection;
  //  _Type: TShowWindowType; _Parameter: TDLLParameter;DefaultValue:TList):TForm; external RGLibX name 'Execute';



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
