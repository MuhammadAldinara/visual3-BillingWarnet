unit main_operator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, Menus, frxClass,
  frxDBSet, ExtCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Button1: TButton;
    edtWaktu: TEdit;
    grp1: TGroupBox;
    Label3: TLabel;
    edtUsernameB: TEdit;
    Button2: TButton;
    edtHarga: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    con2: TZConnection;
    zqry2: TZQuery;
    ds2: TDataSource;
    mm1: TMainMenu;
    WarNet1: TMenuItem;
    Inventaris1: TMenuItem;
    Kantin1: TMenuItem;
    ransaksi1: TMenuItem;
    Profil1: TMenuItem;
    Logout1: TMenuItem;
    Yes1: TMenuItem;
    No1: TMenuItem;
    User1: TMenuItem;
    Operator1: TMenuItem;
    grp2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtNama: TEdit;
    edtUsername: TEdit;
    edtPassword: TEdit;
    edtBilling: TEdit;
    dbgrd2: TDBGrid;
    Label9: TLabel;
    BtnTambah: TButton;
    BtnSimpan: TButton;
    BtnUbah: TButton;
    BtnHapus: TButton;
    BtnCetak: TButton;
    cmbJenis: TComboBox;
    Label10: TLabel;
    edtSisa: TEdit;
    Button3: TButton;
    frxreport2: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    con3: TZConnection;
    zqry3: TZQuery;
    ds3: TDataSource;
    dbgrd3: TDBGrid;
    con4: TZConnection;
    zqry4: TZQuery;
    ds4: TDataSource;
    Label11: TLabel;
    tmr1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ambahdanUbahUser1Click(Sender: TObject);
    procedure ambahBilling1Click(Sender: TObject);
    procedure posisiAwal;
    procedure editBersih;
    procedure editEnable;
    procedure User1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure Yes1Click(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure dbgrd2CellClick(Column: TColumn);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnCetakClick(Sender: TObject);
    procedure Operator1Click(Sender: TObject);
    procedure Inventaris1Click(Sender: TObject);
    procedure ransaksi1Click(Sender: TObject);
    procedure Kantin1Click(Sender: TObject);
    procedure Profil1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
id : string;
implementation

uses Math, login, warnet_operator, Unit7, Unit8, kantinn, Unit10, profil;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
  posisiAwal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin             

  Button1.Enabled := True;
  id:=zqry1.Fields[0].AsString;

  edtWaktu.Text := zqry1.Fields[1].AsString;
  edtHarga.Text := zqry1.Fields[2].AsString;
end;
procedure TForm5.Button2Click(Sender: TObject);
begin
if(zqry2.Locate('username',edtUsernameB.Text,[]))then
begin
  ShowMessage('Username Ditemukan');
  dbgrd1.Enabled := True;
  Button1.Enabled := True;
  id:=zqry2.Fields[0].AsString;
  edtSisa.Text := zqry2.Fields[4].AsString;

  edtWaktu.Enabled := True;
  edtHarga.Enabled := True;
  

end else
begin
  ShowMessage('Username Tidak Ditemukan');
  posisiAwal;
end;
end;
  
procedure TForm5.Button1Click(Sender: TObject);
var
  hour, minutes, seconds, hour_w, minutes_w, seconds_w, tambah_h, tambah_m, tambah_s: Integer;
  hasil: string;
begin

  if Trim(edtUsernameB.Text) = '' then
  begin
    ShowMessage('Masukkan username terlebih dahulu.');
    Exit;
  end;

  if not zqry2.Active then
    zqry2.Open; // Buka dataset jika belum terbuka

  with zqry2 do
  begin
  SQL.Clear;
  SQL.Add('SELECT * FROM user WHERE username = ' + QuotedStr(edtUsernameB.Text));
  Open;
end;

  if zqry2.RecordCount = 0 then
    ShowMessage('Maaf Username Tidak Ditemukan')
  else
  begin
    try
      // Memecah waktu yang diambil dari edtSisa.Text menjadi jam, menit, dan detik
      hour := StrToInt(Copy(edtSisa.Text, 1, 2));
      minutes := StrToInt(Copy(edtSisa.Text, 4, 2));
      seconds := StrToInt(Copy(edtSisa.Text, 7, 2));

      hour_w := StrToInt(Copy(edtWaktu.Text, 1, 2));
      minutes_w := StrToInt(Copy(edtWaktu.Text, 4, 2));
      seconds_w := StrToInt(Copy(edtWaktu.Text, 7, 2));

      tambah_h := hour + hour_w;
      tambah_m := minutes + minutes_w;
      tambah_s := seconds + seconds_w;

      // Memperbarui
      hasil := Format('%.2d:%.2d:%.2d', [tambah_h, tambah_m, tambah_s]);

      with zqry2 do
      begin
        SQL.Clear;
        SQL.Add('UPDATE user SET billing = ' + QuotedStr(hasil) + ' WHERE username = ' + QuotedStr(edtUsernameB.Text));
        ExecSQL;
      end;

      zqry2.Refresh;

      ShowMessage('BERHASIL!');
      posisiAwal;
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat memperbarui billing: ' + E.Message);
    end;
  end;
  
end;

procedure TForm5.ambahdanUbahUser1Click(Sender: TObject);
begin
  hide;
  Form6.Show;
end;

procedure TForm5.ambahBilling1Click(Sender: TObject);
begin
hide;
Form5.Show;
end;

procedure TForm5.posisiAwal;
begin
editBersih;

edtNama.Enabled := False;
edtUsername.Enabled := False;
edtPassword.Enabled := False;
edtBilling.Enabled := False;
cmbJenis.Enabled := False;

edtSisa.Enabled:= False;
edtWaktu.Enabled:= False;
edtHarga.Enabled:= False;
edtSisa.Enabled:= False;

BtnTambah.Enabled := True;
BtnSimpan.Enabled := False;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;
Button1.Enabled := False;
dbgrd1.Enabled := False;
end;

procedure TForm5.editBersih;
begin
  edtNama.Text := '';
  edtUsername.Text := '';
  edtPassword.Text := '';
  cmbJenis.Text := '';

  edtUsernameB.Text := '';
  edtWaktu.Text := '';
  edtHarga.Text := '';
  edtSisa.Text := '';
end;

procedure TForm5.editEnable;
begin
  edtNama.Enabled := True;
  edtUsername.Enabled := True;
  edtPassword.Enabled := True;
  edtBilling.Enabled := False;
  cmbJenis.Enabled := True;
end;

procedure TForm5.User1Click(Sender: TObject);
begin
hide;
form5.Show;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm5.BtnSimpanClick(Sender: TObject);
begin
begin
if(edtNama.Text = '')or(edtUsername.Text = '')or(edtPassword.Text = '')or(edtBilling.Text = '')or(cmbJenis.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry2.Locate('username',edtUsername.Text,[]))then
begin
  ShowMessage('Username sudah digunakan');
end else
begin
zqry2.sql.clear;
zqry2.sql.Add('insert into user values(null,"'+edtNama.Text+'","'+edtUsername.Text+'","'+edtPassword.Text+'","'+edtBilling.Text+'","'+cmbJenis.Text+'")');
zqry2.ExecSQL;

zqry2.SQL.Clear;
zqry2.SQL.Add('select * from user');
zqry2.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');

zqry2.Refresh;
posisiawal;
end;
end;
end;

procedure TForm5.BtnTambahClick(Sender: TObject);
begin
BtnTambah.Enabled := False;
BtnSimpan.Enabled := True;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

editEnable;
end;

procedure TForm5.Yes1Click(Sender: TObject);
begin
  hide;
Form2.Show;
end;

procedure TForm5.BtnHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd2.DataSource.DataSet.FieldByName('id_user').AsString;
zqry2.SQL.Clear;
zqry2.SQL.Add(' delete from user where id_user ="'+id+'"');
zqry2.ExecSQL;

zqry2.SQL.Clear;
zqry2.SQL.Add('select * from user');
zqry2.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiAwal;
zqry2.Refresh;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiAwal;
end;
end;

procedure TForm5.dbgrd2CellClick(Column: TColumn);
begin
  id:=zqry2.Fields[0].AsString;
  edtNama.Text := zqry2.Fields[1].AsString;
  edtUsername.Text := zqry2.Fields[2].AsString;
  edtPassword.Text := zqry2.Fields[3].AsString;
  edtBilling.Text := zqry2.Fields[4].AsString;
  cmbJenis.Text := zqry2.Fields[5].AsString;

  BtnTambah.Enabled := False;
  BtnSimpan.Enabled := False;
  BtnUbah.Enabled := True;
  BtnHapus.Enabled := True;

  edtNama.Enabled := True;
  edtUsername.Enabled := True;
  edtPassword.Enabled := True;
  edtBilling.Enabled := False;
  cmbJenis.Enabled := True;
end;

procedure TForm5.BtnUbahClick(Sender: TObject);
begin
  //UBAH
  
if (edtNama.Text = '')or(edtUsername.Text = '')or(edtPassword.Text = '')or(edtBilling.Text = '')or(cmbJenis.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (edtNama.Text = zqry2.Fields[1].AsString) and (edtUsername.Text = zqry2.Fields[2].AsString) and(edtPassword.Text = zqry2.Fields[3].AsString)and(edtBilling.Text = zqry2.Fields[4].AsString)and(cmbJenis.Text = zqry2.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd2.DataSource.DataSet.FieldByName('id_user').AsString;

zqry2.SQL.Clear;
zqry2.SQL.Add('Update user set nama= "'+edtNama.Text+'",username="'+edtUsername.Text+'", password= "'+edtPassword.Text+'",billing= "'+edtBilling.Text+'",jenis= "'+cmbJenis.Text+'" where id_user ="'+id+'"');
zqry2.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry2.SQL.Clear;
zqry2.SQL.Add('select * from user');
zqry2.Open;
posisiawal;
zqry2.Refresh;
end;
end;

procedure TForm5.BtnCetakClick(Sender: TObject);
begin
frxreport2.ShowReport();
end;

procedure TForm5.Operator1Click(Sender: TObject);
begin
hide;
Form6.Show;

end;


procedure TForm5.Inventaris1Click(Sender: TObject);
begin
  hide;
  Form10.Show;
end;

procedure TForm5.ransaksi1Click(Sender: TObject);
begin
hide;
Form8.Show;
end;

procedure TForm5.Kantin1Click(Sender: TObject);
begin
hide;
Form9.Show;
end;

procedure TForm5.Profil1Click(Sender: TObject);
begin
hide;
Form12.show
end;

end.
