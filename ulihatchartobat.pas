unit ulihatchartobat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, TeEngine, Series, ADODB, TeeProcs,
  Chart, DbChart, Grids, DBGrids;

type
  Tformlihattipeobat = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DataSource1: TDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    qtipeobat: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihattipeobat: Tformlihattipeobat;

implementation

{$R *.dfm}

procedure Tformlihattipeobat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADOConnection1.Connected:=false;
qtipeobat.Active:=false;
end;

end.
