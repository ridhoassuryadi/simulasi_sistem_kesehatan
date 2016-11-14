unit ss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, jpeg, Menus;

type
  Tformlihatdatakeluarga = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    qkeluarga: TADOQuery;
    ADOConnection1: TADOConnection;
    txtindukkel: TEdit;
    Shape1: TShape;
    Label9: TLabel;
    btncarinama: TImage;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    utup1: TMenuItem;
    PilihIni1: TMenuItem;
    Label1: TLabel;
    Image1: TImage;
    procedure txtindukkelEnter(Sender: TObject);
    procedure txtindukkelExit(Sender: TObject);
    procedure txtindukkelKeyPress(Sender: TObject; var Key: Char);
    procedure btncarinamaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure PilihIni1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure txtindukkelChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatdatakeluarga: Tformlihatdatakeluarga;

implementation

uses Math, AutoCompleteText, AutoEdit, uAbout, UASAL, uDoctorMain,
  uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatchartobat,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, ulihatkeluarga,
  uLihatPasien, uLihatpegawai, uLihatTranspeg, ulogin, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuBerobat, uMenuDokter, uMenuPegawai, uMenuUser, uPasien,
  upilihdokter, uPilihKeluarga, uRiwayatpenyakit, uTransaksiuser,
  uTransunit;

{$R *.dfm}

procedure Tformlihatdatakeluarga.txtindukkelEnter(Sender: TObject);
begin
txtindukkel.Clear;
txtindukkel.Font.Color:=clHotLight;
end;

procedure Tformlihatdatakeluarga.txtindukkelExit(Sender: TObject);
begin
if txtindukkel.text='' then
  begin
    txtindukkel.Text:='Nomor Induk Pegawai';
    txtindukkel.font.color:=clMedGray;
  end;
end;

procedure Tformlihatdatakeluarga.txtindukkelKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
btncarinamaClick(Sender);
end;

procedure Tformlihatdatakeluarga.btncarinamaClick(Sender: TObject);
begin
qkeluarga.Active:=true;
qkeluarga.Close;
qkeluarga.SQL.Clear;
qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga where Nomor_Induk='+QuotedStr(txtindukkel.text));
qkeluarga.ExecSQL;
qkeluarga.Open;
end;

procedure Tformlihatdatakeluarga.Timer1Timer(Sender: TObject);
begin
if txtindukkel.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
    end;
end;

procedure Tformlihatdatakeluarga.Refresh1Click(Sender: TObject);
begin
txtindukkel.Font.Color:=clMedGray;
txtindukkel.Text:='Nomor Induk Pegawai';
qkeluarga.Active:=true;
qkeluarga.Close;
qkeluarga.SQL.Clear;
qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
qkeluarga.ExecSQL;
qkeluarga.Open;
end;

procedure Tformlihatdatakeluarga.PilihIni1Click(Sender: TObject);
var
  data:string;
begin
data:=qkeluarga.FieldByName('No_Keluarga').AsString;
qkeluarga.Active:=true;
qkeluarga.Close;
qkeluarga.SQL.Clear;
qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga where No_Keluarga='+data);
qkeluarga.ExecSQL;
qkeluarga.Open;
formpasien.txtindukkel.Text:=qkeluarga.FieldByName('Nomor_Induk').AsString;
formpasien.btncekkelClick(Sender);
formpasien.cbdatakeluarga.Enabled:=true;
formpasien.cbdatakeluarga.Text:=qkeluarga.FieldByName('Nama_Keluarga').AsString;
formpasien.Image9.Enabled:=true;
formpasien.rbkeluarga.Checked:=True;
formlihatdatakeluarga.Hide;
MessageDlg('Anda Telah Memilih Data Keluarga Ini,Silahkan Lanjutkan Transaksi',mtInformation,[mbYes],1);
end;

procedure Tformlihatdatakeluarga.FormCreate(Sender: TObject);
begin
qkeluarga.Active:=true;
qkeluarga.Close;
qkeluarga.SQL.Clear;
qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
qkeluarga.ExecSQL;
qkeluarga.Open;
end;

procedure Tformlihatdatakeluarga.DBGrid1DblClick(Sender: TObject);
var
  data:string;
begin
data:=qkeluarga.FieldByName('No_Keluarga').AsString;
qkeluarga.Active:=true;
qkeluarga.Close;
qkeluarga.SQL.Clear;
qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga where No_Keluarga='+data);
qkeluarga.ExecSQL;
qkeluarga.Open;
formpasien.txtindukkel.Text:=qkeluarga.FieldByName('Nomor_Induk').AsString;
formpasien.btncekkelClick(Sender);
formpasien.cbdatakeluarga.Enabled:=true;
formpasien.cbdatakeluarga.Text:=qkeluarga.FieldByName('Nama_Keluarga').AsString;
formpasien.Image9.Enabled:=true;
formpasien.rbkeluarga.Checked:=True;
formlihatdatakeluarga.Hide;
MessageDlg('Anda Telah Memilih Data Keluarga Ini,Silahkan Lanjutkan Transaksi',mtInformation,[mbYes],1);
end;

procedure Tformlihatdatakeluarga.txtindukkelChange(Sender: TObject);
begin
if txtindukkel.Text='' then
  begin
    qkeluarga.Active:=true;
    qkeluarga.Close;
    qkeluarga.SQL.Clear;
  qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
  qkeluarga.ExecSQL;
  qkeluarga.Open;
  end
else
  begin
    qkeluarga.Active:=true;
    qkeluarga.Close;
    qkeluarga.SQL.Clear;
    qkeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga where Nomor_Induk Like'+QuotedStr(txtindukkel.text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+txtindukkel.Text+'%')+'or Nama_Keluarga Like'+QuotedStr('%'+txtindukkel.Text+'%'));
    qkeluarga.ExecSQL;
    qkeluarga.Open;
  end;

end;

procedure Tformlihatdatakeluarga.Image1Click(Sender: TObject);
begin
ADOConnection1.Connected:=false;
formlihatdatakeluarga.Hide;
end;

end.
