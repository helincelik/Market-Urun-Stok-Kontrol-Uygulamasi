unit Unit4;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule4 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    TDataSource1: TDataSource;
    ADOTable2: TADOTable;
    TDataSource2: TDataSource;
    ADOTable3: TADOTable;
    TDataSource3: TDataSource;
    ADOTable4: TADOTable;
    DataSource4: TDataSource;
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ADOTable2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ADOTable3FilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit2, Unit3, Unit5, Unit7, Unit9, Unit10;

{$R *.dfm}

procedure TDataModule4.ADOTable1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
if (AnsiUpperCase(Form2.Edit1.Text)=Copy(AnsiUpperCase(ADOTable1.FieldByName('UrunAdi').AsString),1,Length(Form2.Edit1.Text))) and
(AnsiUpperCase(Form7.Edit1.Text)=Copy(AnsiUpperCase(ADOTable1.FieldByName('UrunAdi').AsString),1,Length(Form7.Edit1.Text))) then Accept:= True
else Accept:=False;
end;

procedure TDataModule4.ADOTable2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if (AnsiUpperCase(Form3.Edit1.Text)=Copy(AnsiUpperCase(ADOTable2.FieldByName('UrunAdi').AsString),1,Length(Form3.Edit1.Text))) and
    (AnsiUpperCase(Form9.Edit1.Text)=Copy(AnsiUpperCase(ADOTable2.FieldByName('UrunAdi').AsString),1,Length(Form9.Edit1.Text))) then Accept:= True
     else Accept:=False;
end;

procedure TDataModule4.ADOTable3FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if (AnsiUpperCase(Form5.Edit1.Text)=Copy(AnsiUpperCase(ADOTable3.FieldByName('UrunAdi').AsString),1,Length(Form5.Edit1.Text))) and
    (AnsiUpperCase(Form10.Edit1.Text)=Copy(AnsiUpperCase(ADOTable3.FieldByName('UrunAdi').AsString),1,Length(Form10.Edit1.Text)))
    then Accept:= True
    else Accept:=False;
end;

end.
