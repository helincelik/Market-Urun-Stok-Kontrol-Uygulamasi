object DataModule4: TDataModule4
  Height = 544
  Width = 625
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=veri.' +
      'mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:S' +
      'ystem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database ' +
      'Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking M' +
      'ode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk ' +
      'Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Crea' +
      'te System Database=False;Jet OLEDB:Encrypt Database=False;Jet OL' +
      'EDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without' +
      ' Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 312
    Top = 112
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = ADOTable1FilterRecord
    TableName = 'Atistirmalik'
    Left = 136
    Top = 216
  end
  object TDataSource1: TDataSource
    DataSet = ADOTable1
    Left = 136
    Top = 312
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = ADOTable2FilterRecord
    TableName = 'SuVeIcecek'
    Left = 256
    Top = 216
  end
  object TDataSource2: TDataSource
    DataSet = ADOTable2
    Left = 256
    Top = 312
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = ADOTable3FilterRecord
    TableName = 'TemelGida'
    Left = 376
    Top = 216
  end
  object TDataSource3: TDataSource
    DataSet = ADOTable3
    Left = 376
    Top = 312
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = ADOTable3FilterRecord
    TableName = 'Users'
    Left = 496
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 496
    Top = 312
  end
end
