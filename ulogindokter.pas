unit ulogindokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, DB, ADODB;

type
  Tformlogindokter = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    edpin: TEdit;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    Label2: TLabel;
    Shape2: TShape;
    ednomor: TEdit;
    Image3: TImage;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ednomorKeyPress(Sender: TObject; var Key: Char);
    procedure edpinKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlogindokter: Tformlogindokter;

implementation

uses UASAL, uInsertMasterPegawai, ulihatrecord, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMasterPilihan, uMenuAwal, uPasien, upilihdokter, uSplash,
  uAbout, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatdataberobat,
  uLihatDataDokter, ulihatdataobat, ulihatkeluarga, uLihatPasien,
  uLihatTranspeg, ulogin, umainobat, umainobatpoli, uMenuBerobat,
  uMenuDokter, uMenuPegawai, uMenuUser, uPilihKeluarga, uStatusPegawai,
  uTransunit;

{$R *.dfm}

procedure Tformlogindokter.Image2Click(Sender: TObject);
begin
formlogindokter.Hide;
formutama.Show;
end;

procedure Tformlogindokter.Image1Click(Sender: TObject);
var
  nama:string;
begin
if (ednomor.Text='') or (edpin.Text='') then
begin
  ShowMessage('Diantara Nomor Dokter / Pin tidak boleh kosong');
end
else
  begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM master_dokter WHERE Pin = '+QuotedStr(edpin.text)+' and Nomor_Dokter='+QuotedStr(ednomor.Text));
ADOQuery1.Open;
if ADOQuery1.RecordCount <> 0 then  //Jika Record Menghitung lebih dari 1 maka
//data dianggap ada
begin
MessageDlg('Anda Berhasil Login',mtInformation,[mbOK],0);
ADOQuery1.Locate('Nomor_Dokter',ednomor.Text,[]);
formpengobatan.lblsip.Caption:=ADOQuery1.fieldByName('Ijin_Praktek').AsString;
nama:=ADOQuery1.FieldByName('Nama_Dokter').AsString;
formpengobatan.lbllogin.Caption:=nama;
MessageDlg('Selamat datang '+nama,mtInformation,[mbYes],1);
formpengobatan.lbllogin.Caption:=nama;
ednomor.Clear;
edpin.Clear;
formawaldokter.Show;
formawaldokter.lbllogin.Caption:=ADOQuery1.FieldByName('Nama_Dokter').AsString;
if edpin.Text = 'Admin' then
formLogin.Hide;;
end
  else //Jika Data tidak Cocok
    begin
    ShowMessage('Data Salah');
  end;
end;//Akhir Dari Validasi Data Kosong

end;

procedure Tformlogindokter.ednomorKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  edpin.SetFocus;
end;

procedure Tformlogindokter.edpinKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image1Click(Sender);
end;

procedure Tformlogindokter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    Application.Terminate;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    end
else
  begin
    Abort;
  end;
end;

end.
