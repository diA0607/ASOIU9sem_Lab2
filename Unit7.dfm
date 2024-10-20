object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Имя: TLabel
    Left = 66
    Top = 57
    Width = 123
    Height = 15
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  end
  object Label1: TLabel
    Left = 66
    Top = 86
    Width = 25
    Height = 15
    Caption = #1044#1072#1090#1072
  end
  object Label6: TLabel
    Left = 144
    Top = 22
    Width = 145
    Height = 15
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
  end
  object Label2: TLabel
    Left = 66
    Top = 115
    Width = 35
    Height = 15
    Caption = #1042#1088#1077#1084#1103
  end
  object Label3: TLabel
    Left = 66
    Top = 144
    Width = 59
    Height = 15
    Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  end
  object Label4: TLabel
    Left = 66
    Top = 173
    Width = 39
    Height = 15
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object EditName: TEdit
    Left = 200
    Top = 54
    Width = 233
    Height = 23
    TabOrder = 0
  end
  object EditDate: TEdit
    Left = 200
    Top = 83
    Width = 233
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 264
    Top = 206
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 66
    Top = 206
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = Button2Click
  end
  object EditTime: TEdit
    Left = 200
    Top = 112
    Width = 233
    Height = 23
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 200
    Top = 141
    Width = 233
    Height = 23
    TabOrder = 5
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 200
    Top = 170
    Width = 233
    Height = 23
    TabOrder = 6
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 168
    Top = 272
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = #1047#1072#1087#1080#1089#1100
    Left = 264
    Top = 272
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 344
    Top = 272
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 452
    Top = 279
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1083#1080#1077#1085#1090#1099'3'
    Left = 452
    Top = 287
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 452
    Top = 295
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 172
    Top = 349
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080'1'
    Left = 268
    Top = 341
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 340
    Top = 341
  end
end
