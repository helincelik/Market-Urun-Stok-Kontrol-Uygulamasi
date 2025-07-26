unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


uses Unit2,unit3,unit4,unit5;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (MessageDlg('Çýkmak istediðinize emin misiniz?',
mtConfirmation,[mbYes,mbNo], 0, mbYes) = mrYes) then Application.Terminate;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
     Form2.Show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
     Form3.Show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
     Form5.Show;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
top,I:Integer;
begin
     //top := StrToInt(ADOTable1(Stok))+StrToInt(ADOTable2(Stok))+StrToInt(ADOTable3(Stok));

    // for I := 1 to EOF do



end;

end.
