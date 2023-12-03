object Form6: TForm6
  Left = 2059
  Top = 156
  Width = 1096
  Height = 525
  Caption = 'WAR NET - Operator'
  Color = clGradientInactiveCaption
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
    Left = 56
    Top = 32
    Width = 134
    Height = 31
    Caption = 'WAR NET '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 56
    Top = 88
    Width = 489
    Height = 329
    Caption = 'Data Operator'
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 20
      Height = 13
      Caption = 'Telp'
    end
    object Label4: TLabel
      Left = 24
      Top = 72
      Width = 33
      Height = 13
      Caption = 'Alamat'
    end
    object Label5: TLabel
      Left = 24
      Top = 96
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object Label6: TLabel
      Left = 24
      Top = 120
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 200
      Width = 473
      Height = 120
      DataSource = ds1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
    end
    object edtNama: TEdit
      Left = 88
      Top = 24
      Width = 288
      Height = 21
      TabOrder = 1
    end
    object edtTelp: TEdit
      Left = 88
      Top = 48
      Width = 288
      Height = 21
      TabOrder = 2
    end
    object edtAlamat: TEdit
      Left = 88
      Top = 72
      Width = 288
      Height = 21
      TabOrder = 3
    end
    object edtUsername: TEdit
      Left = 88
      Top = 96
      Width = 288
      Height = 21
      TabOrder = 4
    end
    object edtPassword: TEdit
      Left = 88
      Top = 120
      Width = 288
      Height = 21
      TabOrder = 5
    end
    object BtnTambah: TButton
      Left = 400
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 6
      OnClick = BtnTambahClick
    end
    object BtnSimpan: TButton
      Left = 400
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 7
      OnClick = BtnSimpanClick
    end
    object BtnUbah: TButton
      Left = 400
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 8
      OnClick = BtnUbahClick
    end
    object BtnHapus: TButton
      Left = 400
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 9
      OnClick = BtnHapusClick
    end
    object BtnCetak: TButton
      Left = 400
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 10
      OnClick = BtnCetakClick
    end
    object BtnBersih: TButton
      Left = 16
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 11
      OnClick = BtnBersihClick
    end
  end
  object BtnClose: TButton
    Left = 8
    Top = 8
    Width = 25
    Height = 25
    Caption = '<'
    TabOrder = 1
    OnClick = BtnCloseClick
  end
  object grp2: TGroupBox
    Left = 552
    Top = 88
    Width = 489
    Height = 329
    Caption = 'Billing Setting'
    TabOrder = 2
    object Label7: TLabel
      Left = 24
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Waktu'
    end
    object Label8: TLabel
      Left = 24
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Harga'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 200
      Width = 473
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
    object edtWaktu: TEdit
      Left = 88
      Top = 32
      Width = 288
      Height = 21
      TabOrder = 1
    end
    object edtHarga: TEdit
      Left = 88
      Top = 56
      Width = 288
      Height = 21
      TabOrder = 2
    end
    object BtnBTambah: TButton
      Left = 400
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 3
      OnClick = BtnBTambahClick
    end
    object BtnBSimpan: TButton
      Left = 400
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 4
      OnClick = BtnBSimpanClick
    end
    object BtnBUbah: TButton
      Left = 400
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 5
      OnClick = BtnBUbahClick
    end
    object BtnBHapus: TButton
      Left = 400
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 6
      OnClick = BtnBHapusClick
    end
    object BtnBCetak: TButton
      Left = 400
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 7
      OnClick = BtnBCetakClick
    end
    object BtnBBersih: TButton
      Left = 16
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 8
      OnClick = BtnBersihClick
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
    Left = 208
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from operator')
    Params = <>
    Left = 240
    Top = 32
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 272
    Top = 32
  end
  object frxreport2: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45263.050164294000000000
    ReportOptions.LastChange = 45263.059555648150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 32
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo13: TfrxMemoView
          Left = 321.260050000000000000
          Top = 30.236240000000000000
          Width = 449.764070000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA OPERATOR')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 1122.520410000000000000
        object Memo7: TfrxMemoView
          Left = 117.165430000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 154.960730000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 328.819110000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TELP')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 472.441250000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 706.772110000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 854.173780000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'PASSWORD')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 1122.520410000000000000
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 117.165430000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 328.819110000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbdtst1."telp"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 472.441250000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 706.772110000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'username'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbdtst1."username"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 854.173780000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'password'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbdtst1."password"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 71.811070000000000000
        Top = 294.803340000000000000
        Width = 1122.520410000000000000
        object Memo14: TfrxMemoView
          Left = 521.575140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 1016.693570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 336
    Top = 32
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
    Left = 552
    Top = 40
  end
  object zqry2: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from billing')
    Params = <>
    Left = 584
    Top = 40
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 616
    Top = 40
  end
  object frxdbdtst2: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds2
    Left = 712
    Top = 40
  end
  object frxreport3: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45263.075071111100000000
    ReportOptions.LastChange = 45263.078395960650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 656
    Top = 40
    Datasets = <
      item
        DataSet = frxdbdtst2
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo7: TfrxMemoView
          Left = 207.874150000000000000
          Top = 34.015770000000000000
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
            'LAPORAN DATA BILLING')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'WAKTU')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 415.748300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst2
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 128.504020000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 170.078850000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'waktu'
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."waktu"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 415.748300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."harga"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 113.385900000000000000
        Top = 298.582870000000000000
        Width = 793.701300000000000000
        object Memo8: TfrxMemoView
          Left = 377.953000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 665.197280000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
    end
  end
end
