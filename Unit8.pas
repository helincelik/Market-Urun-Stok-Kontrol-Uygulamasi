unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit7, Unit9, Unit10;

procedure TForm8.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm8.SpeedButton3Click(Sender: TObject);
begin
form10.show;
end;

end.
