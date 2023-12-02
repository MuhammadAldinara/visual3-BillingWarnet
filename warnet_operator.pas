unit warnet_operator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, Menus, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNama: TEdit;
    edtTelp: TEdit;
    edtAlamat: TEdit;
    edtUsername: TEdit;
    edtPassword: TEdit;
    BtnTambah: TButton;
    BtnSimpan: TButton;
    BtnUbah: TButton;
    BtnHapus: TButton;
    BtnCetak: TButton;
    BtnBersih: TButton;
    BtnClose: TButton;
    frxreport2: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    grp2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    edtWaktu: TEdit;
    edtHarga: TEdit;
    BtnBTambah: TButton;
    BtnBSimpan: TButton;
    BtnBUbah: TButton;
    BtnBHapus: TButton;
    BtnBCetak: TButton;
    BtnBBersih: TButton;
    con2: TZConnection;
    zqry2: TZQuery;
    ds2: TDataSource;
    frxdbdtst2: TfrxDBDataset;
    frxreport3: TfrxReport;
    procedure posisiAwal;
    procedure editBersih;
    procedure editEnable;
    procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnBersihClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BtnCetakClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure editBEnable;
    procedure BtnBTambahClick(Sender: TObject);
    procedure BtnBSimpanClick(Sender: TObject);
    procedure BtnBUbahClick(Sender: TObject);
    procedure BtnBHapusClick(Sender: TObject);
    procedure BtnBCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  main_operator;

{$R *.dfm}

procedure TForm6.editBersih;
begin
  edtNama.Text := '';
  edtTelp.Text := '';
  edtAlamat.Text := '';
  edtUsername.Text := '';
  edtPassword.Text := '';

  edtWaktu.Text := '';
  edtHarga.Text := '';
end;

procedure TForm6.editEnable;
begin
  edtNama.Enabled := True; 
  edtTelp.Enabled := True;
  edtAlamat.Enabled := True;
  edtUsername.Enabled := True;
  edtPassword.Enabled := True;
end;

procedure TForm6.posisiAwal;
begin
editBersih;

//Operator
edtNama.Enabled := False;
edtTelp.Enabled := False;
edtAlamat.Enabled := False;
edtUsername.Enabled := False;
edtPassword.Enabled := False;

BtnTambah.Enabled := True;
BtnSimpan.Enabled := False;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

//Billing Setting
edtWaktu.Enabled := False;
edtHarga.Enabled := False;

BtnBTambah.Enabled := True;
BtnBSimpan.Enabled := False;
BtnBUbah.Enabled := False;
BtnBHapus.Enabled := False;
BtnBCetak.Enabled := True;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm6.BtnCloseClick(Sender: TObject);
begin
Close;
Form5.Show;
end;

procedure TForm6.BtnBersihClick(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm6.BtnTambahClick(Sender: TObject);
begin
BtnTambah.Enabled := False;
BtnSimpan.Enabled := True;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

editEnable;
end;

procedure TForm6.BtnSimpanClick(Sender: TObject);
begin
begin
if(edtNama.Text = '')or(edtTelp.Text = '')or(edtAlamat.Text = '')or(edtUsername.Text = '')or(edtPassword.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('username',edtUsername.Text,[]))then
begin
  ShowMessage('Username sudah digunakan');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into operator values(null,"'+edtNama.Text+'","'+edtTelp.Text+'","'+edtAlamat.Text+'","'+edtUsername.Text+'","'+edtPassword.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from operator');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');

zqry1.Refresh;
posisiawal;
end;
end;
end;

procedure TForm6.BtnUbahClick(Sender: TObject);
begin
  //UBAH
  
if (edtNama.Text = '')or(edtTelp.Text = '')or(edtAlamat.Text = '')or(edtUsername.Text = '')or(edtPassword.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (edtNama.Text = zqry1.Fields[1].AsString) and (edtTelp.Text = zqry1.Fields[2].AsString) and(edtAlamat.Text = zqry1.Fields[3].AsString)and(edtUsername.Text = zqry1.Fields[4].AsString)and(edtPassword.Text = zqry1.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_op').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add('Update operator set nama= "'+edtNama.Text+'",telp="'+edtTelp.Text+'", alamat= "'+edtAlamat.Text+'",username= "'+edtUsername.Text+'",password= "'+edtPassword.Text+'" where id_op ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from Operator');
zqry1.Open;
posisiawal;
zqry1.Refresh;
end;
end;

procedure TForm6.BtnHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_op').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from operator where id_op ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from operator');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiAwal;
zqry1.Refresh;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiAwal;
end;
end;

procedure TForm6.BtnCetakClick(Sender: TObject);
begin
frxreport2.ShowReport();
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  edtNama.Text := zqry1.Fields[1].AsString;
  edtTelp.Text := zqry1.Fields[2].AsString;
  edtAlamat.Text := zqry1.Fields[3].AsString;
  edtUsername.Text := zqry1.Fields[4].AsString;
  edtPassword.Text := zqry1.Fields[5].AsString;

  BtnTambah.Enabled := False;
  BtnSimpan.Enabled := False;
  BtnUbah.Enabled := True;
  BtnHapus.Enabled := True;

  edtNama.Enabled := True;
  edtTelp.Enabled := True;
  edtAlamat.Enabled := True;
  edtUsername.Enabled := True;
  edtPassword.Enabled := True;
end;

procedure TForm6.editBEnable;
begin
edtWaktu.Enabled := True;
edtHarga.Enabled := True;
end;

procedure TForm6.BtnBTambahClick(Sender: TObject);
begin
BtnTambah.Enabled := False;
BtnSimpan.Enabled := True;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

editBEnable;
end;

procedure TForm6.BtnBSimpanClick(Sender: TObject);
begin
begin
if(edtWaktu.Text = '')or(edtHarga.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry2.Locate('waktu',edtWaktu.Text,[]))then
begin
  ShowMessage('Waktu sudah digunakan');
end else
begin
zqry2.sql.clear;
zqry2.sql.Add('insert into billing values(null,"'+edtWaktu.Text+'","'+edtHarga.Text+'")');
zqry2.ExecSQL;

zqry2.SQL.Clear;
zqry2.SQL.Add('select * from billing');
zqry2.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');

zqry2.Refresh;
posisiawal;
end;
end;
end;

procedure TForm6.BtnBUbahClick(Sender: TObject);
begin
  //UBAH
  
if (edtWaktu.Text = '')or(edtHarga.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (edtWaktu.Text = zqry2.Fields[1].AsString) and (edtHarga.Text = zqry2.Fields[2].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id_billing').AsString;

zqry2.SQL.Clear;
zqry2.SQL.Add('Update billing set waktu= "'+edtWaktu.Text+'",harga="'+edtHarga.Text+'" where id_billing ="'+id+'"');
zqry2.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry2.SQL.Clear;
zqry2.SQL.Add('select * from billing');
zqry2.Open;
posisiawal;
zqry2.Refresh;
end;
end;

procedure TForm6.BtnBHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id_billing').AsString;
zqry2.SQL.Clear;
zqry2.SQL.Add(' delete from billing where id_billing ="'+id+'"');
zqry2.ExecSQL;

zqry2.SQL.Clear;
zqry2.SQL.Add('select * from billing');
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

procedure TForm6.BtnBCetakClick(Sender: TObject);
begin
frxreport3.ShowReport();
end;

end.
