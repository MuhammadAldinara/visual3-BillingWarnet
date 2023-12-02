object Form1: TForm1
  Left = 2221
  Top = 207
  Width = 250
  Height = 238
  Caption = 'WAR NET'
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
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 217
    Height = 153
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 16
      Width = 122
      Height = 33
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 128
      Width = 44
      Height = 13
      Caption = '00:00:00'
    end
    object Label3: TLabel
      Left = 144
      Top = 128
      Width = 56
      Height = 13
      Caption = '12/12/2012'
    end
  end
  object dbgrd: TDBGrid
    Left = 24
    Top = 80
    Width = 177
    Height = 41
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 144
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Logout'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Kantin'
    TabOrder = 3
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 200
    Top = 8
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
    Left = 200
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select id_user, username from user')
    Params = <>
    Left = 200
    Top = 64
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 200
    Top = 80
  end
  object tmr2: TTimer
    OnTimer = tmr2Timer
    Left = 200
    Top = 24
  end
end
