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
  Unit1, registerUser, operator, uKantin;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin


with zqry1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(edt1.Text));
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
Form1.Show;
id:=zqry1.Fields[0].AsString;

Form1.Label1.Caption := zqry1.Fields[4].AsString;

Form1.zqry1.SQL.Text := 'SELECT id_user, username FROM user WHERE username='+QuotedStr(edt1.Text);
Form1.zqry1.Active := True;
Form11.edtUser.Text := zqry1.Fields[2].AsString;
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
