unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1, Unit8, Unit11, Unit4, Unit12;

procedure TForm6.Button1Click(Sender: TObject);
var
  ad,admin,sifre,asifre: Boolean;
begin
  ad := False;
  sifre := False;
  admin:=false;
  asifre:=false;
  DataModule4.ADOTable4.First;
  while not DataModule4.ADOTable4.EOF do
  begin
    if (Edit1.Text = '') or (Edit2.Text = '') then
    begin
      ShowMessage('Kullanýcý Adý veya Þifre Boþ Býrakýlamaz');
      Exit;
    end;
    if (Edit1.Text = DataModule4.ADOTable4.FieldByName('KullaniciAdi').AsString) and
       (Edit2.Text = DataModule4.ADOTable4.FieldByName('Sifre').AsString) then
    begin
      ad := True;
      sifre := True;
      Break;
    end
    else if (Edit1.Text = DataModule4.ADOTable4.FieldByName('AdminK').AsString) and
            (Edit2.Text = DataModule4.ADOTable4.FieldByName('Asifre').AsString) then
    begin
      admin:=true;
      asifre:=true;
      Break;
    end;
    DataModule4.ADOTable4.Next;
  end;
  if ad and sifre then
  begin
    ShowMessage('Hoþ geldiniz, ' + Edit1.Text);
    Form8.Show;
  end
  else if admin and asifre then
  begin
    ShowMessage('Hoþ geldiniz, ' + Edit1.Text);
     Form1.Show;
  end
  else
  begin
  ShowMessage('Kullanýcý Adý veya Þifreniz Yanlýþ');
  end;
end;


procedure TForm6.Button2Click(Sender: TObject);
begin
if (MessageDlg('Çýkmak istediðinize emin misiniz?',
mtConfirmation,[mbYes,mbNo], 0, mbYes) = mrYes) then Application.Terminate;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
form11.show;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
if Edit2.PasswordChar=#0 then begin
     Edit2.PasswordChar:='*';
end
else begin
      Edit2.PasswordChar:=#0;
end;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
form12.show;
end;

end.
