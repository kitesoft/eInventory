{ *********************************************************************** }
{                                                                         }
{ The Bantung Software  Runtime Library                                   }
{ Bantung - Security Manager DLL Interface Unit                           }
{                                                                         }
{ Copyright (c) 2012 Bantung Software Co., Ltd.                           }
{                                                                         }
{ *********************************************************************** }

unit nSec;

interface

const
  {$IFDEF MSWINDOWS}
  _CRG_CONFIG = '\crgcfg.conf';
  {$ENDIF}
  {$IFDEF LINUX}
  _CRG_CONFIG = '/crgcfg.conf';
  {$ENDIF}

procedure LoadLibraries();
procedure UnloadLibararies();

var
  LocalIP: function(): String; stdcall;

  DecryptStr: function(const S: String; const Key: Byte = 11;
    const Level: Byte = 1): String; stdcall;
  EncryptStr: function(const S: String; const Key: Byte = 11;
    const Level: Byte = 1): String; stdcall;

  DecryptEx: function(const S: String; const Level: Byte = 2): String; stdcall;
  EncryptEx: function(const S: String; const Level: Byte = 2): String; stdcall;

  ExecuteByName: function(_Handle: THandle; const _AppName: String): Boolean; stdcall;

  GetSystemDir: function(): String; stdcall;

  SystemDir: String;
implementation

uses {$IFDEF MSWINDOWS}Windows;{$ENDIF}{$IFDEF LINUX}libc;{$ENDIF}

const
  {$IFDEF MSWINDOWS}
  Security = 'nsec.dll';
  {$ENDIF}
  {$IFDEF LINUX}
  Security = 'nsec.so';
  {$ENDIF}

var
  {$IFDEF MSWINDOWS}
  _Handle: THandle;
  {$ENDIF}
  {$IFDEF LINUX}
  _Handle: Pointer;
  {$ENDIF}

procedure LoadLibraries();
begin
  {$IFDEF MSWINDOWS}
  _Handle := LoadLibrary(Security);
  if (_Handle <> 0) then
  {$ENDIF}
  {$IFDEF LINUX}
  _Handle := dlopen(Security, RTD_LAZY);
  if (_Handle <> nil) then
  {$ENDIF}
  begin
    LocalIP := GetProcAddress(_Handle, 'LocalIP');
    DecryptStr := GetProcAddress(_Handle, 'DecryptStr');
    EncryptStr := GetProcAddress(_Handle, 'EncryptStr');
    DecryptEx := GetProcAddress(_Handle, 'DecryptEx');
    EncryptEx := GetProcAddress(_Handle, 'EncryptEx');
    ExecuteByName := GetProcAddress(_Handle, 'ExecuteByName');
    GetSystemDir := GetProcAddress(_Handle, 'GetSystemDir');
  end;
end;

procedure UnloadLibararies();
begin
  FreeLibrary(_Handle);
end;

initialization
  LoadLibraries();
  SystemDir := GetSystemDir();

finalization
  UnloadLibararies();

end.

