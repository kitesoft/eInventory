unit STDLIB;

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
  uCiaXml;
  //,SiAuto,SmartInspect;



const
_config_file ='appconfig.xml';
_sample_db='dba10';

function initConnection(conn:TSQLConnection):boolean;
function GetDatabaseName:string;

function UpdateDataset(dataset:Tclientdataset; SQLText: string): Integer;
function GetDataSet(const SQL: string): Variant;
function GetReportGroup: string;
function GetDataSetUnsafe(const SQL: string): Variant;
procedure ExecuteSQL(SQL: string);

implementation

uses CommonLIB, CommonUtils;


function GetReportGroup: string;
var rep:boolean;
xmlConn : TXMLConfig;
_rptGroup:string;


begin
_rptGroup:='00';

  try
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
    //xmlConn:=TXMLConfig.Create(_config_file);
    if (xmlConn.ReadString('AppConfig','RPTGROUP','')='') then
    begin
        // mssql connection
        xmlConn.WriteString('AppConfig','RPTGROUP','00');
        xmlConn.Save;
    end;

     _rptGroup:= xmlConn.ReadString('AppConfig','RPTGROUP','00');


  except
    on err:Exception do
    begin
      MessageDlg(err.Message,mtError,[mbOK],0);

    end;
  end;

  result:=_rptGroup;

end;



function initConnection(conn:TSQLConnection):boolean;
var rep:boolean;
xmlConn : TXMLConfig;
_app_address,_app_hostname,_app_database,_app_user,_app_password,_app_db_port:string;


begin

  try

    rep:=false;
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
    //xmlConn:=TXMLConfig.Create(_config_file);
    if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
    begin
        // mssql connection
        xmlConn.WriteString('AppConfig','ADDRESS','10.0.2.101');
        xmlConn.WriteString('AppConfig','HOSTNAME','localhost');
        xmlConn.WriteString('AppConfig','USER','joni');
        xmlConn.WriteString('AppConfig','PASSWORD','123456');
        xmlConn.WriteString('AppConfig','DATABASE','inv2_db');
        xmlConn.Save;
    end;

    //xmlConn.Free;
     {
     _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
     _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
     _app_database:=xmlConn.ReadString('AppConfig','DATABASE','');
     _app_user:=xmlConn.ReadString('AppConfig','USER','sa');
     _app_password:=xmlConn.ReadString('AppConfig','PASSWORD','123456');
     }
     _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
     _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
     _app_database:=DecryptEx(xmlConn.ReadString('AppConfig','DATABASE',''));
     _app_user:=DecryptEx(xmlConn.ReadString('AppConfig','USER','sa'));
     _app_password:=DecryptEx(xmlConn.ReadString('AppConfig','PASSWORD','123456'));
     _app_db_port:=xmlConn.ReadString('AppConfig','PORT','3306');



     with conn do
     begin

     { // for firebird with out delphi xe2
      Connected:=false;
      ConnectionName:='IBConnection';
      DriverName:='Interbase';
      GetDriverFunc:='getSQLDriverINTERBASE';
      LibraryName:='dbexpint.dll';
      //VendorLib:='fbembed.dll';
      VendorLib:='fbclient.dll';
      LoginPrompt:=false;

      //Params.Values['Database']:=ExtractFilePath(Application.ExeName)+'DB.FDB';
      Params.Values['Database']:='10.0.2.101:/fbdb/INV2.FDB';
      Params.Values['User_Name']:='sysdba';
      Params.Values['Password']:= 'masterkey';
      Params.Values['SQLDialect']:= '3';

      }

      Connected:=false;
      ConnectionName:='Devart MySQL Direct';
      DriverName:='DevartMySQLDirect';
      GetDriverFunc:='getSQLDriverMySQLDirect';
      LibraryName:='dbexpmda.dll';
      VendorLib:='not used';

      LoginPrompt:=false;
      (*
      //Params.Values['Database']:=ExtractFilePath(Application.ExeName)+'DB.FDB';
      Params.Values['HostName']:='10.0.2.101';// '192.168.2.16';//
      Params.Values['Database']:='inv2_db';
      Params.Values['DriverName']:='DevartMySQLDirect';
      Params.Values['User_Name']:='joni';
      Params.Values['Password']:= '123456';
      Params.Values['ServerCharSet']:= 'tis620';
      //Params.Values['SQLDialect']:= '3';
      *)
      //Params.Values['Database']:=ExtractFilePath(Application.ExeName)+'DB.FDB';
      Params.Values['HostName']:=_app_address;
      Params.Values['Database']:=_app_database;
      Params.Values['DriverName']:='DevartMySQLDirect';
      Params.Values['User_Name']:=_app_user;
      Params.Values['Password']:= _app_password;
      Params.Values['ServerCharSet']:= 'tis620';
      Params.Values['Server Port']:= _app_db_port;

      //Params.Values['SQLDialect']:= '3';






      Connected:=true;
      rep:=true;
     end;
  except
    on err:Exception do
    begin
      rep:=false;
      MessageDlg(err.Message,mtError,[mbOK],0);
     // ShowMessage(_app_address+'-'+_app_database+'-'+_app_user+'-'+_app_password);

    end;
  end;

  result:=rep;

end;


function GetDatabaseName:string;
var rep:string;
xmlConn : TXMLConfig;
_app_address,_app_hostname,_app_database,_app_user,_app_password,_app_db_port:string;


begin

  try

    rep:='';
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
    //xmlConn:=TXMLConfig.Create(_config_file);
    if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
    begin
        // mssql connection
        xmlConn.WriteString('AppConfig','ADDRESS','10.0.2.101');
        xmlConn.WriteString('AppConfig','HOSTNAME','localhost');
        xmlConn.WriteString('AppConfig','USER','joni');
        xmlConn.WriteString('AppConfig','PASSWORD','123456');
        xmlConn.WriteString('AppConfig','DATABASE','inv2_db');
        xmlConn.Save;
    end;

     _app_database:=DecryptEx(xmlConn.ReadString('AppConfig','DATABASE',''));
     rep:=_app_database;

  except
    on err:Exception do
    begin
      rep:='';
      MessageDlg(err.Message,mtError,[mbOK],0);
     // ShowMessage(_app_address+'-'+_app_database+'-'+_app_user+'-'+_app_password);

    end;
  end;

  result:=rep;

end;

function UpdateDataset(dataset:Tclientdataset; SQLText: string): Integer;
var
  conn : TSQLConnection;
  lQuery: TSQLDataSet;

  lDSP: TDataSetProvider;
  lError: Integer;
  lQue: Integer;

  DeadLockDetected: boolean;
begin

  //InputBox('Update Dataset','',lQuery.SQL.Text);
  Conn := TSQLConnection.Create(nil);
  initConnection(conn);

  lQuery := TSQLDataSet.Create(nil);
  lQuery.paramcheck := false;
  lQuery.SQLConnection := conn;

  lDSP := TDataSetProvider.Create(nil);

  try

   // SQLText := stringreplace(stringreplace(SQLText, '"', '''', [rfreplaceall]),
   //   '^^', '"', [rfreplaceall]);

    lQuery.CommandText := SQLText;

    //if _EnableSQLDebug then
    //SiMain.LogMessage('Update : '+stringreplace(SQLText, '"', '''', [rfreplaceall]));



    lDSP.DataSet := lQuery;
    lDSP.resolvetodataset := false;
    lDSP.updatemode := upWherekeyonly;
    //lDSP.updatemode := upWhereall;

    lDSP.ApplyUpdates(dataset.Delta, -1, lError);

    if lError > 0 then
    begin

      lQuery.close;
      lQuery.open;
      lDSP.resolvetodataset := true;
      lDSP.updatemode := upWhereall;

      lDSP.ApplyUpdates(dataset.Delta, -1, lError);

    end;

  finally
    lDSP.Free;
    lQuery.Free;
    conn.Free;
  end;
  Result := lError;

end;

function GetDataSetUnsafe(const SQL: string): Variant;
var
  Conn : TSQLConnection ;
  lQuery: TSQLDataSet;

  lDSP: TDataSetProvider;


  CanExecute: boolean;
  recsout: Integer;
  DeadLockDetected: boolean;
  errmsg: string;
begin


        DeadLockDetected := false;
        errmsg := '';
        CanExecute := false;
        if pos('UPDATE', trim(uppercase(SQL))) = 1 then
          CanExecute := true;

        if pos('SET', trim(uppercase(SQL))) = 1 then
          CanExecute := true;

        if pos('DROP', trim(uppercase(SQL))) = 1 then
          CanExecute := true;
        if pos('CREATE', trim(uppercase(SQL))) = 1 then
          CanExecute := true;
        if pos('ALTER', trim(uppercase(SQL))) = 1 then
          CanExecute := true;
        if not CanExecute then
          if pos('DELETE', trim(uppercase(SQL))) = 1 then
            CanExecute := true;

        if not CanExecute then
          if pos('INSERT', trim(uppercase(SQL))) = 1 then
            CanExecute := true;

        if not CanExecute then
          if pos('CREATE', trim(uppercase(SQL))) = 1 then
            CanExecute := true;

        if not CanExecute then
          if pos('TRUNCATE', trim(uppercase(SQL))) = 1 then
            CanExecute := true;


        Conn := TSQLConnection.Create(nil);
        initConnection(Conn);


        lDSP := TDataSetProvider.Create(nil);

        try

          lQuery := TSQLDataSet.Create(nil);

          lQuery.SQLConnection := conn;

          lQuery.CommandText := stringreplace(SQL, '"', '''', [rfreplaceall]);

          //if _EnableSQLDebug then
          //SiMain.LogMessage(stringreplace(SQL, '"', '''', [rfreplaceall]));

          lQuery.paramcheck := false;
          lDSP.DataSet := lQuery;


          if CanExecute then
            lQuery.ExecSQL;

          if not CanExecute then

            Result := lDSP.GetRecords(-1, recsout, MetaDataOption);

        finally

          lDSP.Free;

          lQuery.Free;
          Conn.Free;

        end;


end;
function GetDataSet(const SQL: string): Variant;
var
  Conn : TSQLConnection ;
  lQuery: TSQLDataSet;

  lDSP: TDataSetProvider;


  CanExecute: boolean;
  recsout: Integer;
  DeadLockDetected: boolean;
  errmsg: string;
begin

    try
      try
        DeadLockDetected := false;
        errmsg := '';
        CanExecute := false;
        if pos('UPDATE', trim(uppercase(SQL))) = 1 then
          CanExecute := true;

        if pos('SET', trim(uppercase(SQL))) = 1 then
          CanExecute := true;

        if pos('DROP', trim(uppercase(SQL))) = 1 then
          CanExecute := true;
        if pos('CREATE', trim(uppercase(SQL))) = 1 then
          CanExecute := true;
        if pos('ALTER', trim(uppercase(SQL))) = 1 then
          CanExecute := true;
        if not CanExecute then
          if pos('DELETE', trim(uppercase(SQL))) = 1 then
            CanExecute := true;

        if not CanExecute then
          if pos('INSERT', trim(uppercase(SQL))) = 1 then
            CanExecute := true;

        if not CanExecute then
          if pos('CREATE', trim(uppercase(SQL))) = 1 then
            CanExecute := true;

        if not CanExecute then
          if pos('TRUNCATE', trim(uppercase(SQL))) = 1 then
            CanExecute := true;


        Conn := TSQLConnection.Create(nil);
        {
        conn.Username :='root';
        conn.Password :='123456';
        conn.Server :='127.0.0.1';
        Conn.Port:=3306;
        Conn.Database:='dba_19022013';
        }
        initConnection(Conn);


        lDSP := TDataSetProvider.Create(nil);

        try

          lQuery := TSQLDataSet.Create(nil);

          lQuery.SQLConnection := conn;

          lQuery.CommandText := stringreplace(SQL, '"', '''', [rfreplaceall]);

          //if _EnableSQLDebug then
          //SiMain.LogMessage(stringreplace(SQL, '"', '''', [rfreplaceall]));

          lQuery.paramcheck := false;
          lDSP.DataSet := lQuery;


          if CanExecute then
            lQuery.ExecSQL;

          if not CanExecute then

            Result := lDSP.GetRecords(-1, recsout, MetaDataOption);

        finally

          lDSP.Free;

          lQuery.Free;
          Conn.Free;

        end;

      finally

      end;
    except
      on e: exception do
          raise exception.Create(e.Message);
    end;
end;

function VersionInfo():integer;
begin
  result := 5602001;
end;

procedure ExecuteSQL(SQL: string);
var
  MyQuery: TSQLQuery;
  errmsg: string;
  conn:TSQLConnection;
begin

  MyQuery := TSQLQuery.Create(nil);
  Conn := TSQLConnection.Create(nil);
  initConnection(Conn);

  try
    //Si.Enabled := True;

    //SiMain.LogMessage('EXECUTE: '+SQL);

    MyQuery.SQLConnection := Conn;
    MyQuery.SQL.Text :=SQL;
    MyQuery.ExecSQL;
  finally
    MyQuery.Free;
  end;


end;




end.
