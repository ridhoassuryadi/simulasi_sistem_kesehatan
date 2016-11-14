unit ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls, Menus;

type
  Tformdaftaradmin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Image6: TImage;
    Image8: TImage;
    Image1: TImage;
    btnhapus: TImage;
    Image16: TImage;
    eduser: TEdit;
    edpassword: TEdit;
    ednama: TEdit;
    griddatabase: TImage;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    tabeluser: TADOTable;
    DataSource1: TDataSource;
    Timer1: TTimer;
    Image2: TImage;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenuAwal1: TMenuItem;
    KembaliKeluarAplikasi1: TMenuItem;
    anyakan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    Bantuan1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    btnkembalikemenu: TImage;
    procedure Image6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure eduserKeyPress(Sender: TObject; var Key: Char);
    procedure edpasswordKeyPress(Sender: TObject; var Key: Char);
    procedure ednamaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure KembaliKeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenuAwal1Click(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure eduserEnter(Sender: TObject);
    procedure eduserExit(Sender: TObject);
    procedure edpasswordEnter(Sender: TObject);
    procedure edpasswordExit(Sender: TObject);
    procedure ednamaEnter(Sender: TObject);
    procedure ednamaExit(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formdaftaradmin: Tformdaftaradmin;

implementation

uses Math, uAbout, UASAL, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, ulihatdataobat, ulihatkeluarga, uLihatPasien,
  ulihatrecord, uLihatTranspeg, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuPegawai,
  uPasien, upilihdokter, uPilihKeluarga, uSplash, uStatusPegawai,
  uTransunit;

{$R *.dfm}

procedure Tformdaftaradmin.Image6Click(Sender: TObject);
begin
tabeluser.Active:=true;
if eduser.Text<>'' then
  begin
    if tabeluser.Locate('Username',eduser.Text,[]) then
      begin
      MessageDlg('Akun Sudah Ada',mtError,[mbYes],1);
      eduser.SetFocus;
      end
    else
      begin
      MessageDlg('Akun Bisa Terdaftar',mtInformation,[mbYes],1);
      edpassword.ReadOnly:=false;
      ednama.ReadOnly:=false;
      eduser.ReadOnly:=true;
      Image1.Enabled:=true;
      edpassword.SetFocus;
      end;
  end
else
  begin
    ShowMessage('Field Masih Kosong');
  end;

end;

procedure Tformdaftaradmin.Image1Click(Sender: TObject);
begin
ADOConnection1.Connected:=true;
tabeluser.Active:=true;
if (eduser.Text='') or (edpassword.Text='') or (ednama.Text='') then
  begin
    MessageDlg('Masih ada Field yang Kosong',mtWarning,[mbYes],1);
  end
else
  begin
    if tabeluser.Locate('Username',eduser.Text,[]) then
    begin
      MessageDlg('Akun Sudah Terdaftar',mtError,[mbYes],1);
    end
    else
      begin
    eduser.ReadOnly:=false;
    tabeluser.Append;
    tabeluser.FieldByName('Username').AsString:=eduser.Text;
    tabeluser.FieldByName('Password').AsString:=edpassword.Text;
    tabeluser.FieldByName('Nama').AsString:=ednama.Text;
    tabeluser.Post;
    MessageDlg('Akun Baru Sudah Tersimpan',mtInformation,[mbYes],1);
    Image1.Enabled:=false;
    edpassword.ReadOnly:=true;
    ednama.ReadOnly:=true;
    eduser.Clear;
    edpassword.Clear;
    ednama.Clear;
    end;
end;

end;
procedure Tformdaftaradmin.eduserKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image6Click(Sender);
end;

procedure Tformdaftaradmin.edpasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  ednama.SetFocus;
end;

procedure Tformdaftaradmin.ednamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key=chr(13)) then exit;
  Image1Click(Sender);
end;

procedure Tformdaftaradmin.Timer1Timer(Sender: TObject);
begin
if eduser.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if edpassword.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if ednama.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=true;
  end;
  
end;

procedure Tformdaftaradmin.btnhapusClick(Sender: TObject);
var
  data:string;
begin
  data:=InputBox('Hapus Data','Masukkan Username :','');
  if tabeluser.Locate('Username',data,[]) then
    begin
      tabeluser.Delete;
      ShowMessage('Data Berhasil Dihapus');
    end
  else
    begin
      ShowMessage('Data Tidak Ditemukan');
    end;
end;

procedure Tformdaftaradmin.Image16Click(Sender: TObject);
var
  data1,data2,data3,data4:string;
begin
  tabeluser.Active:=true;
   data1:=InputBox('Edit Data','Masukkan Username :','');
   if tabeluser.Locate('Username',data1,[])then
    begin
      ShowMessage('Data Ditemukan');
      data2:=InputBox('Edit Data','Masukkan Username Baru :','');
      data3:=InputBox('Edit Data','Masukkan Password Baru :','');
      data4:=InputBox('Edit Data','Masukkan Nama Baru :','');
      tabeluser.Edit;
      tabeluser.FieldByName('Username').AsString:=data2;
      tabeluser.FieldByName('Password').AsString:=data3;
      tabeluser.FieldByName('Nama').AsString:=data4;
      tabeluser.Post;
      ShowMessage('Data Edit Tersimpan');
    end
   else
    begin
      ShowMessage('Data Tidak Ditemukan');
    end;
end;

procedure Tformdaftaradmin.KembaliKeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformdaftaradmin.KembaliKeMenuAwal1Click(Sender: TObject);
begin
tabeluser.Active:=false;
ADOConnection1.Connected:=false;
if ADOConnection1.Connected=false then
begin
eduser.Text:='Username';
eduser.Font.Color:=clmedgray;
edpassword.Text:='Password';
edpassword.Font.Color:=clmedgray;
ednama.Text:='Nama Administrasi';
ednama.Font.Color:=clmedgray;
tabeluser.Active:=false;
ADOConnection1.Connected:=false;
formLogin.Show;
formdaftaradmin.Hide;
end
else
begin
eduser.Text:='Username';
eduser.Font.Color:=clmedgray;
edpassword.Text:='Password';
edpassword.Font.Color:=clmedgray;
ednama.Text:='Nama Administrasi';
ednama.Font.Color:=clmedgray;
tabeluser.Active:=false;
ADOConnection1.Connected:=false;
formLogin.Show;
formdaftaradmin.Hide;
end;
end;

procedure Tformdaftaradmin.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformdaftaradmin.eduserEnter(Sender: TObject);
begin
eduser.Text:='';
eduser.Font.Color:=clHotLight;
end;

procedure Tformdaftaradmin.eduserExit(Sender: TObject);
begin
if eduser.Text<>'' then
  begin

end
else
  begin
    eduser.Text:='Username';
    eduser.Font.Color:=clInactiveCaption;
  end;
end;

procedure Tformdaftaradmin.edpasswordEnter(Sender: TObject);
begin
edpassword.Text:='';
edpassword.Font.Color:=clHotLight;
end;

procedure Tformdaftaradmin.edpasswordExit(Sender: TObject);
begin
if edpassword.Text<>'' then
  begin
  end
else
  begin
    edpassword.Text:='Password';
    edpassword.Font.Color:=clHotLight;
  end;
end;

procedure Tformdaftaradmin.ednamaEnter(Sender: TObject);
begin
ednama.Text:='';
ednama.Font.Color:=clHotLight;
end;

procedure Tformdaftaradmin.ednamaExit(Sender: TObject);
begin
if ednama.Text<>'' then
  begin
  end
else
  begin
    ednama.Text:='Nama Administrasi';
    ednama.Font.Color:=clInactiveCaption;
  end;
end;

procedure Tformdaftaradmin.Refresh1Click(Sender: TObject);
begin
ADOConnection1.Connected:=true;
tabeluser.Active:=true;
eduser.Text:='Username';
eduser.Font.Color:=clmedgray;
edpassword.Text:='Password';
edpassword.Font.Color:=clmedgray;
ednama.Text:='Nama Administrasi';
ednama.Font.Color:=clmedgray;
tabeluser.Active:=false;
tabeluser.Active:=true;

end;

procedure Tformdaftaradmin.KembaliKeMenu1Click(Sender: TObject);
begin
eduser.Text:='Username';
eduser.Font.Color:=clmedgray;
edpassword.Text:='Password';
edpassword.Font.Color:=clmedgray;
ednama.Text:='Nama Administrasi';
ednama.Font.Color:=clmedgray;
tabeluser.Active:=false;
tabeluser.Active:=true;
formutama.Show;
formdaftaradmin.Hide;
end;

procedure Tformdaftaradmin.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformdaftaradmin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    tabeluser.Active:=false;
    ADOConnection1.Connected:=false;

    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    Application.Terminate;

    end
else
  begin
    Abort;
  end;

end;

procedure Tformdaftaradmin.btnkembalikemenuClick(Sender: TObject);
begin
KembaliKeMenuAwal1Click(Sender);
end;

procedure Tformdaftaradmin.FormActivate(Sender: TObject);
begin
if Self.WindowState=wsMinimized then
  begin
  ADOConnection1.Connected:=false;
  tabeluser.Active:=false;
  end
else
  begin
    ADOConnection1.Connected:=true;
  tabeluser.Active:=false;
  tabeluser.Active:=true;
  end;
  end;

end.
