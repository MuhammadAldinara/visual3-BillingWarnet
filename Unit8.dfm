object Form8: TForm8
  Left = 2285
  Top = 161
  Width = 1025
  Height = 505
  Caption = 'WAR NET - TRANSAKSI'
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
    Left = 48
    Top = 40
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
    Top = 8
    Width = 25
    Height = 25
    Caption = '<'
    TabOrder = 0
    OnClick = Button1Click
  end
  object grp1: TGroupBox
    Left = 48
    Top = 80
    Width = 457
    Height = 345
    Caption = 'Transaksi'
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 32
      Width = 28
      Height = 13
      Caption = 'ID OP'
    end
    object Label3: TLabel
      Left = 24
      Top = 56
      Width = 40
      Height = 13
      Caption = 'ID USER'
    end
    object Label4: TLabel
      Left = 24
      Top = 80
      Width = 52
      Height = 13
      Caption = 'ID BILLING'
    end
    object Label5: TLabel
      Left = 24
      Top = 104
      Width = 77
      Height = 13
      Caption = 'TGL TRANSAKSI'
    end
    object BtnSimpan: TButton
      Left = 374
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = BtnSimpanClick
    end
    object BtnTambah: TButton
      Left = 374
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 1
      OnClick = BtnTambahClick
    end
    object BtnUbah: TButton
      Left = 374
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 2
      OnClick = BtnUbahClick
    end
    object BtnHapus: TButton
      Left = 374
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 3
      OnClick = BtnHapusClick
    end
    object BtnCetak: TButton
      Left = 374
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 4
      OnClick = BtnCetakClick
    end
    object Button2: TButton
      Left = 8
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 5
      OnClick = Button2Click
    end
    object edtOP: TEdit
      Left = 112
      Top = 32
      Width = 243
      Height = 21
      TabOrder = 6
    end
    object edtUser: TEdit
      Left = 112
      Top = 56
      Width = 243
      Height = 21
      TabOrder = 7
    end
    object edtBilling: TEdit
      Left = 112
      Top = 80
      Width = 243
      Height = 21
      TabOrder = 8
    end
    object dtp1: TDateTimePicker
      Left = 112
      Top = 104
      Width = 241
      Height = 21
      Date = 45290.488125833330000000
      Time = 45290.488125833330000000
      TabOrder = 9
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 200
      Width = 441
      Height = 137
      DataSource = ds1
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
    end
  end
  object grp2: TGroupBox
    Left = 518
    Top = 80
    Width = 457
    Height = 345
    Caption = 'Transaksi Kantin'
    TabOrder = 2
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object BtnHapusK: TButton
      Left = 80
      Top = 48
      Width = 145
      Height = 25
      Caption = 'Hapus'
      TabOrder = 0
      OnClick = BtnHapusKClick
    end
    object BtnCetakK: TButton
      Left = 232
      Top = 48
      Width = 145
      Height = 25
      Caption = 'Cetak'
      TabOrder = 1
      OnClick = BtnCetakKClick
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 136
      Width = 441
      Height = 201
      DataSource = ds2
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
    object edtIDK: TEdit
      Left = 32
      Top = 104
      Width = 113
      Height = 21
      Enabled = False
      TabOrder = 3
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
    Left = 200
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 232
    Top = 24
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 264
    Top = 24
  end
  object frxreport2: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45263.507844930600000000
    ReportOptions.LastChange = 45263.511077557870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 188.976500000000000000
          Top = 30.236240000000000000
          Width = 415.748300000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA TRANSAKSI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
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
        object Memo7: TfrxMemoView
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID OP')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 306.141930000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID USER')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 385.512060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID BILLING')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 464.882190000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TANGGAL TRANSAKSI')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 86.929190000000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        object Memo11: TfrxMemoView
          Left = 355.275820000000000000
          Width = 79.370130000000000000
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
        object Memo12: TfrxMemoView
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_op'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."id_op"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 306.141930000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_user'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."id_user"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_billing'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."id_billing"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_transaksi'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."tgl_transaksi"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 188.976500000000000000
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
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 376
    Top = 24
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
    Left = 536
    Top = 40
  end
  object zqry2: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from transaksi_kantin')
    Params = <>
    Left = 568
    Top = 40
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 600
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
    ReportOptions.CreateDate = 45263.782127881900000000
    ReportOptions.LastChange = 45263.784952106480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 32
    Datasets = <
      item
        DataSet = frxdbdtst2
        DataSetName = 'frxdbdtst2'
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
        object Memo13: TfrxMemoView
          Left = 143.622140000000000000
          Top = 30.236240000000000000
          Width = 498.897960000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA TRANSAKSI KANTIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
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
        object Memo7: TfrxMemoView
          Left = 113.385900000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NAMA MAKANAN / MINUMAN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 514.016080000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
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
        object Memo10: TfrxMemoView
          Left = 650.079160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 79.370130000000000000
        Top = 298.582870000000000000
        Width = 793.701300000000000000
        object Memo11: TfrxMemoView
          Left = 359.055350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst2
        DataSetName = 'frxdbdtst2'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
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
          Left = 113.385900000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'username'
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst2."username"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 275.905690000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'kantin'
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst2."kantin"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 514.016080000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst2."harga"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 650.079160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = frxdbdtst2
          DataSetName = 'frxdbdtst2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst2."tanggal"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst2: TfrxDBDataset
    UserName = 'frxdbdtst2'
    CloseDataSource = False
    DataSource = ds2
    Left = 744
    Top = 32
  end
end
