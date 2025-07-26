unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses unit4;

procedure TForm11.Button1Click(Sender: TObject);
begin
  if(edit1.text<>'') and (edit2.Text <>'') then
  begin
    DataModule4.ADOTable4.insert;
    DataModule4.ADOTable4.FieldByName('KullaniciAdi').AsString := Edit1.text;
    DataModule4.ADOTable4.FieldByName('Sifre').AsString := Edit2.text;
    DataModule4.ADOTable4.post;
    ShowMessage('Kullanýcý Kaydý Oluþturuldu');
    close;
  end;
  end;
procedure TForm11.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
