unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

Uses Unit4;

procedure TForm12.Button1Click(Sender: TObject);
var
ad:boolean;
begin
    DataModule4.ADOTable4.First ;
    repeat
     if(Edit1.Text = DataModule4.ADOTable4.FieldByName('KullaniciAdi').AsString) then
     begin
      Datamodule4.ADOTable4.edit ;
      Datamodule4.ADOTable4.FieldByName('Sifre').AsString := Edit2.text;
      Datamodule4.ADOTable4.Post	;
      ShowMessage('Þifreniz Baþarýyla Deðiþtirildi');
      exit;
      end;
      Datamodule4.ADOTable4.Next ;
    until Datamodule4.ADOTable4.eof ;
     ShowMessage('Kullanýcý Adýnýz Yanlýþ');
end;

procedure TForm12.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
