unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    Button1: TButton;
    Button2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    img1: TImage;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, registerUser, operator;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin


with zqry1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(edt1.Text));
open;
end;

//end with
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan

if zqry1.RecordCount=0
then
Application.MessageBox('Maaf username tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>edt2.Text
then
Application.MessageBox('Pastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form1.Show;
end;
end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  hide;
Form3.Show;
end;

procedure TForm2.Label1DblClick(Sender: TObject);
begin
  Hide;
Form4.Show;
end;

end.
