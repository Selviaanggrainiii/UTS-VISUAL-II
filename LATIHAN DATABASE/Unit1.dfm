object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'INFORMASI JADWAL PRAKTIKUM'
  ClientHeight = 705
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 735
    Top = 8
    Width = 147
    Height = 73
    Caption = 'TAMPILKAN DATA GRAFIK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Chart1: TChart
    Left = 40
    Top = 344
    Width = 842
    Height = 321
    Title.Text.Strings = (
      'TChart')
    View3D = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 104
    Width = 842
    Height = 217
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 479
    Top = 8
    Width = 122
    Height = 73
    Caption = 'LOAD DATA'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 311
    Top = 8
    Width = 162
    Height = 73
    Caption = 'TAMPILKAN DATA BARU'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 607
    Top = 8
    Width = 122
    Height = 73
    Caption = 'PRINT'
    TabOrder = 5
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\heartbeat\' +
      'visual\rullah\LATIHAN DATABASE\jadwal.mdb;Persist Security Info=' +
      'False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 96
    Top = 8
  end
end
