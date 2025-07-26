unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
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
  Form2: TForm2;

implementation

{$R *.dfm}

uses unit1,unit4;

procedure TForm2.Edit1Change(Sender: TObject);
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

procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
DataModule4.ADOTable1.Delete;
end;

procedure TForm2.SpeedButton13Click(Sender: TObject);
begin
DataModule4.ADOTable1.Cancel;
end;

procedure TForm2.SpeedButton14Click(Sender: TObject);
begin
DataModule4.ADOTable1.Refresh;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
     Close;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
DataModule4.ADOTable1.Edit;
DataModule4.ADOTable1.Post;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
DataModule4.ADOTable1.Edit;
DataModule4.ADOTable1.Post;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
DBEdit1.SetFocus;
DataModule4.ADOTable1.Insert;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
DataModule4.ADOTable1.First;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
DataModule4.ADOTable1.Prior;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
DataModule4.ADOTable1.Next;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
DataModule4.ADOTable1.Last;
end;

end.
