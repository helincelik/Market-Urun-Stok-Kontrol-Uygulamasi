unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Edit1: TEdit;
    Label4: TLabel;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses unit4;

procedure TForm5.Edit1Change(Sender: TObject);
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

procedure TForm5.SpeedButton10Click(Sender: TObject);
begin
DataModule4.ADOTable3.Delete;
end;

procedure TForm5.SpeedButton13Click(Sender: TObject);
begin
DataModule4.ADOTable3.Cancel;
end;

procedure TForm5.SpeedButton14Click(Sender: TObject);
begin
DataModule4.ADOTable3.Refresh;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
DataModule4.ADOTable3.Edit;
DataModule4.ADOTable3.Post;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
DataModule4.ADOTable3.Edit;
DataModule4.ADOTable3.Post;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
DBEdit1.SetFocus;
DataModule4.ADOTable3.Insert;
end;

procedure TForm5.SpeedButton5Click(Sender: TObject);
begin
DataModule4.ADOTable3.First;
end;

procedure TForm5.SpeedButton6Click(Sender: TObject);
begin
DataModule4.ADOTable3.Prior;
end;

procedure TForm5.SpeedButton7Click(Sender: TObject);
begin
DataModule4.ADOTable3.Next;
end;

procedure TForm5.SpeedButton8Click(Sender: TObject);
begin
DataModule4.ADOTable3.Last;
end;

end.
