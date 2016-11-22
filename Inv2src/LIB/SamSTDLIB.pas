unit SamSTDLIB;

interface

uses
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  DB,
  DBXpress,
  FMTBcd,
  SqlExpr,
  StdCtrls,
  DBClient,
  Provider;



const
  _visibleColor = $00E8E8E8;
  _config_file ='config.xml';
  _sample_db ='dba10';

type
  TGetDataSet = function(const SQL: string): Variant;stdcall;
  TUpdateDataSet = function (dataset:TClientDataSet; SQLText: string): Integer;stdcall;
  TVersionInfo = function ():integer;
  TGetSerialNumber = function (sn: string): Integer; stdcall;




function UpdateDataSet(dataset:TClientDataSet; SQLText: string): Integer; stdcall;
function GetDataSet(const SQL: string): Variant;stdcall;
function VersionInfo():integer;
function GetSerialNumber(sn: string): Integer; stdcall;



implementation

const
  SAMSTDFUNC_DLL = 'stdfunc.dll';

var

  SAMSTDFUNC_DLLHandle : THandle;

  _GetDataSet : TGetDataSet;
  _UpdateDataset : TUpdateDataSet;
  _VersionInfo : TVersionInfo;
  _GetSerialNumber : TGetSerialNumber;


function VersionInfo():integer;
begin
  try
    SAMSTDFUNC_DLLHandle := LoadLibrary(SAMSTDFUNC_DLL);
    if SAMSTDFUNC_DLLHandle<>0 then
    begin
       _VersionInfo := GetProcAddress(SAMSTDFUNC_DLLHandle,'VersionInfo');
      if Assigned(_VersionInfo) then
      begin
           Result := _VersionInfo;
      end;
    end;
  finally
    FreeLibrary(SAMSTDFUNC_DLLHandle);
  end;
end;

function GetSerialNumber(sn: string): Integer; stdcall;
begin
  try
    SAMSTDFUNC_DLLHandle := LoadLibrary(SAMSTDFUNC_DLL);
    if SAMSTDFUNC_DLLHandle<>0 then
    begin
       _GetSerialNumber := GetProcAddress(SAMSTDFUNC_DLLHandle,'GetSerialNumber');
      if Assigned(_GetSerialNumber) then
      begin
           Result := _GetSerialNumber(sn);
      end;
    end;
  finally
    FreeLibrary(SAMSTDFUNC_DLLHandle);
  end;
end;


function UpdateDataSet(dataset:TClientDataSet; SQLText: string): Integer;
begin
  try
    SAMSTDFUNC_DLLHandle := LoadLibrary(SAMSTDFUNC_DLL);
    if SAMSTDFUNC_DLLHandle<>0 then
    begin
       _UpdateDataset := GetProcAddress(SAMSTDFUNC_DLLHandle,'UpdateDataset');
      if Assigned(_UpdateDataset) then
      begin
           Result := _UpdateDataset(dataset,SQLText);
      end;
    end;
  finally
    FreeLibrary(SAMSTDFUNC_DLLHandle);
  end;
end;

function GetDataSet(const SQL: string): Variant;
begin
  try
    SAMSTDFUNC_DLLHandle := LoadLibrary(SAMSTDFUNC_DLL);
    if SAMSTDFUNC_DLLHandle<>0 then
    begin
       _GetDataSet := GetProcAddress(SAMSTDFUNC_DLLHandle,'GetDataSet');
      if Assigned(_GetDataSet) then
      begin
           Result := _GetDataSet(SQL);
      end;
    end;
  finally
   FreeLibrary(SAMSTDFUNC_DLLHandle);
  end;
end;






initialization
//initProc;



end.

