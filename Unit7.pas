unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm7 = class(TForm)
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
  Form7: TForm7;

implementation

{$R *.dfm}

Uses unit4;

procedure TForm7.Edit1Change(Sender: TObject);
begin
DataModule4.ADOTable1.Filtered:= False;
if (Edit1.Text <> ' ') then
begin
   DataModule4.ADOTable1.Filtered:= True;
end
else
begin
    DataModule4.ADOTable1.Filtered:= False;
end;
end;


procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
