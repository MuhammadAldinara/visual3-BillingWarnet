object Form3: TForm3
  Left = 481
  Top = 294
  Width = 269
  Height = 314
  Caption = 'Register User'
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
    Left = 32
    Top = 24
    Width = 193
    Height = 20
    Caption = 'REGISTER WAR NET'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Vogue'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label4: TLabel
    Left = 32
    Top = 128
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label5: TLabel
    Left = 32
    Top = 160
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object edt1: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Register'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edt3: TEdit
    Left = 96
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 128
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Back'
    TabOrder = 4
    OnClick = Button2Click
  end
  object cmb1: TComboBox
    Left = 96
    Top = 160
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'nonmember'
      'member')
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
    Left = 16
    Top = 224
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 56
    Top = 224
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 192
    Top = 224
  end
end
