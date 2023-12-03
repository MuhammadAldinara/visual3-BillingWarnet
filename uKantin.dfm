object Form11: TForm11
  Left = 2135
  Top = 173
  Width = 555
  Height = 480
  Caption = 'USER KANTIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 127
    Height = 31
    Caption = 'WAR NET'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 25
    Height = 25
    Caption = '<'
    TabOrder = 0
    OnClick = Button1Click
  end
  object grp1: TGroupBox
    Left = 48
    Top = 88
    Width = 465
    Height = 329
    Caption = 'Kantin'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 26
      Height = 13
      Caption = 'USER'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 139
      Height = 13
      Caption = 'NAMA MAKANAN / MINUMAN'
    end
    object Label4: TLabel
      Left = 16
      Top = 96
      Width = 35
      Height = 13
      Caption = 'HARGA'
    end
    object Label5: TLabel
      Left = 16
      Top = 120
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 200
      Width = 449
      Height = 120
      DataSource = ds2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
    end
    object edtUser: TEdit
      Left = 168
      Top = 48
      Width = 176
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edtKantin: TEdit
      Left = 168
      Top = 72
      Width = 176
      Height = 21
      TabOrder = 2
    end
    object BtnPesan: TButton
      Left = 368
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Pesan'
      TabOrder = 3
      OnClick = BtnPesanClick
    end
    object edtHarga: TEdit
      Left = 168
      Top = 96
      Width = 176
      Height = 21
      TabOrder = 4
    end
    object dtp1: TDateTimePicker
      Left = 168
      Top = 120
      Width = 177
      Height = 21
      Date = 45253.751565231480000000
      Time = 45253.751565231480000000
      Enabled = False
      TabOrder = 5
    end
    object pnl1: TPanel
      Left = 8
      Top = 176
      Width = 449
      Height = 25
      Color = clActiveCaption
      TabOrder = 6
      object Label6: TLabel
        Left = 72
        Top = 8
        Width = 311
        Height = 13
        Caption = 'KLIK MAKANAN / MINUMAN DIBAWAH YANG DIINGINKAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
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
    Left = 288
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from transaksi_kantin')
    Params = <>
    Left = 320
    Top = 8
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 352
    Top = 8
  end
  object con2: TZConnection
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
    Left = 288
    Top = 40
  end
  object zqry2: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select id_kantin, nama_makananMinuman, harga from kantin')
    Params = <>
    Left = 320
    Top = 40
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 352
    Top = 40
  end
  object tmr1: TTimer
    Interval = 2
    OnTimer = tmr1Timer
    Left = 424
    Top = 32
  end
  object tmr2: TTimer
    OnTimer = tmr2Timer
    Left = 464
    Top = 32
  end
end
