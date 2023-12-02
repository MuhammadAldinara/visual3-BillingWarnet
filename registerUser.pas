unit registerUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    Button1: TButton;
    Label4: TLabel;
    edt3: TEdit;
    Button2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Label5: TLabel;
    cmb1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  login;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if(edt1.Text = '')or(edt2.Text = '')or (edt3.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('username',edt1.Text,[])) then
begin
  ShowMessage('Username sudah digunakan!');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'",null , "'+cmb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;

ShowMessage('DATA BERHASIL DISIMPAN!!');

edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
cmb1.Text :='';

end;
end;
procedure TForm3.Button2Click(Sender: TObject);
begin
 Form3.Close;
Form2.Show
end;
end.
