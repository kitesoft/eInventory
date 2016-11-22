{ *********************************************************************** }
{                                                                         }
{ The Siam Developer Runtime Library                                      }
{ DevCore Library                                                         }
{                                                                         }
{ Copyright (c) 2014 Siam Developer Co.,Ltd.                              }
{                                                                         }
{ *********************************************************************** }
unit DevCoreLIB;

interface

uses
  SysUtils,
  Forms,
  Dialogs,
  Classes,
  DB,
  DBXpress,
  FMTBcd,
  SqlExpr,
  StdCtrls,
  DBClient,
  Provider,
  Windows,jvUIb,IdIPWatch,MyAccess;

type
  TShowWindowType = (swNone, swModal, swNomal);

  function SAMInitConnection(conn:TSQLConnection):boolean;stdcall;
  function SAMGetDataSet(const SQL: string): Variant;stdcall;
  function SAMUpdateDataset(dataset:Tclientdataset; SQLText: string): Integer;stdcall;
  procedure SAMExecuteSQL(SQL: string);stdcall;

implementation

const
  DevCoreDLL = 'DevCore.dll';

  function SAMInitConnection(conn:TSQLConnection):boolean; external DevCoreDLL name 'SamInitConnection';
  function SAMGetDataSet(const SQL: string): Variant; external DevCoreDLL name 'SamGetDataSet';
  function SAMUpdateDataset(dataset:Tclientdataset; SQLText: string): Integer; external DevCoreDLL name 'SamUpdateDataset';
  procedure SAMExecuteSQL(SQL: string);external DevCoreDLL name 'SamExecuteSQL';

end.
