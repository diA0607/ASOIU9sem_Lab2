object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 517
  ClientWidth = 1240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 169
    Top = 224
    Width = 442
    Height = 121
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 225
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 273
    Width = 129
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 321
    Width = 129
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Выход: TButton
    Left = 358
    Top = 440
    Width = 507
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = ВыходClick
  end
  object DBGrid2: TDBGrid
    Left = 640
    Top = 224
    Width = 442
    Height = 122
    DataSource = DataSource2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 1088
    Top = 225
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 1088
    Top = 273
    Width = 129
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 1088
    Top = 318
    Width = 129
    Height = 28
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 8
    OnClick = Button6Click
  end
  object DBGrid3: TDBGrid
    Left = 224
    Top = 49
    Width = 730
    Height = 105
    DataSource = DataSource3
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_'#1079#1072#1087#1080#1089#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1091#1089#1083#1091#1075#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1088#1077#1084#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054'_'#1082#1083#1080#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054'_'#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_'#1082#1083#1080#1077#1085#1090#1072
        Visible = False
      end>
  end
  object Button7: TButton
    Left = 368
    Top = 160
    Width = 105
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 512
    Top = 160
    Width = 121
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 11
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 672
    Top = 160
    Width = 113
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 12
    OnClick = Button9Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 536
    Top = 351
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1083#1080#1077#1085#1090#1099'3'
    Left = 440
    Top = 343
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 624
    Top = 351
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 864
    Top = 352
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080'1'
    Left = 776
    Top = 352
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 960
    Top = 352
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=beauty;Data Source=LAPTOP-VEU33095\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 192
    Top = 360
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = #1047#1072#1087#1080#1089#1100
    Left = 288
    Top = 360
    object ADOTable3ID_записи: TAutoIncField
      FieldName = 'ID_'#1079#1072#1087#1080#1089#1080
      ReadOnly = True
    end
    object ADOTable3Наименование_услуги: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1091#1089#1083#1091#1075#1080
      FixedChar = True
      Size = 25
    end
    object ADOTable3Дата: TWideStringField
      FieldName = #1044#1072#1090#1072
      FixedChar = True
      Size = 10
    end
    object ADOTable3Время: TWideStringField
      FieldName = #1042#1088#1077#1084#1103
      FixedChar = True
      Size = 7
    end
    object ADOTable3ФИО_клиента: TStringField
      FieldKind = fkLookup
      FieldName = #1060#1048#1054'_'#1082#1083#1080#1077#1085#1090#1072
      LookupDataSet = ADOTable1
      LookupKeyFields = 'ID_'#1082#1083#1080#1077#1085#1090#1072
      LookupResultField = #1060#1048#1054
      KeyFields = 'ID_'#1082#1083#1080#1077#1085#1090#1072
      Lookup = True
    end
    object ADOTable3ФИО_Сотрудника: TStringField
      FieldKind = fkLookup
      FieldName = #1060#1048#1054'_'#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
      LookupDataSet = ADOTable2
      LookupKeyFields = 'ID_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      LookupResultField = #1060#1048#1054
      KeyFields = 'ID_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Lookup = True
    end
    object ADOTable3ID_сотрудника: TIntegerField
      FieldName = 'ID_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    end
    object ADOTable3ID_клиента: TIntegerField
      FieldName = 'ID_'#1082#1083#1080#1077#1085#1090#1072
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 368
    Top = 360
  end
end
