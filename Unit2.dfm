object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 252
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Имя: TLabel
    Left = 82
    Top = 57
    Width = 27
    Height = 15
    Caption = #1060#1048#1054
  end
  object Label1: TLabel
    Left = 82
    Top = 86
    Width = 94
    Height = 15
    Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
  end
  object Label6: TLabel
    Left = 144
    Top = 22
    Width = 156
    Height = 15
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072
  end
  object EditFIO: TEdit
    Left = 200
    Top = 54
    Width = 233
    Height = 23
    TabOrder = 0
  end
  object EditPhone: TEdit
    Left = 200
    Top = 83
    Width = 233
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 272
    Top = 134
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 74
    Top = 134
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 184
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1083#1080#1077#1085#1090#1099'3'
    Left = 336
    Top = 176
  end
  object DataSource1: TDataSource
    Left = 120
    Top = 184
  end
end
