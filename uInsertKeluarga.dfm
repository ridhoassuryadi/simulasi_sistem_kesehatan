object ftransaksikeluarga: Tftransaksikeluarga
  Left = 152
  Top = 168
  Width = 958
  Height = 521
  Caption = 'Transaksi Keluarga'
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 61
    Height = 13
    Caption = 'Nomor Induk'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 73
    Height = 13
    Caption = 'Nama Keluarga'
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 97
    Height = 13
    Caption = 'Kode Jenis Keluarga'
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 65
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label5: TLabel
    Left = 16
    Top = 176
    Width = 110
    Height = 13
    Caption = 'Kode status Tunjangan'
  end
  object DBGrid1: TDBGrid
    Left = 576
    Top = 32
    Width = 537
    Height = 97
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object txttanggallahir: TEdit
    Left = 152
    Top = 144
    Width = 217
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object txtkodest: TEdit
    Left = 152
    Top = 176
    Width = 217
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object btnsimpan: TButton
    Left = 384
    Top = 48
    Width = 81
    Height = 41
    Caption = 'Simpan Data'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 384
    Top = 96
    Width = 81
    Height = 41
    Caption = 'Hapus Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 144
    Width = 81
    Height = 41
    Caption = 'Refresh Data'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 472
    Top = 48
    Width = 81
    Height = 41
    Caption = 'Cari Data'
    TabOrder = 6
  end
  object Button4: TButton
    Left = 472
    Top = 96
    Width = 81
    Height = 41
    Caption = 'Print Data'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button5: TButton
    Left = 472
    Top = 144
    Width = 81
    Height = 41
    Caption = 'Log out'
    TabOrder = 8
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 56
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=data.md' +
      'b;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'master_keluarga'
    Left = 96
  end
end
