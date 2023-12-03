object Form5: TForm5
  Left = 2094
  Top = 158
  Width = 957
  Height = 554
  Caption = 'WAR NET - USER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 113
    Height = 25
    Caption = 'WAR NET'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Vogue'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 840
    Top = 56
    Width = 51
    Height = 13
    Caption = 'Operator :'
  end
  object grp1: TGroupBox
    Left = 552
    Top = 144
    Width = 345
    Height = 336
    Caption = 'Tambah Billing'
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 31
      Height = 13
      Caption = 'Waktu'
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 29
      Height = 13
      Caption = 'Harga'
    end
    object Label10: TLabel
      Left = 8
      Top = 56
      Width = 53
      Height = 13
      Caption = 'Sisa Waktu'
    end
    object edtUsernameB: TEdit
      Left = 64
      Top = 32
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object edtWaktu: TEdit
      Left = 64
      Top = 104
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 169
      Width = 321
      Height = 152
      DataSource = ds1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
    end
    object Button1: TButton
      Left = 232
      Top = 104
      Width = 97
      Height = 49
      Caption = 'Tambah'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 232
      Top = 32
      Width = 97
      Height = 25
      Caption = 'Cari User'
      TabOrder = 4
      OnClick = Button2Click
    end
    object edtHarga: TEdit
      Left = 64
      Top = 128
      Width = 153
      Height = 21
      TabOrder = 5
    end
    object edtSisa: TEdit
      Left = 64
      Top = 56
      Width = 153
      Height = 21
      TabOrder = 6
    end
  end
  object grp2: TGroupBox
    Left = 24
    Top = 144
    Width = 521
    Height = 336
    Caption = 'User'
    TabOrder = 1
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Nama'
    end
    object Label6: TLabel
      Left = 24
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object Label7: TLabel
      Left = 24
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label8: TLabel
      Left = 24
      Top = 104
      Width = 26
      Height = 13
      Caption = 'Billing'
    end
    object Label9: TLabel
      Left = 24
      Top = 128
      Width = 24
      Height = 13
      Caption = 'Jenis'
    end
    object edtNama: TEdit
      Left = 96
      Top = 32
      Width = 305
      Height = 21
      TabOrder = 0
    end
    object edtUsername: TEdit
      Left = 96
      Top = 56
      Width = 305
      Height = 21
      TabOrder = 1
    end
    object edtPassword: TEdit
      Left = 96
      Top = 80
      Width = 305
      Height = 21
      TabOrder = 2
    end
    object edtBilling: TEdit
      Left = 96
      Top = 104
      Width = 305
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '00:00:00'
    end
    object dbgrd2: TDBGrid
      Left = 8
      Top = 200
      Width = 505
      Height = 120
      DataSource = ds2
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd2CellClick
    end
    object BtnTambah: TButton
      Left = 424
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 5
      OnClick = BtnTambahClick
    end
    object BtnSimpan: TButton
      Left = 424
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 6
      OnClick = BtnSimpanClick
    end
    object BtnUbah: TButton
      Left = 424
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 7
      OnClick = BtnUbahClick
    end
    object BtnHapus: TButton
      Left = 424
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 8
      OnClick = BtnHapusClick
    end
    object BtnCetak: TButton
      Left = 424
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 9
      OnClick = BtnCetakClick
    end
    object cmbJenis: TComboBox
      Left = 96
      Top = 128
      Width = 306
      Height = 21
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        'nonmember'
        'member')
    end
    object Button3: TButton
      Left = 8
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 11
      OnClick = Button3Click
    end
  end
  object dbgrd3: TDBGrid
    Left = 592
    Top = 72
    Width = 305
    Height = 65
    DataSource = ds4
    Enabled = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 168
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from billing')
    Params = <>
    Left = 200
    Top = 72
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 232
    Top = 72
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
    Left = 168
    Top = 16
  end
  object zqry2: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 200
    Top = 16
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 232
    Top = 16
  end
  object mm1: TMainMenu
    Left = 280
    Top = 16
    object WarNet1: TMenuItem
      Caption = 'WarNet'
      object User1: TMenuItem
        Caption = 'User'
        OnClick = User1Click
      end
      object Operator1: TMenuItem
        Caption = 'Operator'
        OnClick = Operator1Click
      end
      object ransaksi1: TMenuItem
        Caption = 'Transaksi'
        OnClick = ransaksi1Click
      end
      object Inventaris1: TMenuItem
        Caption = 'Inventaris'
        OnClick = Inventaris1Click
      end
      object Kantin1: TMenuItem
        Caption = 'Kantin'
        OnClick = Kantin1Click
      end
    end
    object Profil1: TMenuItem
      Caption = 'Profil'
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      object Yes1: TMenuItem
        Caption = 'Yes'
        OnClick = Yes1Click
      end
      object No1: TMenuItem
        Caption = 'No'
      end
    end
  end
  object frxreport2: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45262.700870046300000000
    ReportOptions.LastChange = 45262.707474131940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 16
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Left = 362.834880000000000000
          Top = 22.677180000000000000
          Width = 370.393940000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA USER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 124.724490000000000000
        Width = 1122.520410000000000000
        object Memo8: TfrxMemoView
          Left = 128.504020000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 170.078850000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Width = 150.997727670000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 586.377566990000000000
          Width = 150.997727670000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PASSWORD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 735.834127090000000000
          Width = 112.505232820000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'BILLING')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 848.265970970000000000
          Width = 134.411829030000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'JENIS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 128.504020000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 170.078850000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 434.645950000000000000
          Width = 150.997727670000000000
          Height = 18.897650000000000000
          DataField = 'username'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."username"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 586.377566990000000000
          Width = 150.997727670000000000
          Height = 18.897650000000000000
          DataField = 'password'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."password"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 735.834127090000000000
          Width = 112.505232820000000000
          Height = 18.897650000000000000
          DataField = 'billing'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."billing"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 848.265970970000000000
          Width = 134.411829030000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds2
    Left = 360
    Top = 16
  end
  object con3: TZConnection
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
    Left = 280
    Top = 72
  end
  object zqry3: TZQuery
    Connection = con3
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 312
    Top = 72
  end
  object ds3: TDataSource
    DataSet = zqry3
    Left = 344
    Top = 72
  end
  object con4: TZConnection
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
    Left = 384
    Top = 72
  end
  object zqry4: TZQuery
    Connection = con4
    Active = True
    SQL.Strings = (
      'select * from operator')
    Params = <>
    Left = 416
    Top = 72
  end
  object ds4: TDataSource
    DataSet = zqry4
    Left = 448
    Top = 72
  end
end
