object formstatunit: Tformstatunit
  Left = 234
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Aplikasi Polklinik'
  ClientHeight = 530
  ClientWidth = 979
  Color = clHighlight
  Constraints.MaxHeight = 569
  Constraints.MaxWidth = 995
  Constraints.MinHeight = 569
  Constraints.MinWidth = 995
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 539
    Height = 42
    Caption = 'Statistik Banyak Unit Melakukan Transaksi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -35
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object DBChart1: TDBChart
    Left = -8
    Top = 104
    Width = 617
    Height = 425
    BackWall.Brush.Color = clWhite
    Title.Text.Strings = (
      'Statis Jumlah Pengobatan Unit')
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    TabOrder = 0
    object Series1: THorizBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 20
      Marks.Visible = True
      DataSource = ADOQuery1
      SeriesColor = 65408
      XLabelsSource = 'Kode_Unit'
      XValues.DateTime = False
      XValues.Name = 'Bar'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loNone
      XValues.ValueSource = 'Jumlah_Transaksi'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loAscending
      YValues.ValueSource = 'Jumlah_Transaksi'
    end
  end
  object DBGrid1: TDBGrid
    Left = 608
    Top = 104
    Width = 369
    Height = 425
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kode_unit'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Unit'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_unit'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Unit'
        Width = 300
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Persist Se' +
      'curity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Query_Jumlah_Trans_Unit'
      '')
    Left = 16
    Top = 32
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Master_Unit')
    Left = 40
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 88
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 600
    Top = 24
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
    object KembaliKeMenuAwal1: TMenuItem
      Caption = 'Kembali Ke Menu Awal'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 280
    Top = 16
    object RefreshData1: TMenuItem
      Caption = 'Refresh Data'
      OnClick = RefreshData1Click
    end
    object utup1: TMenuItem
      Caption = 'Tutup'
      OnClick = utup1Click
    end
  end
end
