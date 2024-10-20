object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 280
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Имя: TLabel
    Left = 34
    Top = 57
    Width = 27
    Height = 15
    Caption = #1060#1048#1054
  end
  object Label1: TLabel
    Left = 34
    Top = 86
    Width = 94
    Height = 15
    Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
  end
  object Label6: TLabel
    Left = 152
    Top = 22
    Width = 199
    Height = 15
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  end
  object EditFIO: TEdit
    Left = 152
    Top = 54
    Width = 241
    Height = 23
    TabOrder = 0
  end
  object EditPhone: TEdit
    Left = 152
    Top = 83
    Width = 241
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 176
    Top = 126
    Width = 153
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 157
    Width = 153
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 208
    Top = 205
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080'1'
    Left = 128
    Top = 205
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 304
    Top = 205
  end
end
