object Form10: TForm10
  Left = 2192
  Top = 148
  Width = 525
  Height = 502
  Caption = 'WAR NET - INVENTARIS'
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
    Left = 56
    Top = 32
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
    Top = 80
    Width = 433
    Height = 369
    Caption = 'Inventaris'
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 32
      Width = 71
      Height = 13
      Caption = 'KODE BARANG'
    end
    object Label3: TLabel
      Left = 24
      Top = 56
      Width = 73
      Height = 13
      Caption = 'NAMA BARANG'
    end
    object Label4: TLabel
      Left = 24
      Top = 80
      Width = 83
      Height = 13
      Caption = 'JUMLAH BARANG'
    end
    object Label5: TLabel
      Left = 24
      Top = 104
      Width = 83
      Height = 13
      Caption = 'TANGGAL MASUK'
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 200
      Width = 409
      Height = 160
      DataSource = ds1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
    end
    object BtnTambah: TButton
      Left = 350
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 1
      OnClick = BtnTambahClick
    end
    object BtnSimpan: TButton
      Left = 350
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 2
      OnClick = BtnSimpanClick
    end
    object BtnUbah: TButton
      Left = 350
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 3
      OnClick = BtnUbahClick
    end
    object BtnHapus: TButton
      Left = 350
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
      OnClick = BtnHapusClick
    end
    object BtnCetak: TButton
      Left = 350
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 5
      OnClick = BtnCetakClick
    end
    object Button2: TButton
      Left = 8
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 6
      OnClick = Button2Click
    end
    object edtKode: TEdit
      Left = 120
      Top = 32
      Width = 210
      Height = 21
      TabOrder = 7
    end
    object edtNama: TEdit
      Left = 120
      Top = 56
      Width = 210
      Height = 21
      TabOrder = 8
    end
    object edtJumlah: TEdit
      Left = 120
      Top = 80
      Width = 210
      Height = 21
      TabOrder = 9
    end
    object edtTanggal: TEdit
      Left = 120
      Top = 104
      Width = 210
      Height = 21
      TabOrder = 10
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
    Left = 256
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from inventaris')
    Params = <>
    Left = 288
    Top = 24
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 320
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
    ReportOptions.CreateDate = 45263.474189375000000000
    ReportOptions.LastChange = 45263.477222500000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
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
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 185.196970000000000000
          Top = 30.236240000000000000
          Width = 404.409710000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA INVENTARIS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 56.692950000000000000
          Width = 49.133890000000000000
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
          Left = 105.826840000000000000
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
            'KODE BARANG')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 185.196970000000000000
          Width = 200.315090000000000000
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
            'NAMA BARANG')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 385.512060000000000000
          Width = 105.826840000000000000
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
            'JUMLAH')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 491.338900000000000000
          Width = 238.110390000000000000
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
            'TANGGAL MASUK')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 83.149660000000000000
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
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 56.692950000000000000
          Width = 49.133890000000000000
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
        object Memo2: TfrxMemoView
          Left = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'kode_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kode_barang"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 185.196970000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'nama_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama_barang"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'jumlah_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."jumlah_barang"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal_masuk'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."tanggal_masuk"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 440
    Top = 32
  end
end
