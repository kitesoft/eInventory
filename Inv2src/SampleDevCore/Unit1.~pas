unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBClient;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGrid;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DevCoreLIB;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ClientDataSet1.Data:=SamGetDataSet('select * from ICMTTPOD');
  
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ClientDataSet2.Data:=SamGetDataSet('select * from ICMTTSTL');
end;

end.
