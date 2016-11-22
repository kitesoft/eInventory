unit STK_LIB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Provider, DBClient,SqlExpr,
  Dialogs, cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit,Math,
  cxMaskEdit, cxDropDownEdit, StdCtrls, ExtCtrls, cxLookAndFeelPainters,
  cxButtons, RzPanel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, RzButton, Mask, RzEdit,RzDBEdit,RzCmboBx,uCiaXml,RzDBCmbo,DBCtrls
  ,ImgList,Buttons,CommonLIB;


function getWareHouseName(whcode:integer):string;overload;
function getWareHouseName(whcode:string):string;overload;
function getExistWareHouse(whcode:integer):boolean;overload;
function getExistWareHouse(whcode:string):boolean;overload;

function getExistDepartment(depcode:string):boolean;
function getDepartmentName(depcode:string):string;

//function getExistPOType(depcode:string):boolean;
//function getPOTypeName(depcode:string):string;

function getExistPOType(depcode:string):boolean;
function getPOTypeName(depcode:string):string;

function getExistPOKind(depcode:string):boolean;
function getPOKindName(depcode:string):string;

function getExistMTTCode(mttname,code:string):boolean;
function getMTTName(mttname,code:string):string;
function getMTTCDE(mttname,code:string):string;
function getMTTCOD(mttname,code:string):integer;
function getValueCurrency(tableName,returnfieldName,mttname,code:string):currency;
function getValueString(tableName,returnfieldName,mttname,code:string):string;

function getMTTFValue(mttname,fname,code:string):string;




implementation

uses CdeLIB, STDLIB, CommonUtils;



//-----------  MTT       --------------------------------
function getExistMTTCode(mttname,code:string):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := false;
  try
    cds := TClientDataSet.Create(nil);

    if IsInteger(code) then
    begin

      cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'COD='+code) ;

      if cds.Active then
        if cds.RecordCount>0 then
              rep := not (cds.FieldByName(''+mttname+'CDE').IsNull);
    end else
    begin

        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
          if cds.RecordCount>0 then
                rep := not (cds.FieldByName(''+mttname+'CDE').IsNull);
    end;
      Result:=rep;
  finally
      cds.free;
  end;


end;


function getMTTName(mttname,code:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(code) then
      begin

        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'COD='+code) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName(''+mttname+'CDE').IsNull) then
                rep := UpperCase(Trim(cds.FieldByName(''+mttname+'CDE').AsString))+'-'+Trim(cds.FieldByName(''+mttname+'NAM').AsString)
            else  rep := Trim(cds.FieldByName(''+mttname+'NAM').AsString);

      end else
      begin
        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName(''+mttname+'CDE').IsNull) then
              rep := UpperCase(Trim(cds.FieldByName(''+mttname+'CDE').AsString))+'-'+Trim(cds.FieldByName(''+mttname+'NAM').AsString);

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;

function getMTTCDE(mttname,code:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(code) then
      begin

        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'COD='+code) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName(''+mttname+'COD').IsNull) then
                rep := UpperCase(Trim(cds.FieldByName(''+mttname+'COD').AsString));

      end else
      begin
        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName(''+mttname+'CDE').IsNull) then
              rep := UpperCase(Trim(cds.FieldByName(''+mttname+'CDE').AsString));

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;

function getValueCurrency(tableName,returnfieldName,mttname,code:string):currency;
var cds:TClientDataSet;
    rep : currency;
begin
  rep := 0;

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(code) then
      begin

        cds.data := GetDataSet('select * from '+tableName+' where '+mttname+'COD='+code) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName(returnfieldName).IsNull) then
                rep := cds.FieldByName(returnfieldName).AsCurrency;

      end else
      begin
        cds.data := GetDataSet('select * from '+tableName+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName(returnfieldName).IsNull) then
              rep := cds.FieldByName(returnfieldName).AsCurrency;

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;

function getValueString(tableName,returnfieldName,mttname,code:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(code) then
      begin

        cds.data := GetDataSet('select * from '+tableName+' where '+mttname+'COD='+code) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName(returnfieldName).IsNull) then
                rep := cds.FieldByName(returnfieldName).AsString;

      end else
      begin
        cds.data := GetDataSet('select * from '+tableName+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName(returnfieldName).IsNull) then
              rep := cds.FieldByName(returnfieldName).AsString;

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;



function getMTTCOD(mttname,code:string):integer;
var cds:TClientDataSet;
    rep : integer;
begin
  rep := 0;

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(code) then
      begin

        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'COD='+code) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName(''+mttname+'CDE').IsNull) then
                rep := cds.FieldByName(''+mttname+'COD').AsInteger;

      end else
      begin
        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName(''+mttname+'CDE').IsNull) then
              rep := cds.FieldByName(''+mttname+'COD').AsInteger;

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;




function getMTTFValue(mttname,fname,code:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(code) then
      begin

        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'COD='+code) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName(fname).IsNull) then
                rep := cds.FieldByName(fname).AsString;

      end else
      begin
        cds.data := GetDataSet('select * from ICMTT'+mttname+' where '+mttname+'CDE='''+code+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName(fname).IsNull) then
              rep := cds.FieldByName(fname).AsString;

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;




//-----------  POKind    --------------------------------
function getExistPOKind(depcode:string):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := false;
  try
    cds := TClientDataSet.Create(nil);

    if IsInteger(depcode) then
    begin

      cds.data := GetDataSet('select * from ICMTTPOK where POKCOD='+depcode) ;

      if cds.Active then
        if cds.RecordCount>0 then
              rep := not (cds.FieldByName('POKCDE').IsNull);
    end else
    begin

        cds.data := GetDataSet('select * from ICMTTPOK where POKCDE='''+depcode+'''') ;

        if cds.Active then
          if cds.RecordCount>0 then
                rep := not (cds.FieldByName('POKCDE').IsNull);
    end;
      Result:=rep;
  finally
      cds.free;
  end;


end;


function getPOKindName(depcode:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(depcode) then
      begin

        cds.data := GetDataSet('select * from ICMTTPOK where POKCOD='+depcode) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName('POKCDE').IsNull) then
                rep := UpperCase(Trim(cds.FieldByName('POKCDE').AsString))+'-'+Trim(cds.FieldByName('POKNAM').AsString);

      end else
      begin
        cds.data := GetDataSet('select * from ICMTTPOK where POKCDE='''+depcode+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName('POKCDE').IsNull) then
              rep := UpperCase(Trim(cds.FieldByName('POKCDE').AsString))+'-'+Trim(cds.FieldByName('POKNAM').AsString);

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;
//-----------  POType    --------------------------------
function getExistPOType(depcode:string):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := false;
  try
    cds := TClientDataSet.Create(nil);

    if IsInteger(depcode) then
    begin

      cds.data := GetDataSet('select * from ICMTTPOT where POTCOD='+depcode) ;

      if cds.Active then
        if cds.RecordCount>0 then
              rep := not (cds.FieldByName('POTCDE').IsNull);
    end else
    begin

        cds.data := GetDataSet('select * from ICMTTPOT where POTCDE='''+depcode+'''') ;

        if cds.Active then
          if cds.RecordCount>0 then
                rep := not (cds.FieldByName('POTCDE').IsNull);
    end;
      Result:=rep;
  finally
      cds.free;
  end;


end;


function getPOTypeName(depcode:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(depcode) then
      begin

        cds.data := GetDataSet('select * from ICMTTPOT where POTCOD='+depcode) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName('POTCDE').IsNull) then
                rep := UpperCase(Trim(cds.FieldByName('POTCDE').AsString))+'-'+Trim(cds.FieldByName('POTNAM').AsString);

      end else
      begin
        cds.data := GetDataSet('select * from ICMTTPOT where POTCDE='''+depcode+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName('POTCDE').IsNull) then
              rep := UpperCase(Trim(cds.FieldByName('POTCDE').AsString))+'-'+Trim(cds.FieldByName('POTNAM').AsString);

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;

//-----------  Department--------------------------------

function getExistDepartment(depcode:string):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := false;
  try
    cds := TClientDataSet.Create(nil);

    if IsInteger(depcode) then
    begin

      cds.data := GetDataSet('select * from ICMTTWH1 where WH1COD='+depcode) ;

      if cds.Active then
        if cds.RecordCount>0 then
              rep := not (cds.FieldByName('WH1CDE').IsNull);
    end else
    begin

        cds.data := GetDataSet('select * from ICMTTWH1 where WH1CDE='''+depcode+'''') ;

        if cds.Active then
          if cds.RecordCount>0 then
                rep := not (cds.FieldByName('WH1CDE').IsNull);
    end;
      Result:=rep;
  finally
      cds.free;
  end;


end;


function getDepartmentName(depcode:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);

    try

      if IsInteger(depcode) then
      begin

        cds.data := GetDataSet('select * from ICMTTWH1 where WH1COD='+depcode) ;

        if cds.Active then
          if cds.RecordCount>0 then
            if not (cds.FieldByName('WH1CDE').IsNull) then
                rep := UpperCase(Trim(cds.FieldByName('WH1CDE').AsString))+'-'+Trim(cds.FieldByName('WH1NAM').AsString);

      end else
      begin
        cds.data := GetDataSet('select * from ICMTTWH1 where WH1CDE='''+depcode+'''') ;

        if cds.Active then
        if cds.RecordCount>0 then
          if not (cds.FieldByName('WH1CDE').IsNull) then
              rep := UpperCase(Trim(cds.FieldByName('WH1CDE').AsString))+'-'+Trim(cds.FieldByName('WH1NAM').AsString);

      end;

      Result:=rep;

    finally
      cds.free;
    end;
end;

//-----------  Warehouse --------------------------------
function getExistWareHouse(whcode:integer):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := false;

    cds := TClientDataSet.Create(nil);
    cds.data := GetDataSet('select * from ICMTTWH0 where WH0COD='+IntToStr(whcode)) ;

    if cds.Active then
      if cds.RecordCount>0 then
            rep := not (cds.FieldByName('WH0CDE').IsNull);


  Result:=rep;
end;


function getExistWareHouse(whcode:string):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := false;

    cds := TClientDataSet.Create(nil);
    cds.data := GetDataSet('select * from ICMTTWH0 where WH0CDE='''+whcode+'''') ;

    if cds.Active then
      if cds.RecordCount>0 then
            rep := not (cds.FieldByName('WH0CDE').IsNull);

  Result:=rep;
end;

function getWareHouseName(whcode:integer):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);
    cds.data := GetDataSet('select * from ICMTTWH0 where WH0COD='+IntToStr(whcode)) ;

    if cds.Active then
      if cds.RecordCount>0 then
        if not (cds.FieldByName('WH0CDE').IsNull) then
            rep := UpperCase(Trim(cds.FieldByName('WH0CDE').AsString))+'-'+Trim(cds.FieldByName('WH0NAM').AsString);


  Result:=rep;
end;

function getWareHouseName(whcode:string):string;
var cds:TClientDataSet;
    rep : string;
begin
  rep := '';

    cds := TClientDataSet.Create(nil);
    cds.data := GetDataSet('select * from ICMTTWH0 where WH0CDE='''+whcode+'''') ;

    if cds.Active then
      if cds.RecordCount>0 then
        if not (cds.FieldByName('WH0CDE').IsNull) then
            rep := UpperCase(Trim(cds.FieldByName('WH0CDE').AsString))+'-'+Trim(cds.FieldByName('WH0NAM').AsString);


  Result:=rep;
end;



end.
