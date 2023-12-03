unit operator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    Button1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  login, Unit1, main_operator;

{$R *.dfm}

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Close;
Form2.Show;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
with zqry1 do begin
SQL.Clear;
SQL.Add('select * from operator where username='+QuotedStr(edt1.Text));
open;
end;

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
Form5.Show;

Form5.zqry4.SQL.Text := 'SELECT id_op, nama, username FROM operator WHERE username='+QuotedStr(edt1.Text);
Form5.zqry4.Active := True;
end;
end;
end;

end.
