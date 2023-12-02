object Form1: TForm1
  Left = 620
  Top = 256
  Width = 420
  Height = 474
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 48
    Width = 86
    Height = 23
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 32
    Width = 6
    Height = 13
    Caption = '2'
  end
  object Label3: TLabel
    Left = 88
    Top = 112
    Width = 44
    Height = 13
    Caption = '01:30:00'
  end
  object Button1: TButton
    Left = 208
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 216
    Top = 72
    Width = 75
    Height = 25
    Caption = '00:30:00'
    TabOrder = 1
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 216
    Top = 104
    Width = 75
    Height = 25
    Caption = '01:00:00'
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button2: TButton
    Left = 56
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 3
    OnClick = Button2Click
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 256
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Button3: TButton
    Left = 176
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Billing'
    TabOrder = 5
    OnClick = Button3Click
  end
  object edt1: TEdit
    Left = 40
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 16
    Top = 32
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'billing_warnet'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'E:\KULIAH\Semester 5\pemrograman visual 3\tugas\Billing Warnet\l' +
      'ibmysql.dll'
    Left = 320
    Top = 56
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from billing')
    Params = <>
    Left = 320
    Top = 112
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 328
    Top = 176
  end
end
