unit uLihatBerobatKeluarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, jpeg, DB, ADODB, Grids, DBGrids,
  RpCon, RpConDS, RpDefine, RpRave, Menus, ComObj;

type
  Tformlihatberobatkeluarga = class(TForm)
    GroupBox3: TGroupBox;
    Shape4: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape1: TShape;
    Image6: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape8: TShape;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    ednoindukpeg: TEdit;
    edpersonelpeg: TEdit;
    ednopeg: TEdit;
    cbjk: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    ComboBox1: TComboBox;
    Image2: TImage;
    dbgridpeg: TDBGrid;
    dbgridbeliobat: TDBGrid;
    dbgridjumlahtrans: TDBGrid;
    ADOConnection1: TADOConnection;
    queryrecord: TADOQuery;
    sourcerecord: TDataSource;
    querybeliobat: TADOQuery;
    sourcebeliobat: TDataSource;
    querytransaksikeluarga: TADOQuery;
    sourcetransaksikeluarga: TDataSource;
    Edit1: TEdit;
    Shape2: TShape;
    Label2: TLabel;
    Image7: TImage;
    queryjk: TADOQuery;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label3: TLabel;
    Image9: TImage;
    Image16: TImage;
    Label4: TLabel;
    querystatustunjangan: TADOQuery;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Image19: TImage;
    projectberobat: TRvProject;
    dsberobatkeluarga: TRvDataSetConnection;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    ransaksiBerobat1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    PrintData1: TMenuItem;
    PrintDataBerobatKeluarga1: TMenuItem;
    PrintDataTransaksiKeluarga1: TMenuItem;
    PrintDataBeliKeluarga1: TMenuItem;
    PrintDataSemuanya1: TMenuItem;
    dsbelikeluarga: TRvDataSetConnection;
    projectbeli: TRvProject;
    PrintSemuaData1: TMenuItem;
    PrintBerdasarkanNomorInduk1: TMenuItem;
    PrintBerdasarkanNama1: TMenuItem;
    PrintBerdasarkanJenisKeluarga1: TMenuItem;
    PrintBerdasarkanTipePasien1: TMenuItem;
    projecttransaksi: TRvProject;
    dstransaksi: TRvDataSetConnection;
    PrintSemuaData2: TMenuItem;
    Image3: TImage;
    Image22: TImage;
    grupdatagridfield: TGroupBox;
    Image23: TImage;
    Shape23: TShape;
    Label16: TLabel;
    Shape24: TShape;
    Shape25: TShape;
    Label17: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Shape27: TShape;
    Shape29: TShape;
    Label26: TLabel;
    Label13: TLabel;
    Shape3: TShape;
    Label14: TLabel;
    Label18: TLabel;
    Shape9: TShape;
    edgridno: TEdit;
    edgridnama: TEdit;
    memokel: TMemo;
    memoanameaterimpin: TMemo;
    memopempen: TMemo;
    memodiag: TMemo;
    edtipe: TEdit;
    Memo1: TMemo;
    Shape5: TShape;
    Label15: TLabel;
    Timer1: TTimer;
    Shape10: TShape;
    PopupMenu1: TPopupMenu;
    RefreshField1: TMenuItem;
    KeTransaksiRecord1: TMenuItem;
    LihatDataRecordPegawai1: TMenuItem;
    KembaliKeMenuAwal1: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape12: TShape;
    Label19: TLabel;
    Label21: TLabel;
    lbltransaksi: TLabel;
    Label22: TLabel;
    lbllogin: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    PrintDataBerdasarkanNomorInduk1: TMenuItem;
    PrintDataBerdasarkanNomorKeluarga1: TMenuItem;
    PrintDataBerdasarkanNamaKeluarga1: TMenuItem;
    PrintDataBerdasarkanJenisKeluarga1: TMenuItem;
    PopupMenu2: TPopupMenu;
    cbtipeobat: TComboBox;
    Shape11: TShape;
    Label8: TLabel;
    qtipeobat: TADOQuery;
    Image21: TImage;
    ExportData1: TMenuItem;
    ExportRecordBerobat1: TMenuItem;
    ExportDataRecordbesertaObat1: TMenuItem;
    ExportLihatBanyakTransaksi1: TMenuItem;
    ExportBerdasarkanNomorInduk1: TMenuItem;
    ExportBerdsarkanNomorKeluarga1: TMenuItem;
    ExportBerdasarkanNamaKeluarga1: TMenuItem;
    ExportBerdsarkanJenisKeluarga1: TMenuItem;
    ExportBerdasarkanStatusTunjangan1: TMenuItem;
    ExportBerdasarkanNomorRecord1: TMenuItem;
    ExportBerdasarkanTipePasien1: TMenuItem;
    ExportSemuaData1: TMenuItem;
    ExportBerdasarkanNomorInduk2: TMenuItem;
    ExportBerdasarkanNomorKeluarga1: TMenuItem;
    ExportBerdasarkanNamaKeluarga2: TMenuItem;
    ExportBerdasarkanJenisKeluarga1: TMenuItem;
    ExportBerdasarkanNomorRecordBerobat1: TMenuItem;
    ExportSemuaData2: TMenuItem;
    ExportBerdasarkanNomorInduk3: TMenuItem;
    ExportBerdasarkanNomorKeluarga2: TMenuItem;
    ExportBerdasarkanNamaKeluarga3: TMenuItem;
    ExportBerdasarkanJenisKeluarga2: TMenuItem;
    ExportBerdasarkanStatusTunjangan2: TMenuItem;
    ExportSemuaData3: TMenuItem;
    PrintBerdasarkanNomorInduk2: TMenuItem;
    PrintBerdasarkanNomorKeluarga1: TMenuItem;
    PrintBerdasarkanNamaKeluarga1: TMenuItem;
    PrintBerdasarkanJenisKeluarga2: TMenuItem;
    PrintBerdasarkanStatusTunjangan1: TMenuItem;
    btnlihatdatapeg: TImage;
    btnkembali: TImage;
    Image18: TImage;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure btnkembaliClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure cbjkChange(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure LihatDataBerobatKeluarga1Click(Sender: TObject);
    procedure PrintDataSemuanya1Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure PrintSemuaData1Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure PrintBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure PrintBerdasarkanNama1Click(Sender: TObject);
    procedure PrintBerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure PrintBerdasarkanTipePasien1Click(Sender: TObject);
    procedure PrintSemuaData2Click(Sender: TObject);
    procedure dbgridpegCellClick(Column: TColumn);
    procedure Timer1Timer(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure RefreshField1Click(Sender: TObject);
    procedure KembaliKeMenuAwal1Click(Sender: TObject);
    procedure LihatDataRecordPegawai1Click(Sender: TObject);
    procedure KeTransaksiRecord1Click(Sender: TObject);
    procedure ednoindukpegEnter(Sender: TObject);
    procedure ednoindukpegExit(Sender: TObject);
    procedure edpersonelpegEnter(Sender: TObject);
    procedure edpersonelpegExit(Sender: TObject);
    procedure ednopegExit(Sender: TObject);
    procedure ednopegEnter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure ransaksiBerobat1Click(Sender: TObject);
    procedure dbgridbeliobatCellClick(Column: TColumn);
    procedure dbgridjumlahtransCellClick(Column: TColumn);
    procedure PrintDataBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNomorKeluarga1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaKeluarga1Click(Sender: TObject);
    procedure PrintDataBerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure cbtipeobatChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ednoindukpegChange(Sender: TObject);
    procedure edpersonelpegChange(Sender: TObject);
    procedure ednopegChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure ExportSemuaData1Click(Sender: TObject);
    procedure ExportBerdsarkanNomorKeluarga1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaKeluarga1Click(Sender: TObject);
    procedure ExportBerdsarkanJenisKeluarga1Click(Sender: TObject);
    procedure ExportBerdasarkanStatusTunjangan1Click(Sender: TObject);
    procedure ExportBerdasarkanNomorRecord1Click(Sender: TObject);
    procedure ExportBerdasarkanTipePasien1Click(Sender: TObject);
    procedure ExportSemuaData3Click(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk3Click(Sender: TObject);
    procedure ExportBerdasarkanNomorKeluarga2Click(Sender: TObject);
    procedure ExportBerdasarkanNamaKeluarga3Click(Sender: TObject);
    procedure ExportBerdasarkanJenisKeluarga2Click(Sender: TObject);
    procedure ExportBerdasarkanStatusTunjangan2Click(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk2Click(Sender: TObject);
    procedure ExportBerdasarkanNomorKeluarga1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaKeluarga2Click(Sender: TObject);
    procedure ExportBerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure ExportBerdasarkanNomorRecordBerobat1Click(Sender: TObject);
    procedure ExportSemuaData2Click(Sender: TObject);
    procedure PrintBerdasarkanNomorInduk2Click(Sender: TObject);
    procedure PrintBerdasarkanNomorKeluarga1Click(Sender: TObject);
    procedure PrintBerdasarkanNamaKeluarga1Click(Sender: TObject);
    procedure PrintBerdasarkanJenisKeluarga2Click(Sender: TObject);
    procedure PrintBerdasarkanStatusTunjangan1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure btnlihatdatapegClick(Sender: TObject);
    procedure ednoindukpegKeyPress(Sender: TObject; var Key: Char);
    procedure edpersonelpegKeyPress(Sender: TObject; var Key: Char);
    procedure ednopegKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure TutupKoneksi;
    procedure CobaTutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatberobatkeluarga: Tformlihatberobatkeluarga;

implementation

uses uAbout, UASAL, uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  ulihatChart, ulihatchart2, ulihatdataberobat, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin,
  ulogindokter, umainobat, umainobatpoli, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuBerobat, uMenuPegawai, uPasien,
  upilihdokter, uPilihKeluarga, uSplash, uStatusPegawai, uTransunit, Math,
  uDoctorMain, uLihatDataDokter, uMenuDokter, uMenuUser;

{$R *.dfm}

procedure Tformlihatberobatkeluarga.RadioButton1Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
dbgridpeg.Visible:=true;
dbgridbeliobat.Visible:=false;
dbgridjumlahtrans.Visible:=false;
end;

procedure Tformlihatberobatkeluarga.RadioButton2Click(Sender: TObject);
begin
querybeliobat.Active:=true;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga');
querybeliobat.ExecSQL;
querybeliobat.Open;
//
dbgridpeg.Visible:=false;
dbgridbeliobat.Visible:=true;
dbgridjumlahtrans.Visible:=false;
end;

procedure Tformlihatberobatkeluarga.RadioButton3Click(Sender: TObject);
begin
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga');
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
//
dbgridpeg.Visible:=false;
dbgridbeliobat.Visible:=false;
dbgridjumlahtrans.Visible:=true;
end;

procedure Tformlihatberobatkeluarga.btncarinomorindukClick(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
end;

procedure Tformlihatberobatkeluarga.btnkembaliClick(Sender: TObject);
begin
CobaTutupKoneksi;
KembaliKeMenu1Click(Sender);
end;

procedure Tformlihatberobatkeluarga.Image17Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nama_Keluarga='+QuotedStr(ednopeg.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nama_Keluarga='+QuotedStr(ednopeg.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nama_Keluarga='+QuotedStr(ednopeg.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;

end;

procedure Tformlihatberobatkeluarga.cbjkChange(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Jenis_Keluarga='+QuotedStr(cbjk.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Jenis_Keluarga='+QuotedStr(cbjk.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Jenis_Keluarga='+QuotedStr(cbjk.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;

end;

procedure Tformlihatberobatkeluarga.Image6Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga WHERE tanggal_kahir BETWEEN (:tgl1) AND (:tgl2)');
queryrecord.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
queryrecord.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga WHERE tanggal_kahir BETWEEN (:tgl1) AND (:tgl2)');
querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where tanggal_kahir BETWEEN (:tgl1) AND (:tgl2)');
querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
//

end;

procedure Tformlihatberobatkeluarga.ComboBox1Change(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;

end;

procedure Tformlihatberobatkeluarga.Image1Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT master_record_berobat.Nomor_induk, Query_Pasien_Keluarga.nama_keluarga, master_record_berobat.[No], Query_Pasien_Keluarga.tanggal_kahir, Query_Pasien_Keluarga.nomor_pasien,');
queryrecord.SQL.Add('Query_Pasien_Keluarga.status_tunjangan, Query_Pasien_Keluarga.kode_jenis_keluarga, Query_Pasien_Keluarga.No_Keluarga, master_jenis_keluarga.jenis_keluarga, master_record_berobat.Keluhan,');
queryrecord.SQL.Add('master_record_berobat.Anamesa_terimpin, master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.Tanggal_Berobat, master_record_berobat.diagnosa,');
queryrecord.SQL.Add('master_record_berobat.Tipe_Obat, master_record_berobat.Tipe_Pasien');
queryrecord.SQL.Add('FROM (master_record_berobat INNER JOIN Query_Pasien_Keluarga ON (master_record_berobat.Nomor_induk = Query_Pasien_Keluarga.nomor_induk) AND (master_record_berobat.No_Keluarga = ');
queryrecord.SQL.Add('Query_Pasien_Keluarga.No_Keluarga)) INNER JOIN master_jenis_keluarga ON Query_Pasien_Keluarga.kode_jenis_keluarga = master_jenis_keluarga.kode_jenis_keluarga where master_record_berobat.No='+Edit1.Text);
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT master_beli_obat.[No], master_keluarga.No_Keluarga, master_keluarga.nama_keluarga, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_record_berobat.Tanggal_Berobat,');
querybeliobat.SQL.Add('Query_Pegawai_Keluarga.jenis_keluarga, master_record_berobat.Tipe_Obat, master_record_berobat.Nomor_induk, master_keluarga.tanggal_kahir, Query_Pegawai_Keluarga.status_tunjangan');
querybeliobat.SQL.Add('FROM ((master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No]) INNER JOIN master_keluarga ON master_record_berobat.No_Keluarga = ');
querybeliobat.SQL.Add('master_keluarga.No_Keluarga) INNER JOIN Query_Pegawai_Keluarga ON master_keluarga.No_Keluarga = Query_Pegawai_Keluarga.No_Keluarga where master_record_berobat.No='+Edit1.Text);
querybeliobat.ExecSQL;
querybeliobat.Open;
end;

procedure Tformlihatberobatkeluarga.Image9Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
queryrecord.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker3.Date);
queryrecord.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker4.Date);
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker3.Date);
querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker4.Date);
querybeliobat.ExecSQL;
querybeliobat.Open;
//

end;

procedure Tformlihatberobatkeluarga.ComboBox2Change(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Tipe_Penyakit='+QuotedStr(ComboBox2.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Tipe_Penyakit='+QuotedStr(ComboBox2.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
end;

procedure Tformlihatberobatkeluarga.ComboBox3Change(Sender: TObject);
begin
{queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Tipe_Obat='+QuotedStr(ComboBox3.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Tipe_Obat='+QuotedStr(ComboBox3.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
}
end;

procedure Tformlihatberobatkeluarga.LihatDataBerobatKeluarga1Click(
  Sender: TObject);
begin
formlihatberobatpegawai.Show;
formlihatberobatkeluarga.Hide;
end;

procedure Tformlihatberobatkeluarga.PrintDataSemuanya1Click(
  Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Semua Data Transaksi');
projectberobat.Execute;
projectberobat.Close;
end;

procedure Tformlihatberobatkeluarga.Image13Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Nomor Induk :'+ednoindukpeg.Text);
projectberobat.Execute;
projectberobat.Close;
  end
    else if RadioButton2.Checked=true then
      begin
      querybeliobat.Active:=true;
      querybeliobat.Close;
      querybeliobat.SQL.Clear;
      querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
      querybeliobat.ExecSQL;
      querybeliobat.Open;
      projectbeli.Open;
      projectbeli.SelectReport('Report',False);
      projectbeli.SetParam('datastr','Print Berdasarkan: '+ednoindukpeg.Text);
      projectbeli.Execute;
      projectbeli.Close;
      end
else if RadioButton3.Checked=true then
  begin
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Nomor Induk :'+ednoindukpeg.Text);
projecttransaksi.Execute;
projectberobat.Close;
end
else
  begin
    ShowMessage('Print Data Tidak Tersedia');
  end;
end;

procedure Tformlihatberobatkeluarga.Image14Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where No_Keluarga='+edpersonelpeg.Text);
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Nomor Keluarga :'+edpersonelpeg.Text);
projectberobat.Execute;
projectberobat.Close;
end
  else if RadioButton2.Checked=true then
    begin
      querybeliobat.Active:=true;
      querybeliobat.Close;
      querybeliobat.SQL.Clear;
      querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where No_Keluarga='+edpersonelpeg.Text);
      querybeliobat.ExecSQL;
      querybeliobat.Open;
         projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Nomor Keluarga :'+edpersonelpeg.Text);
    projectbeli.Execute;
    projectbeli.Close;
    end
  else if RadioButton3.Checked=true then
    begin
 querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where No_Keluarga='+edpersonelpeg.Text);
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Nomor Keluarga :'+edpersonelpeg.Text);
projecttransaksi.Execute;
projectberobat.Close;
end

  else
    begin
      ShowMessage('Print Data tidak tersedia');
    end;
end;

procedure Tformlihatberobatkeluarga.Image12Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+ednopeg.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Nama Keluarga :'+ednopeg.Text);
projectberobat.Execute;
projectberobat.Close;
end
  else if RadioButton2.Checked=true then
    begin
     querybeliobat.Active:=true;
      querybeliobat.Close;
      querybeliobat.SQL.Clear;
      querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+ednopeg.Text+'%'));
      querybeliobat.ExecSQL;
      querybeliobat.Open;
      projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Nama Keluarga :'+ednopeg.Text);
    projectbeli.Execute;
    projectbeli.Close;
    end
else if RadioButton3.Checked=true then
  begin
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+ednopeg.Text+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Nama Keluarga :'+ednopeg.Text);
projecttransaksi.Execute;
projectberobat.Close;
end
  else
    begin
      ShowMessage('Print Data tidak Tersedia');
    end;
end;

procedure Tformlihatberobatkeluarga.Image11Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
    queryrecord.Active:=true;
    queryrecord.Close;
    queryrecord.SQL.Clear;
    queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Jenis_Keluarga='+QuotedStr(cbjk.Text));
    queryrecord.ExecSQL;
  queryrecord.Open;
  projectberobat.Open;
    projectberobat.SelectReport('Report',False);
    projectberobat.SetParam('datastr','Berdasarkan Jenis Keluarga :'+cbjk.Text);
    projectberobat.Execute;
  projectberobat.Close;
end
else if RadioButton2.Checked=true then
  begin
  querybeliobat.Active:=true;
  querybeliobat.Close;
  querybeliobat.SQL.Clear;
  querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Jenis_Keluarga='+QuotedStr(cbjk.Text));
  querybeliobat.ExecSQL;
  querybeliobat.Open;
  projectbeli.SelectReport('Report',False);
  projectbeli.SetParam('datastr','Berdasarkan Jenis Keluarga :'+cbjk.Text);
  projectbeli.Execute;
  projectbeli.Close;
end
else if RadioButton3.Checked=true then
  begin
  querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Jenis_Keluarga='+QuotedStr(cbjk.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Jenis Keluarga :'+cbjk.Text);
projecttransaksi.Execute;
projectberobat.Close;
end
else
  begin
      ShowMessage('Print Data Tidak Ditemukan');
  end;
end;

procedure Tformlihatberobatkeluarga.Image10Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga WHERE tanggal_kahir BETWEEN (:tgl1) AND (:tgl2)');
queryrecord.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
queryrecord.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Tanggal Lahir :'+DateToStr(DateTimePicker1.Date)+' sampai dengan '+DateToStr(DateTimePicker2.Date));
projectberobat.Execute;
projectberobat.Close;
end
else if RadioButton2.Checked=true then
  begin
    querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga WHERE tanggal_kahir BETWEEN (:tgl1) AND (:tgl2)');
    querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
    querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
    querybeliobat.ExecSQL;
    querybeliobat.Open;
    projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Tanggal Lahir :'+DateToStr(DateTimePicker1.Date)+' / '+DateToStr(DateTimePicker2.Date));
    projectbeli.Execute;
    projectbeli.Close;
  end
else if RadioButton3.Checked=true then
  begin
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where tanggal_kahir BETWEEN (:tgl1) AND (:tgl2)');
querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Berdasarkan Tanggal Lahir :'+DateToStr(DateTimePicker1.Date)+' / '+DateToStr(DateTimePicker2.Date));
projecttransaksi.Execute;
projecttransaksi.Close;
end
else
  begin
    ShowMessage('Print Data Tidak Ditemukan');
  end;

end;

procedure Tformlihatberobatkeluarga.Image15Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  queryrecord.Active:=true;
  queryrecord.Close;
  queryrecord.SQL.Clear;
  queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
  queryrecord.ExecSQL;
  queryrecord.Open;
  projectberobat.Open;
  projectberobat.SelectReport('Report',False);
  projectberobat.SetParam('datastr','Berdasarkan Status Tunjangan :'+ComboBox1.Text);
  projectberobat.Execute;
  projectberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
    querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
    querybeliobat.ExecSQL;
    querybeliobat.Open;
    projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Status Tunjangan :'+ComboBox1.Text);
    projectbeli.Execute;
    projectbeli.Close;
  end
else if RadioButton3.Checked=true then
  begin
    querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Status Tunjangan :'+ComboBox1.Text);
projecttransaksi.Execute;
projectberobat.Close;
end
else
  begin
    ShowMessage('Print Data tidak tersedia');
  end;
end;

procedure Tformlihatberobatkeluarga.Image8Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Status_Tunjangan='+QuotedStr(ComboBox1.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;

end;

procedure Tformlihatberobatkeluarga.Image7Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
    queryrecord.Active:=true;
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT master_record_berobat.Nomor_induk, Query_Pasien_Keluarga.nama_keluarga, master_record_berobat.[No], Query_Pasien_Keluarga.tanggal_kahir, Query_Pasien_Keluarga.nomor_pasien,');
queryrecord.SQL.Add('Query_Pasien_Keluarga.status_tunjangan, Query_Pasien_Keluarga.kode_jenis_keluarga, Query_Pasien_Keluarga.No_Keluarga, Query_Pasien_Keluarga.jenis_keluarga, master_record_berobat.Keluhan,');
queryrecord.SQL.Add('master_record_berobat.Anamesa_terimpin, master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.Tanggal_Berobat, master_record_berobat.diagnosa,');
queryrecord.SQL.Add('master_record_berobat.Tipe_Penyakit');
queryrecord.SQL.Add('FROM master_record_berobat INNER JOIN Query_Pasien_Keluarga ON master_record_berobat.No_Keluarga = Query_Pasien_Keluarga.No_Keluarga where master_record_berobat.No Like'+QuotedStr(Edit1.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;

    projectberobat.Open;
    projectberobat.SelectReport('Report',False);
    projectberobat.SetParam('datastr','Berdasarkan Nomor Record :'+Edit1.Text);
    projectberobat.Execute;
    projectberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Keluarga.[No], master_keluarga.No_Keluarga, master_keluarga.nama_keluarga, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, Query_Pegawai_Keluarga.jenis_keluarga,');
querybeliobat.SQL.Add('master_keluarga.tanggal_kahir, Query_Pegawai_Keluarga.status_tunjangan, master_beli_obat.Sendok, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat, master_beli_obat.Jumlah_Beli, master_beli_obat.Hari,');
querybeliobat.SQL.Add('Query_Berobat_Keluarga.Nomor_induk, Query_Berobat_Keluarga.Tanggal_Berobat, Query_Berobat_Keluarga.Tipe_Penyakit');
querybeliobat.SQL.Add('FROM ((master_keluarga INNER JOIN Query_Pegawai_Keluarga ON master_keluarga.No_Keluarga = Query_Pegawai_Keluarga.No_Keluarga) INNER JOIN Query_Berobat_Keluarga ON master_keluarga.No_Keluarga =');
querybeliobat.SQL.Add('Query_Berobat_Keluarga.No_Keluarga) INNER JOIN master_beli_obat ON Query_Berobat_Keluarga.[No] = master_beli_obat.[No] where Query_Berobat_Keluarga.[No] Like'+QuotedStr(Edit1.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;

    projectbeli.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Nomor Record :'+Edit1.Text);
    projectbeli.Execute;
    projectbeli.Close;
  end
else
  begin
    ShowMessage('Print Data Tidak Tersedia');
  end;
end;

procedure Tformlihatberobatkeluarga.Image16Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
    queryrecord.Active:=true;
    queryrecord.Close;
    queryrecord.SQL.Clear;
    queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
    queryrecord.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker3.Date);
    queryrecord.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker4.Date);
    queryrecord.ExecSQL;
    queryrecord.Open;
     projectberobat.Open;
    projectberobat.SelectReport('Report',False);
    projectberobat.SetParam('datastr','Berdasarkan Tanggal Berobat :'+DateToStr(DateTimePicker3.Date)+' Sampai Dengan '+DateToStr(DateTimePicker4.Date));
    projectberobat.Execute;
    projectberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker3.Date);
querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker4.Date);
querybeliobat.ExecSQL;
querybeliobat.Open;
projectbeli.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Tanggal Berobat :'+DateToStr(DateTimePicker3.Date)+' Sampai Dengan '+DateToStr(DateTimePicker4.Date));
    projectbeli.Execute;
    projectbeli.Close;
  end
else
  begin
    ShowMessage('Print Data Tidak Tersedia');
  end;
end;

procedure Tformlihatberobatkeluarga.Image19Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
      queryrecord.Active:=true;
    queryrecord.Close;
    queryrecord.SQL.Clear;
    queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Tipe_Penyakit='+QuotedStr(ComboBox2.Text));
    queryrecord.ExecSQL;
    queryrecord.Open;
     projectberobat.Open;
    projectberobat.SelectReport('Report',False);
    projectberobat.SetParam('datastr','Berdasarkan Tipe Penyakit :'+ComboBox2.Text);
    projectberobat.Execute;
    projectberobat.Close;
   end
else if RadioButton2.Checked=true then
  begin
    querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Tipe_Penyakit='+QuotedStr(ComboBox2.Text));
    querybeliobat.ExecSQL;
    querybeliobat.Open;
    projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Tipe Penyakit :'+ComboBox2.Text);
    projectbeli.Execute;
    projectbeli.Close;
    end
else
  begin
    ShowMessage('Print Data Tidak Ditemukan');
  end;
end;

procedure Tformlihatberobatkeluarga.PrintSemuaData1Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
projectbeli.Open;
projectbeli.SelectReport('Report',False);
projectbeli.SetParam('datastr','Semua Pembelian ');
projectbeli.Execute;
projectbeli.Close;

end;

procedure Tformlihatberobatkeluarga.Image18Click(Sender: TObject);
begin
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
Edit1.Clear;
ComboBox2.Text:='';
cbtipeobat.Text:='';
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
Memo1.Clear;
edgridno.Clear;
edgridnama.Clear;
edtipe.Clear;
//
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
cbtipeobat.Clear;
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM master_tipe_obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
   cbtipeobat.Items.Add(qtipeobat['Tipe_Obat']);
   qtipeobat.Next;
end;
//
cbjk.Clear;
queryjk.Active:=true;
queryjk.Close;
queryjk.SQL.Clear;
queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
queryjk.ExecSQL;
queryjk.Open;
queryjk.first;
//
while not queryjk.Eof do
begin
  cbjk.Items.Add(queryjk['Jenis_Keluarga']);
  queryjk.Next;
end;
//
ComboBox1.Clear;
querystatustunjangan.Active:=true;
querystatustunjangan.Close;
querystatustunjangan.SQL.Clear;
querystatustunjangan.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
querystatustunjangan.ExecSQL;
querystatustunjangan.Open;
querystatustunjangan.First;
while not querystatustunjangan.Eof do
  begin
    ComboBox1.Items.Add(querystatustunjangan['Status_Tunjangan']);
    querystatustunjangan.Next;
  end;
end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanNomorInduk1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nomor Induk :','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nomor_Induk='+QuotedStr(data));
querybeliobat.ExecSQL;
querybeliobat.Open;
projectbeli.Open;
projectbeli.SelectReport('Report',False);
projectbeli.SetParam('datastr','Print Berdasarkan: '+data);
projectbeli.Execute;
projectbeli.Close;

end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanNama1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nama :','');
querybeliobat.Active:=true;
      querybeliobat.Close;
      querybeliobat.SQL.Clear;
      querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+data+'%'));
      querybeliobat.ExecSQL;
      querybeliobat.Open;
      projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Nama Keluarga :'+data);
    projectbeli.Execute;
    projectbeli.Close;

end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanJenisKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Jenis Keluarga :','');
  querybeliobat.Active:=true;
  querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Jenis_Keluarga Like'+QuotedStr('%'+data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
querybeliobat.Open;
  projectbeli.SelectReport('Report',False);
  projectbeli.SetParam('datastr','Berdasarkan Jenis Keluarga :'+data);
  projectbeli.Execute;
  projectbeli.Close;
end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanTipePasien1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Tipe Penyakit :','');
    querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Tipe_Penyakit Like'+QuotedStr('%'+data+'%'));
    querybeliobat.ExecSQL;
    querybeliobat.Open;
    projectberobat.Open;
    projectbeli.SelectReport('Report',False);
    projectbeli.SetParam('datastr','Berdasarkan Tipe Penyakit :'+data);
    projectbeli.Execute;
    projectbeli.Close;
end;

procedure Tformlihatberobatkeluarga.PrintSemuaData2Click(Sender: TObject);
begin
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga');
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Semua Data');
projecttransaksi.Execute;
projectberobat.Close;
end;

procedure Tformlihatberobatkeluarga.dbgridpegCellClick(Column: TColumn);
begin
edgridno.Text:=queryrecord.FieldByName('No').AsString;
edgridnama.Text:=queryrecord.FieldByName('Nama_Keluarga').AsString;
memokel.Text:=queryrecord.FieldByName('keluhan').AsString;
memoanameaterimpin.Text:=queryrecord.FieldByName('Anamesa_Terimpin').AsString;
memopempen.Text:=queryrecord.FieldByName('Pemeriksaan_penunjang').AsString;
Memo1.Text:=queryrecord.FieldByName('Pemeriksaan_fisik').AsString;
memodiag.Text:=queryrecord.FieldByName('Diagnosa').AsString;
edtipe.Text:=queryrecord.FieldByName('Tipe_Penyakit').AsString;

end;

procedure Tformlihatberobatkeluarga.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
if edgridno.Text<>'' then
  begin
    Shape23.Visible:=true;
  end
else
  begin
    Shape23.Visible:=false;
  end;
if edgridnama.Text<>'' then
  begin
    Shape24.Visible:=true;
  end
else
  begin
    Shape24.Visible:=false;
  end;
if memokel.Text<>'' then
  begin
    Shape25.Visible:=true;
  end
else
  begin
    Shape25.Visible:=false;
  end;
if memoanameaterimpin.Text<>'' then
  begin
    Shape27.Visible:=true;
  end
else
  begin
    Shape27.Visible:=false;
  end;
if memopempen.Text<>'' then
  begin
    Shape29.Visible:=true;
  end
else
  begin
    Shape29.Visible:=false;
  end;
if Memo1.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
else
  begin
    Shape5.Visible:=false;
  end;
if memodiag.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if edtipe.Text<>'' then
  begin
    Shape9.Visible:=true;
  end
else
  begin
    Shape9.Visible:=false;
  end;


if ednoindukpeg.Text<>'' then
  begin
    Shape4.Visible:=true;
  end
else
begin
  Shape4.Visible:=false;
end;
if edpersonelpeg.Text<> '' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
  end;
if ednopeg.Text<>'' then
  begin
    Shape7.Visible:=true;
  end
else
  begin
    Shape7.Visible:=false;
  end;
if cbjk.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if ComboBox1.Text<>'' then
  begin
    Shape8.Visible:=true;
  end
else
  begin
    Shape8.Visible:=false;
  end;
if Edit1.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if ComboBox2.Text<>'' then
  begin
    Shape10.Visible:=true;
  end
else
  begin
    Shape10.Visible:=false;
  end;
if cbtipeobat.Text<>'' then
  begin
  Shape11.Visible:=true;
  end
else
  begin
    Shape11.Visible:=false;
  end;

end;

procedure Tformlihatberobatkeluarga.KeluarAplikasi2Click(Sender: TObject);
begin

Application.Terminate;

end;

procedure Tformlihatberobatkeluarga.RefreshField1Click(Sender: TObject);
begin
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
Edit1.Clear;
ComboBox2.Text:='';
cbtipeobat.Text:='';
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
Memo1.Clear;
edgridno.Clear;
edgridnama.Clear;
edtipe.Clear;
//
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
cbtipeobat.Clear;
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM master_tipe_obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
   cbtipeobat.Items.Add(qtipeobat['Tipe_Obat']);
   qtipeobat.Next;
end;
//
cbjk.Clear;
queryjk.Active:=true;
queryjk.Close;
queryjk.SQL.Clear;
queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
queryjk.ExecSQL;
queryjk.Open;
queryjk.first;
//
while not queryjk.Eof do
begin
  cbjk.Items.Add(queryjk['Jenis_Keluarga']);
  queryjk.Next;
end;
//
ComboBox1.Clear;
querystatustunjangan.Active:=true;
querystatustunjangan.Close;
querystatustunjangan.SQL.Clear;
querystatustunjangan.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
querystatustunjangan.ExecSQL;
querystatustunjangan.Open;
querystatustunjangan.First;
while not querystatustunjangan.Eof do
  begin
    ComboBox1.Items.Add(querystatustunjangan['Status_Tunjangan']);
    querystatustunjangan.Next;
  end;

end;

procedure Tformlihatberobatkeluarga.KembaliKeMenuAwal1Click(
  Sender: TObject);
begin
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
Edit1.Clear;
ComboBox2.Text:='';
cbtipeobat.Text:='';
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
Memo1.Clear;
edgridno.Clear;
edgridnama.Clear;
edtipe.Clear;
//
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
cbjk.Clear;
queryjk.Active:=true;
queryjk.Close;
queryjk.SQL.Clear;
queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
queryjk.ExecSQL;
queryjk.Open;
queryjk.first;
//
while not queryjk.Eof do
begin
  cbjk.Items.Add(queryjk['Jenis_Keluarga']);
  queryjk.Next;
end;
//
ComboBox1.Clear;
querystatustunjangan.Active:=true;
querystatustunjangan.Close;
querystatustunjangan.SQL.Clear;
querystatustunjangan.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
querystatustunjangan.ExecSQL;
querystatustunjangan.Open;
querystatustunjangan.First;
while not querystatustunjangan.Eof do
  begin
    ComboBox1.Items.Add(querystatustunjangan['Status_Tunjangan']);
    querystatustunjangan.Next;
  end;

fMainmenu.Show;
formlihatberobatkeluarga.Hide;
end;

procedure Tformlihatberobatkeluarga.LihatDataRecordPegawai1Click(
  Sender: TObject);
begin
formlihatberobatpegawai.Show;
formlihatberobatkeluarga.Hide;
end;

procedure Tformlihatberobatkeluarga.KeTransaksiRecord1Click(
  Sender: TObject);
begin
formpengobatan.Show;
formlihatberobatkeluarga.Hide;
end;

procedure Tformlihatberobatkeluarga.ednoindukpegEnter(Sender: TObject);
begin
ednoindukpeg.Text:='';
ednoindukpeg.Font.Color:=clBlue;
end;

procedure Tformlihatberobatkeluarga.ednoindukpegExit(Sender: TObject);
begin
if ednoindukpeg.Text<>'' then
  begin
     ednoindukpeg.Font.Color:=clBlue;
  end
else
  begin
    ednoindukpeg.Text:='Nomor Induk';
    ednoindukpeg.Font.Color:=clMedGray;
  end;
end;

function SetCueBanner(const Edit: TEdit;
const Placeholder: String): Boolean;
const
EM_SETCUEBANNER = $1501;
var
UniStr: WideString;
begin
UniStr := Placeholder;
SendMessage(Edit.Handle, EM_SETCUEBANNER, WParam(True),LParam(UniStr));
Result := GetLastError() = ERROR_SUCCESS;

end;
procedure Tformlihatberobatkeluarga.edpersonelpegEnter(Sender: TObject);
begin
edpersonelpeg.Text:='';
edpersonelpeg.Font.Color:=clBlue;
end;

procedure Tformlihatberobatkeluarga.edpersonelpegExit(Sender: TObject);
begin
if edpersonelpeg.Text<>'' then
  begin
     edpersonelpeg.Font.Color:=clBlue;
  end
else
  begin
    edpersonelpeg.Text:='Nomor Keluarga';
    edpersonelpeg.Font.Color:=clMedGray;
  end;
end;

procedure Tformlihatberobatkeluarga.ednopegExit(Sender: TObject);
begin
if ednopeg.Text<>'' then
  begin
     ednopeg.Font.Color:=clBlue;
  end
else
  begin
    ednopeg.Text:='Nama Keluarga';
    ednopeg.Font.Color:=clMedGray;
  end;
end;

procedure Tformlihatberobatkeluarga.ednopegEnter(Sender: TObject);
begin
ednopeg.Text:='';
ednopeg.Font.Color:=clBlue;
end;

procedure Tformlihatberobatkeluarga.Edit1Enter(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Font.Color:=clBlue;
end;

procedure Tformlihatberobatkeluarga.Edit1Exit(Sender: TObject);
begin
if Edit1.Text<>'' then
  begin
     Edit1.Font.Color:=clBlue;
  end
else
  begin
    Edit1.Text:='Nomor Record';
    Edit1.Font.Color:=clMedGray;
  end;
end;

procedure Tformlihatberobatkeluarga.KembaliKeMenu1Click(Sender: TObject);
begin
if lbllogin.Caption='Dokter' then
  begin
 ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
Edit1.Clear;
ComboBox2.Text:='';
cbtipeobat.Text:='';
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
Memo1.Clear;
edgridno.Clear;
edgridnama.Clear;
edtipe.Clear;
//
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
cbtipeobat.Clear;
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM master_tipe_obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
   cbtipeobat.Items.Add(qtipeobat['Tipe_Obat']);
   qtipeobat.Next;
end;
//
cbjk.Clear;
queryjk.Active:=true;
queryjk.Close;
queryjk.SQL.Clear;
queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
queryjk.ExecSQL;
queryjk.Open;
queryjk.first;
//
while not queryjk.Eof do
begin
  cbjk.Items.Add(queryjk['Jenis_Keluarga']);
  queryjk.Next;
end;
//
ComboBox1.Clear;
querystatustunjangan.Active:=true;
querystatustunjangan.Close;
querystatustunjangan.SQL.Clear;
querystatustunjangan.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
querystatustunjangan.ExecSQL;
querystatustunjangan.Open;
querystatustunjangan.First;
while not querystatustunjangan.Eof do
  begin
    ComboBox1.Items.Add(querystatustunjangan['Status_Tunjangan']);
    querystatustunjangan.Next;
  end;
    CobaTutupKoneksi;
    formawaldokter.Show;
    formlihatberobatkeluarga.Hide;
  end
else
  begin
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
Edit1.Clear;
ComboBox2.Text:='';
cbtipeobat.Text:='';
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
Memo1.Clear;
edgridno.Clear;
edgridnama.Clear;
edtipe.Clear;
//
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
cbtipeobat.Clear;
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM master_tipe_obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
   cbtipeobat.Items.Add(qtipeobat['Tipe_Obat']);
   qtipeobat.Next;
end;
//
cbjk.Clear;
queryjk.Active:=true;
queryjk.Close;
queryjk.SQL.Clear;
queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
queryjk.ExecSQL;
queryjk.Open;
queryjk.first;
//
while not queryjk.Eof do
begin
  cbjk.Items.Add(queryjk['Jenis_Keluarga']);
  queryjk.Next;
end;
//
ComboBox1.Clear;
querystatustunjangan.Active:=true;
querystatustunjangan.Close;
querystatustunjangan.SQL.Clear;
querystatustunjangan.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
querystatustunjangan.ExecSQL;
querystatustunjangan.Open;
querystatustunjangan.First;
while not querystatustunjangan.Eof do
  begin
    ComboBox1.Items.Add(querystatustunjangan['Status_Tunjangan']);
    querystatustunjangan.Next;
  end;

CobaTutupKoneksi;
formmenuberobat.Show;
formlihatberobatkeluarga.Hide;
end;
end;

procedure Tformlihatberobatkeluarga.KeluarAplikasi1Click(Sender: TObject);
begin
ADOConnection1.Connected:=false;
Application.Terminate;
end;

procedure Tformlihatberobatkeluarga.ransaksiBerobat1Click(Sender: TObject);
begin
ADOConnection1.Connected:=false;
formpengobatan.Show;
formlihatberobatkeluarga.Hide;
end;

procedure Tformlihatberobatkeluarga.dbgridbeliobatCellClick(
  Column: TColumn);
begin
edgridno.Text:=querybeliobat.FieldByName('No').AsString;
edgridnama.Text:=querybeliobat.FieldByName('Nama_Keluarga').AsString;
end;

procedure Tformlihatberobatkeluarga.dbgridjumlahtransCellClick(
  Column: TColumn);
begin
edgridnama.Text:=querytransaksikeluarga.FieldByName('Nama_Keluarga').AsString;

end;

procedure Tformlihatberobatkeluarga.PrintDataBerdasarkanNomorInduk1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nomor Induk :','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nomor_Induk='+QuotedStr(data));
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Nomor Induk :'+data);
projectberobat.Execute;
projectberobat.Close;

end;

procedure Tformlihatberobatkeluarga.PrintDataBerdasarkanNomorKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nomor Keluarga :','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where No_Keluarga='+data);
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Nomor Keluarga :'+data);
projectberobat.Execute;
projectberobat.Close;

end;

procedure Tformlihatberobatkeluarga.PrintDataBerdasarkanNamaKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nama Keluarga :','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nama_Keluarga='+QuotedStr(data));
queryrecord.ExecSQL;
queryrecord.Open;
projectberobat.Open;
projectberobat.SelectReport('Report',False);
projectberobat.SetParam('datastr','Berdasarkan Nama Keluarga :'+data);
projectberobat.Execute;
projectberobat.Close;
end;

procedure Tformlihatberobatkeluarga.PrintDataBerdasarkanJenisKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Jenis Keluarga :','');
queryrecord.Active:=true;
  queryrecord.Close;
  queryrecord.SQL.Clear;
  queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Jenis_Keluarga Like'+QuotedStr('%'+data+'%'));
  queryrecord.ExecSQL;
  queryrecord.Open;
  projectberobat.Open;
  projectberobat.SelectReport('Report',False);
  projectberobat.SetParam('datastr','Berdasarkan Jenis Keluarga :'+data);
  projectberobat.Execute;
  projectberobat.Close;
end;

procedure Tformlihatberobatkeluarga.cbtipeobatChange(Sender: TObject);
begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Tipe_Obat='+QuotedStr(cbtipeobat.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;

end;

procedure Tformlihatberobatkeluarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    CobaTutupKoneksi;
    Application.Terminate;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    end
else
  begin
    Abort;
  end;

end;

procedure Tformlihatberobatkeluarga.ednoindukpegChange(Sender: TObject);
begin
if (ednoindukpeg.Text='') or (ednoindukpeg.Font.Color=clMedGray) then
  begin
end
else
  begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nomor_Induk Like'+QuotedStr('%'+ednoindukpeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;

  end;
end;

procedure Tformlihatberobatkeluarga.edpersonelpegChange(Sender: TObject);
begin
if (edpersonelpeg.Text='') or (edpersonelpeg.Font.Color=clMedGray) then
  begin
end
else
  begin
  queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where No_Keluarga Like'+QuotedStr(edpersonelpeg.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where No_Keluarga Like'+QuotedStr(edpersonelpeg.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where No_Keluarga Like'+QuotedStr(edpersonelpeg.Text));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
end;
end;

procedure Tformlihatberobatkeluarga.ednopegChange(Sender: TObject);
begin
if (ednopeg.Text='') or (ednopeg.Font.Color=clMedGray) then
  begin
end
else
  begin
  queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+ednopeg.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+ednopeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+ednopeg.Text+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
end;

end;

procedure Tformlihatberobatkeluarga.Edit1Change(Sender: TObject);
begin
if (Edit1.Text='') or (Edit1.Font.Color=clMedGray) then
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga');
querybeliobat.ExecSQL;
querybeliobat.Open;
end
else
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT master_record_berobat.Nomor_induk, Query_Pasien_Keluarga.nama_keluarga, master_record_berobat.[No], Query_Pasien_Keluarga.tanggal_kahir, Query_Pasien_Keluarga.nomor_pasien,');
queryrecord.SQL.Add('Query_Pasien_Keluarga.status_tunjangan, Query_Pasien_Keluarga.kode_jenis_keluarga, Query_Pasien_Keluarga.No_Keluarga, Query_Pasien_Keluarga.jenis_keluarga, master_record_berobat.Keluhan,');
queryrecord.SQL.Add('master_record_berobat.Anamesa_terimpin, master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.Tanggal_Berobat, master_record_berobat.diagnosa,');
queryrecord.SQL.Add('master_record_berobat.Tipe_Penyakit');
queryrecord.SQL.Add('FROM master_record_berobat INNER JOIN Query_Pasien_Keluarga ON master_record_berobat.No_Keluarga = Query_Pasien_Keluarga.No_Keluarga where master_record_berobat.No Like'+QuotedStr(Edit1.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Keluarga.[No], master_keluarga.No_Keluarga, master_keluarga.nama_keluarga, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, Query_Pegawai_Keluarga.jenis_keluarga,');
querybeliobat.SQL.Add('master_keluarga.tanggal_kahir, Query_Pegawai_Keluarga.status_tunjangan, master_beli_obat.Sendok, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat, master_beli_obat.Jumlah_Beli, master_beli_obat.Hari,');
querybeliobat.SQL.Add('Query_Berobat_Keluarga.Nomor_induk, Query_Berobat_Keluarga.Tanggal_Berobat, Query_Berobat_Keluarga.Tipe_Penyakit');
querybeliobat.SQL.Add('FROM ((master_keluarga INNER JOIN Query_Pegawai_Keluarga ON master_keluarga.No_Keluarga = Query_Pegawai_Keluarga.No_Keluarga) INNER JOIN Query_Berobat_Keluarga ON master_keluarga.No_Keluarga =');
querybeliobat.SQL.Add('Query_Berobat_Keluarga.No_Keluarga) INNER JOIN master_beli_obat ON Query_Berobat_Keluarga.[No] = master_beli_obat.[No] where Query_Berobat_Keluarga.[No] Like'+QuotedStr(Edit1.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;

end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorInduk1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nomor_Induk Like'+QuotedStr(data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;


procedure Tformlihatberobatkeluarga.ExportSemuaData1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
begin
    queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;


procedure Tformlihatberobatkeluarga.ExportBerdsarkanNomorKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Keluarga :','Export Data','');
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where No_Keluarga Like'+QuotedStr(data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNamaKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
  queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdsarkanJenisKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Jenis Keluarga :','Export Data','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Jenis_Keluarga Like'+QuotedStr(data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanStatusTunjangan1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Jenis Keluarga :','Export Data','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Status_Tunjangan Like'+QuotedStr('%'+data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorRecord1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Record :','Export Data','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT master_record_berobat.Nomor_induk, Query_Pasien_Keluarga.nama_keluarga, master_record_berobat.[No], Query_Pasien_Keluarga.tanggal_kahir, Query_Pasien_Keluarga.nomor_pasien,');
queryrecord.SQL.Add('Query_Pasien_Keluarga.status_tunjangan, Query_Pasien_Keluarga.kode_jenis_keluarga, Query_Pasien_Keluarga.No_Keluarga, Query_Pasien_Keluarga.jenis_keluarga, master_record_berobat.Keluhan,');
queryrecord.SQL.Add('master_record_berobat.Anamesa_terimpin, master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.Tanggal_Berobat, master_record_berobat.diagnosa,');
queryrecord.SQL.Add('master_record_berobat.Tipe_Penyakit');
queryrecord.SQL.Add('FROM master_record_berobat INNER JOIN Query_Pasien_Keluarga ON master_record_berobat.No_Keluarga = Query_Pasien_Keluarga.No_Keluarga where master_record_berobat.No Like'+QuotedStr(data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanTipePasien1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Tipe Penyakit :','Export Data','');
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga where Tipe_Penyakit Like'+QuotedStr(data+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryrecord.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryrecord.Fields[filName].FieldName;
   end;
//
if queryrecord.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryrecord.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to queryrecord.RecordCount-1 do
begin
  for c:=0 to queryrecord.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryrecord.Fields[c].AsString;
  end;
 queryrecord.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryrecord.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportSemuaData3Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nomor Record :','Export Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga ');
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querytransaksikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querytransaksikeluarga.Fields[filName].FieldName;
   end;
//
if querytransaksikeluarga.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorInduk3Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nomor_Induk Like'+QuotedStr(data+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querytransaksikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querytransaksikeluarga.Fields[filName].FieldName;
   end;
//
if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorKeluarga2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Keluarga :','Export Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where No_Keluarga Like'+QuotedStr(data));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querytransaksikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querytransaksikeluarga.Fields[filName].FieldName;
   end;
//
if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNamaKeluarga3Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+data+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querytransaksikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querytransaksikeluarga.Fields[filName].FieldName;
   end;
//
if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanJenisKeluarga2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Jenis Keluarga :','Export Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Jenis_Keluarga Like'+QuotedStr('%'+data+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querytransaksikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querytransaksikeluarga.Fields[filName].FieldName;
   end;
//
if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanStatusTunjangan2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
 data:=InputBox('Silahkan Masukkan Status Tunjangan :','Export Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Status_Tunjangan Like'+QuotedStr(data+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querytransaksikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querytransaksikeluarga.Fields[filName].FieldName;
   end;
//
if querytransaksikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querytransaksikeluarga.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querytransaksikeluarga.RecordCount-1 do
begin
  for c:=0 to querytransaksikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querytransaksikeluarga.Fields[c].AsString;
  end;
 querytransaksikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querytransaksikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorInduk2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Tipe Pasien :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nomor_Induk Like'+QuotedStr('%'+data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
begin
  MessageDlg('Data yang Ingin Diexport Tidak Ditemukan',mtError,[mbOK],1);
end
else if querybeliobat.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Keluarga :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where No_Keluarga Like'+QuotedStr(data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
begin
  MessageDlg('Data yang Ingin Diexport Tidak Ditemukan',mtError,[mbOK],1);
end
else if querybeliobat.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNamaKeluarga2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
begin
  MessageDlg('Data yang Ingin Diexport Tidak Ditemukan',mtError,[mbOK],1);
end
else if querybeliobat.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanJenisKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Jenis Keluarga :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Jenis_Keluarga Like'+QuotedStr('%'+data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
begin
  MessageDlg('Data yang Ingin Diexport Tidak Ditemukan',mtError,[mbOK],1);
end
else if querybeliobat.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportBerdasarkanNomorRecordBerobat1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Record Berobat :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Keluarga.[No], master_keluarga.No_Keluarga, master_keluarga.nama_keluarga, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, Query_Pegawai_Keluarga.jenis_keluarga,');
querybeliobat.SQL.Add('master_keluarga.tanggal_kahir, Query_Pegawai_Keluarga.status_tunjangan, master_beli_obat.Sendok, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat, master_beli_obat.Jumlah_Beli, master_beli_obat.Hari,');
querybeliobat.SQL.Add('Query_Berobat_Keluarga.Nomor_induk, Query_Berobat_Keluarga.Tanggal_Berobat, Query_Berobat_Keluarga.Tipe_Penyakit');
querybeliobat.SQL.Add('FROM ((master_keluarga INNER JOIN Query_Pegawai_Keluarga ON master_keluarga.No_Keluarga = Query_Pegawai_Keluarga.No_Keluarga) INNER JOIN Query_Berobat_Keluarga ON master_keluarga.No_Keluarga =');
querybeliobat.SQL.Add('Query_Berobat_Keluarga.No_Keluarga) INNER JOIN master_beli_obat ON Query_Berobat_Keluarga.[No] = master_beli_obat.[No] where Query_Berobat_Keluarga.[No] Like'+QuotedStr(data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
begin
  MessageDlg('Data yang Ingin Diexport Tidak Ditemukan',mtError,[mbOK],1);
end
else if querybeliobat.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.ExportSemuaData2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nomor Record Berobat :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga ');
querybeliobat.ExecSQL;
querybeliobat.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
begin
  MessageDlg('Data yang Ingin Diexport Tidak Ditemukan',mtError,[mbOK],1);
end
else if querybeliobat.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanNomorInduk2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk','Print Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nomor_Induk='+QuotedStr(data));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Nomor Induk :'+data);
projecttransaksi.Execute;
projectberobat.Close;

end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanNomorKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Keluarga','Print Data','');
 querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where No_Keluarga='+data);
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Nomor Keluarga :'+data);
projecttransaksi.Execute;
projectberobat.Close;

end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanNamaKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluraga','Print Data','');
querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Nama_Keluarga Like'+QuotedStr('%'+data+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Nama Keluarga :'+data);
projecttransaksi.Execute;
projectberobat.Close;

end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanJenisKeluarga2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Silahkan Masukkan Jenis Keluarga :','Print Data','');
  querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Jenis_Keluarga Like'+QuotedStr('%'+data+'%'));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Jenis Keluarga :'+data);
projecttransaksi.Execute;
projectberobat.Close;
end;

procedure Tformlihatberobatkeluarga.PrintBerdasarkanStatusTunjangan1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Silahkan Masukkan Status Tunjangan','Print Data','');
    querytransaksikeluarga.Active:=true;
querytransaksikeluarga.Close;
querytransaksikeluarga.SQL.Clear;
querytransaksikeluarga.SQL.Add('SELECT * FROM Query_Transaksi_Keluarga where Status_Tunjangan='+QuotedStr(data));
querytransaksikeluarga.ExecSQL;
querytransaksikeluarga.Open;
projecttransaksi.Open;
projecttransaksi.SelectReport('Report',False);
projecttransaksi.SetParam('datastr','Print Berdasarkan Status Tunjangan :'+data);
projecttransaksi.Execute;
projectberobat.Close;
end;

procedure Tformlihatberobatkeluarga.FormActivate(Sender: TObject);
begin
if ADOConnection1.Connected=true then
  begin
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM master_tipe_obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
cbtipeobat.Clear;
while not qtipeobat.Eof do
  begin
   cbtipeobat.Items.Add(qtipeobat['Tipe_Obat']);
   qtipeobat.Next;
end;
//
querybeliobat.Active:=true;
querytransaksikeluarga.Active:=true;
queryjk.Active:=true;
querystatustunjangan.Active:=true;
queryrecord.Active:=true;
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Query_Berobat_Keluarga');
queryrecord.ExecSQL;
queryrecord.Open;
//
queryjk.Active:=true;
queryjk.Close;
queryjk.SQL.Clear;
queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
queryjk.ExecSQL;
queryjk.Open;
queryjk.first;
//
cbjk.Clear;
while not queryjk.Eof do
begin
  cbjk.Items.Add(queryjk['Jenis_Keluarga']);
  queryjk.Next;
end;
//
querystatustunjangan.Active:=true;
querystatustunjangan.Close;
querystatustunjangan.SQL.Clear;
querystatustunjangan.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
querystatustunjangan.ExecSQL;
querystatustunjangan.Open;
querystatustunjangan.First;
ComboBox1.Clear;
while not querystatustunjangan.Eof do
  begin
    ComboBox1.Items.Add(querystatustunjangan['Status_Tunjangan']);
    querystatustunjangan.Next;
  end;
  RadioButton1Click(Sender);
  end
else if ADOConnection1.Connected=False then
  begin
    ADOConnection1.Connected:=false;
  end
else
  begin
    MessageDlg('Terjadi Kesalahan Koneksi Data,Harap Reset Program',mtError,[mbYes],1);
    Application.Terminate;
  end;


end;

procedure Tformlihatberobatkeluarga.TutupKoneksi;
begin
queryrecord.Active:=false;
querybeliobat.Active:=false;
querytransaksikeluarga.Active:=false;
queryjk.Active:=false;
querystatustunjangan.Active:=false;
ADOConnection1.Connected:=false;

end;

procedure Tformlihatberobatkeluarga.Image21Click(Sender: TObject);
begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Keluarga where Tipe_Obat='+QuotedStr(cbtipeobat.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
projectbeli.SelectReport('Report',False);
projectbeli.SetParam('datastr','Berdasarkan Tipe Obat :'+cbtipeobat.Text);
projectbeli.Execute;
projectbeli.Close;

end;

procedure Tformlihatberobatkeluarga.CobaTutupKoneksi;
begin
  ADOConnection1.Connected:=false;
  queryrecord.Active:=false;
  querybeliobat.Active:=false;
  querytransaksikeluarga.Active:=false;
  queryjk.Active:=false;
  querystatustunjangan.Active:=false;
  qtipeobat.Active:=false;
end;
procedure Tformlihatberobatkeluarga.btnlihatdatapegClick(Sender: TObject);
begin
CobaTutupKoneksi;
KembaliKeMenu1Click(Sender);
formlihatberobatpegawai.ADOConnection1.Connected:=true;
formlihatberobatpegawai.querypegawai.Active:=true;
formlihatberobatpegawai.queryunit.Active:=true;
formlihatberobatpegawai.queryobat.Active:=true;
formlihatberobatpegawai.querybeliobat.Active:=true;
formlihatberobatpegawai.queryjumlahtrans.Active:=true;
formlihatberobatpegawai.qtipeobat.Active:=true;
formlihatberobatpegawai.Show;
formlihatberobatkeluarga.Hide;
end;

procedure Tformlihatberobatkeluarga.ednoindukpegKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image13Click(Sender);
end;

procedure Tformlihatberobatkeluarga.edpersonelpegKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image14Click(Sender);
end;

procedure Tformlihatberobatkeluarga.ednopegKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image12Click(Sender);

end;

procedure Tformlihatberobatkeluarga.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image7Click(Sender);
end;

end.