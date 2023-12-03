object Form9: TForm9
  Left = 2196
  Top = 184
  Width = 514
  Height = 492
  Caption = 'WAR NET - KANTIN'
  Color = clAqua
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
  object grp1: TGroupBox
    Left = 24
    Top = 80
    Width = 449
    Height = 353
    Caption = 'KANTIN'
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 32
      Width = 29
      Height = 13
      Caption = 'NAMA'
    end
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 26
      Height = 13
      Caption = 'STOK'
    end
    object Label4: TLabel
      Left = 32
      Top = 80
      Width = 35
      Height = 13
      Caption = 'HARGA'
    end
    object edtNama: TEdit
      Left = 96
      Top = 32
      Width = 232
      Height = 21
      TabOrder = 0
    end
    object edtStok: TEdit
      Left = 96
      Top = 56
      Width = 232
      Height = 21
      TabOrder = 1
    end
    object edtHarga: TEdit
      Left = 96
      Top = 80
      Width = 232
      Height = 21
      TabOrder = 2
    end
    object BtnTambah: TButton
      Left = 358
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 3
      OnClick = BtnTambahClick
    end
    object BtnSimpan: TButton
      Left = 358
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 4
      OnClick = BtnSimpanClick
    end
    object BtnUbah: TButton
      Left = 358
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 5
      OnClick = BtnUbahClick
    end
    object BtnHapus: TButton
      Left = 358
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 6
      OnClick = BtnHapusClick
    end
    object BtnCetak: TButton
      Left = 358
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 7
      OnClick = BtnCetakClick
    end
    object Button1: TButton
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 8
      OnClick = Button1Click
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 200
      Width = 433
      Height = 145
      DataSource = ds1
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
    end
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 25
    Height = 25
    Caption = '<'
    TabOrder = 1
    OnClick = Button2Click
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
    Left = 192
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kantin')
    Params = <>
    Left = 224
    Top = 16
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 256
    Top = 16
  end
  object frxreport2: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45263.444681631900000000
    ReportOptions.LastChange = 45263.448002835650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo9: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 340.157700000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA KANTIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          Left = 117.165430000000000000
          Width = 41.574830000000000000
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
            'NO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 158.740260000000000000
          Width = 200.315090000000000000
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
            'NAMA MAKANAN/MINUMAN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 359.055350000000000000
          Width = 158.740260000000000000
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
            'STOK')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 517.795610000000000000
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
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 117.165430000000000000
          Width = 41.574830000000000000
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
          Left = 158.740260000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'nama_makananMinuman'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama_makananMinuman"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 359.055350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'stok'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."stok"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 517.795610000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = frxdbdtst1
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
        Height = 83.149660000000000000
        Top = 298.582870000000000000
        Width = 793.701300000000000000
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 368
    Top = 16
  end
end
