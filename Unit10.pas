unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm10 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses unit4;

procedure TForm10.Edit1Change(Sender: TObject);
begin
DataModule4.ADOTable3.Filtered:= False;
if (Edit1.Text <> ' ') then
begin
   DataModule4.ADOTable3.Filtered:= True;
end
else
begin
    DataModule4.ADOTable3.Filtered:= False;
end;
end;



procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
