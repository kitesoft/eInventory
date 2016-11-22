{ *********************************************************************** }
{                                                                         }
{ The Bantung Software  Runtime Library                                   }
{ Bantung - Standard System Code Library                                 }
{                                                                         }
{ Copyright (c) 2012 Bantung Software Co., Ltd.                           }
{                                                                         }
{ *********************************************************************** }

unit CdeLIB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Provider, DBClient,SqlExpr,
  Dialogs, cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit,Math,
  cxMaskEdit, cxDropDownEdit, StdCtrls, ExtCtrls, cxLookAndFeelPainters,
  cxButtons, RzPanel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, RzButton, Mask, RzEdit,RzDBEdit,RzCmboBx,uCiaXml,RzDBCmbo,DBCtrls
  ,ImgList,buttons;


function getCdeAdjOption(abr,grp,cde:string):boolean;
procedure setCdeRun(abr,grp,cde,value_fieldname:string);

function getCdeRunWithLen(_base:integer;abr,grp,cde,value_fieldname:string):integer;
function getCde(abr,grp,cde,value_fieldname:string):integer;
function getCdeStr(abr,grp,cde,value_fieldname:string):string;
function getCdeRun(abr,grp,cde,value_fieldname:string):integer;
function getCdeFormat(runno:integer):string;
function getCifFormat(runno:integer):string;
function getStrFormat(n:integer):string;

// packing
function getPackingRun(code:integer):integer;
function setPackingRun(code:integer):integer;
function getPackingRunWithLen(_base:integer;abr,grp,cde,value_fieldname:string;unitcode:integer):integer;
function getPackingRunWithLenFormat(_base:integer;abr,grp,cde,value_fieldname:string;unitcode:integer):string;

// po runno
function getPrefixRunning(cmpCode,strPrefix:string;running,cdelen:integer):string;

// lot no
function getLotNoRunning(abbr,strPrefix:string;running,cdelen:integer):string;



implementation

uses STDLIB, CommonLIB;




function getCdeAdjOption(abr,grp,cde:string):boolean;
var cds:TClientDataSet;
    rep : boolean;
begin
  rep := true;

    cds := TClientDataSet.Create(nil);
    cds.data := GetDataSet('select * from ICSTTCDE where cdeabr='''+abr+''' and cdegrp='''+grp+''' and cdeCOD='''+cde+''' ') ;
    if cds.Active then
      if cds.RecordCount>0 then
        if not (cds.FieldByName('CDEADJ').IsNull) then
            rep := UpperCase(Trim(cds.FieldByName('CDEADJ').AsString))='Y';


  Result:=rep;
end;

function getCdeFormat(runno:integer):string;
var rep:string;
begin
  rep := '';
  rep := FormatDateTime('YY',Now)+FormatDateTime('MM',Now)+FormatCurr('000',runno);
  result:=rep;
end;

function getCifFormat(runno:integer):string;
var rep:string;
begin
  rep := '';
  rep := 'CU'+FormatDateTime('YY',Now)+FormatCurr('00000',runno);
  result:=rep;
end;




function getCde(abr,grp,cde,value_fieldname:string):integer;
var cds:TClientDataSet;
  rep:integer;
  begin
    rep:=0;
    cds := TClientDataSet.Create(nil);
    with cds do
    begin
        cds.data := GetDataSet('select * from ICSTTCDE where  cdeabr='''+abr+''' and CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');
        if recordcount>0 then
        begin

          if FieldByName(value_fieldname).IsNull then rep:=1
          else
          rep:=FieldByName(value_fieldname).AsInteger;

        end
         else
        begin
          rep :=5;
          cds.append;
          cds.fieldbyname('CDEABR').AsString:=abr;
          cds.fieldbyname('CDEGRP').AsString:=grp;
          cds.fieldbyname('CDECOD').AsString:=cde;
          cds.fieldbyname(value_fieldname).AsInteger:=rep;
          cds.Post;

        end;

   if cds.ChangeCount>0 then
      UpdateDataset(cds,'select * from ICSTTCDE where CDEABR='''+abr+''' CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');

    end;

    result:=rep;

 end;

function getCdeStr(abr,grp,cde,value_fieldname:string):string;
var cds:TClientDataSet;
  rep:string;
  begin
    rep:='';
    cds := TClientDataSet.Create(nil);
    with cds do
    begin
        cds.data := GetDataSet('select * from ICSTTCDE where  cdeabr='''+abr+''' and CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');
        if recordcount>0 then
        begin

          if FieldByName(value_fieldname).IsNull then rep:='AB'
          else
          rep:=FieldByName(value_fieldname).AsString;

        end
         else
        begin
          rep :='AB';
          cds.append;
          cds.fieldbyname('CDEABR').AsString:=abr;
          cds.fieldbyname('CDEGRP').AsString:=grp;
          cds.fieldbyname('CDECOD').AsString:=cde;
          cds.Post;

        end;

   if cds.ChangeCount>0 then
      UpdateDataset(cds,'select * from ICSTTCDE where CDEABR='''+abr+''' CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');

    end;

    result:=rep;

 end;


function setPackingRun(code:integer):integer;
var rep:integer;
    cds:TClientDataSet;

  begin
    rep:=0;
    cds :=TClientDataSet.create(nil);
    with cds do
    begin
        cds.Data := GetDataSet('select * from ICMTTUNI where  UNICOD='+IntToStr(code));
        if recordcount>0 then
        begin
          if FieldByName('UNIRUN').IsNull then rep := 0 else
          rep:=FieldByName('UNIRUN').AsInteger;
        end;


      if rep>0 then
      begin
        edit;
        FieldByName('UNIRUN').AsInteger:= rep+1;
        post;
      end else
      begin
        edit;
        FieldByName('UNIRUN').AsInteger:= 1;
        post;
      end;


    end;

    if cds.ChangeCount>0 then
      UpdateDataset(cds,'select * from ICMTTUNI where  UNICOD='+IntToStr(code));

  end;



function getPackingRun(code:integer):integer;
var cds:TClientDataSet;
  rep:integer;
  begin
    rep:=0;
    cds := TClientDataSet.Create(nil);
    with cds do
    begin
        cds.data := GetDataSet('select * from ICMTTUNI where  UNICOD='+IntToStr(code));
        if recordcount>0 then
        begin
          if FieldByName('UNIRUN').IsNull then rep:=1
          else
          rep:=FieldByName('UNIRUN').AsInteger+1;
        end;

    end;

    result:=rep;

 end;


function getCdeRun(abr,grp,cde,value_fieldname:string):integer;
var cds:TClientDataSet;
  rep:integer;
  begin
    rep:=0;
    cds := TClientDataSet.Create(nil);
    with cds do
    begin
        cds.data := GetDataSet('select * from ICSTTCDE where  cdeabr='''+abr+''' and CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');
        if recordcount>0 then
        begin

          if FieldByName(value_fieldname).IsNull then rep:=1
          else
          rep:=FieldByName(value_fieldname).AsInteger+1;

        end
         else
        begin
          rep :=1;
          cds.append;
          cds.fieldbyname('CDEABR').AsString:=abr;
          cds.fieldbyname('CDEGRP').AsString:=grp;
          cds.fieldbyname('CDECOD').AsString:=cde;
          cds.Post;

        end;

   if cds.ChangeCount>0 then
      UpdateDataset(cds,'select * from ICSTTCDE where CDEABR='''+abr+''' CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');

    end;

    result:=rep;

  end;

function getStrFormat(n:integer):string;
var rep,strFormat:string;
    i:integer;
begin
  strFormat := '';

  for i:=1 to n do
      strFormat := strFormat+'0';
  result := strFormat;


end;

function getPrefixRunning(cmpCode,strPrefix:string;running,cdelen:integer):string;
var rep,strFormat:string;
    i: integer;
begin
  strFormat := '';

  for i:=1 to cdelen do
      strFormat := strFormat+'0';

  rep := '';
  //rep := strPrefix+cmpCode+'-'+FormatDateTime('YY',getServerDate)+FormatDateTime('MM',getServerDate)+'-'+FormatCurr(strFormat,running);
  rep := strPrefix+cmpCode+FormatDateTime('MM',getServerDate)+'-'+FormatCurr(strFormat,running);
  result:=rep;
end;

function getLotNoRunning(abbr,strPrefix:string;running,cdelen:integer):string;
var rep,strFormat:string;
    i: integer;
begin
  strFormat := '';

  for i:=1 to cdelen do
      strFormat := strFormat+'0';

  rep := '';
  //rep := strPrefix+cmpCode+'-'+FormatDateTime('YY',getServerDate)+FormatDateTime('MM',getServerDate)+'-'+FormatCurr(strFormat,running);
  rep := strPrefix+abbr+FormatDateTime('YY',getServerDate)+FormatDateTime('MM',getServerDate)+'-'+FormatCurr(strFormat,running);
  result:=rep;
end;


{
var
  cdelen,runno,i: integer;
  strFormat , rep : string;
begin
    rep:='';
    cdelen := getCde(abr,grp,cde+'_LEN',value_fieldname);
    strFormat := '';

    for i:=1 to cdelen do
      strFormat := strFormat+'#';


    runno  := getCdeRun(abr,grp,cde,value_fieldname);


    result:=rep;
end;
}



function getCdeRunWithLen(_base:integer;abr,grp,cde,value_fieldname:string):integer;
var i,cdelen,rep,runno : integer;

begin
  cdelen := getCde(abr,grp,cde+'_LEN',value_fieldname);
  runno :=(_base*floor(IntPower(10,cdelen)))+getCde(abr,grp,cde,value_fieldname);

  result:= runno;
end;



function getPackingRunWithLen(_base:integer;abr,grp,cde,value_fieldname:string;unitcode:integer):integer;
var i,cdelen,rep,runno : integer;

begin
  cdelen := getCde(abr,grp,cde+'_LEN',value_fieldname);
  runno :=(_base*floor(IntPower(10,cdelen)))+getPackingRun(unitcode);

  result:= runno;
end;

function getPackingRunWithLenFormat(_base:integer;abr,grp,cde,value_fieldname:string;unitcode:integer):string;
var i,cdelen,rep : integer;
    runno,strf: string;

begin
  strf :='';
  cdelen := getCde(abr,grp,cde+'_LEN',value_fieldname); //3
    for i:= 1 to cdelen do
      strf := strf+'0';

  runno :=inttostr(_base)+'-'+FormatCurr(strf,(getPackingRun(unitcode)));

  result:= runno;
end;


procedure setCdeRun(abr,grp,cde,value_fieldname:string);
var rep:integer;
    cds:TClientDataSet;

  begin
    rep:=0;
    cds :=TClientDataSet.create(nil);
    with cds do
    begin
        cds.Data := GetDataSet('select * from ICSTTCDE where  CDEABR='''+abr+''' and CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');
        if recordcount>0 then
        begin
          rep:=FieldByName(value_fieldname).AsInteger;
        end;

      if rep>0 then
      begin
        edit;
        FieldByName(value_fieldname).AsInteger:= rep+1;
        FieldByName('CDEDT1').AsDateTime := getServerDate;
        post;
      end else
      begin
        edit;
        FieldByName(value_fieldname).AsInteger:= 1;
        FieldByName('CDEDT1').AsDateTime := getServerDate;        
        post;
      end;


    end;

    if cds.ChangeCount>0 then
      UpdateDataset(cds,'select * from ICSTTCDE where CDEABR='''+abr+''' CDEGRP='''+grp+''' and CDECOD='''+cde+''' ');

  end;



end.
