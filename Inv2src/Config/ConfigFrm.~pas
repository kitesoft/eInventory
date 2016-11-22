unit ConfigFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls,omnixml,


  DB,
  DBXpress,
  FMTBcd,
  SqlExpr,

  DBClient,
  Provider;
type
  TfrmConfig = class(TForm)
    btnOK: TButton;
    StatusBar1: TStatusBar;
    gbGroup: TGroupBox;
    Label10: TLabel;
    edServerIP: TEdit;
    edDbName: TEdit;
    edUserName: TEdit;
    edPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnTestConnection: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnTestConnectionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure readConfig();
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

const
    _config_file='appconfig.xml';

implementation

uses CommonUtils, uCiaXml;




{$R *.dfm}

procedure TfrmConfig.btnOKClick(Sender: TObject);
var
xmlConn : TXMLConfig;
_app_address,_app_hostname,_app_database,_app_user,_app_password:string;
begin

  try
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);

    //if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
    //begin
        // mssql connection
        xmlConn.WriteString('AppConfig','ADDRESS',edServerIP.Text);
        xmlConn.WriteString('AppConfig','HOSTNAME','localhost');
        xmlConn.WriteString('AppConfig','USER',EncryptEx(edUserName.Text));
        xmlConn.WriteString('AppConfig','PASSWORD',EncryptEx(edPassword.Text));
        xmlConn.WriteString('AppConfig','DATABASE',EncryptEx(edDbName.Text));
        xmlConn.Save;
    //end;

     _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
     _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
     _app_database:=DecryptEx(xmlConn.ReadString('AppConfig','DATABASE',''));
     _app_user:=DecryptEx(xmlConn.ReadString('AppConfig','USER','sa'));
     _app_password:=DecryptEx(xmlConn.ReadString('AppConfig','PASSWORD','123456'));

     ShowMessage('successfull.');

  except
    on err:Exception do
    begin
      MessageDlg(err.Message,mtError,[mbOK],0);
     // ShowMessage(_app_address+'-'+_app_database+'-'+_app_user+'-'+_app_password);

    end;
  end;


end;



procedure TfrmConfig.btnTestConnectionClick(Sender: TObject);
var rep:boolean;
    conn : TSQLConnection;
xmlConn : TXMLConfig;
_app_address,_app_hostname,_app_database,_app_user,_app_password:string;


begin

  try

    rep:=false;
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
    //xmlConn:=TXMLConfig.Create(_config_file);
    if (xmlConn.ReadString('AppConfig','ADDRESS','')<>'') then
    begin

    conn :=TSQLConnection.Create(nil);





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
      //Params.Values['SQLDialect']:= '3';






      Connected:=true;


      ShowMessage('Connection OK!!');

      end;      


     end;
  except
    on err:Exception do
    begin
      rep:=false;
      MessageDlg(err.Message,mtError,[mbOK],0);
     // ShowMessage(_app_address+'-'+_app_database+'-'+_app_user+'-'+_app_password);

    end;
  end;



end;


(*  omnixml
var
  XML: IXMLDocument;
  Children: IXMLNodeList;
  I, L: Integer;
begin
  //CREATE XML DOC
  XML := CreateXMLDoc('Configuration', True);

  with XML.DocumentElement.AddChild('AppConfig') do begin
    Attributes['ADDRESS'] := '10.0.2.101';
    Attributes['HOSTNAME'] := 'localhost';
    Attributes['USER'] := 'joni';
    Attributes['PASSWORD'] :=  EncryptEx('123456');
    Attributes['DATABASE'] := 'inv2_db';
  end;

  {
  with XML.DocumentElement.AddChild('AppConfig') do begin
    //Attributes['attribute2'] := 'value2';
    AddText('xxxxxxxx');
  end;

  with XML.DocumentElement.AddChild('ClientConfig') do begin
    //Attributes['attribute1'] := 'value1';
    AddText('xxxxxxxx');
  end;
  with XML.DocumentElement.AddChild('ClientConfig') do begin
    //Attributes['attribute2'] := 'value2';
    AddText('xxxxxxxx');
  end;
  }


  XML.SaveToFile(ExtractFilePath(Application.ExeName)+'test.xml');

  //READ XML DOC
  XML := CreateXMLDoc;

  XML.LoadFromFile(ExtractFilePath(Application.ExeName)+'test.xml');
  for I := 0 to XML.DocumentElement.ChildNodes.Count-1 do
      ShowMessage(XML.DocumentElement.ChildNodes[I].NodeName+'='+XML.DocumentElement.ChildNodes[I].Text);




  Children := XML.DocumentElement.SelectNodes('AppConfig');
  for I := 0 to Children.Count-1 do begin

    for L := 0 to Children[I].Attributes.Count-1 do
      ShowMessage(Children[I].NodeName+'['+
        Children[I].Attributes.Item[L].NodeName+'] = '+
        Children[I].Attributes.Item[L].NodeValue);


  end;      
end;
*)

procedure TfrmConfig.readConfig;
var
xmlConn : TXMLConfig;
_app_address,_app_hostname,_app_database,_app_user,_app_password:string;
begin

  try
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);

    if (xmlConn.ReadString('AppConfig','ADDRESS','')<>'') then
    begin
     _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
     _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
     _app_database:=DecryptEx(xmlConn.ReadString('AppConfig','DATABASE',''));
     _app_user:=DecryptEx(xmlConn.ReadString('AppConfig','USER','sa'));
     _app_password:=DecryptEx(xmlConn.ReadString('AppConfig','PASSWORD','123456'));


     edServerIP.Text := _app_address;
     edDbName.Text := _app_database;
     edUserName.Text := _app_user;
     edPassword.Text := _app_password;
     
    end;


  except
    on err:Exception do
    begin
      MessageDlg(err.Message,mtError,[mbOK],0);
     // ShowMessage(_app_address+'-'+_app_database+'-'+_app_user+'-'+_app_password);

    end;
  end;


end;
procedure TfrmConfig.FormShow(Sender: TObject);
begin
  readConfig;
end;

end.
