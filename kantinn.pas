unit kantinn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    grp1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNama: TEdit;
    edtStok: TEdit;
    edtHarga: TEdit;
    BtnTambah: TButton;
    BtnSimpan: TButton;
    BtnUbah: TButton;
    BtnHapus: TButton;
    BtnCetak: TButton;
    Button1: TButton;
    dbgrd1: TDBGrid;
    frxreport2: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    Button2: TButton;
    procedure posisiAwal;
    procedure editBersih;
    procedure editEnable;
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BtnCetakClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id : string;

implementation

uses
  main_operator;

{$R *.dfm}

procedure TForm9.editBersih;
begin
  edtNama.Text := '';
  edtStok.Text := '';
  edtHarga.Text := '';
end;

procedure TForm9.editEnable;
begin
  edtNama.Enabled := True;
  edtStok.Enabled := True;
  edtHarga.Enabled := True;
end;

procedure TForm9.posisiAwal;
begin
editBersih;

edtNama.Enabled := False;
edtStok.Enabled := False;
edtHarga.Enabled := False;

BtnTambah.Enabled := True;
BtnSimpan.Enabled := False;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;

  edtNama.Text := zqry1.Fields[1].AsString;
  edtStok.Text := zqry1.Fields[2].AsString;
  edtHarga.Text := zqry1.Fields[3].AsString;

  BtnTambah.Enabled := False;
  BtnSimpan.Enabled := False;
  BtnUbah.Enabled := True;
  BtnHapus.Enabled := True;

  edtNama.Enabled := True;
  edtStok.Enabled := True;
  edtHarga.Enabled := True;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm9.BtnTambahClick(Sender: TObject);
begin
BtnTambah.Enabled := False;
BtnSimpan.Enabled := True;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

editEnable;
end;

procedure TForm9.BtnSimpanClick(Sender: TObject);
begin
begin
if(edtNama.Text = '')or(edtStok.Text = '')or(edtHarga.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('nama_makananMinuman',edtNama.Text,[]))then
begin
  ShowMessage('Makanan sudah Ada');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into kantin values(null,"'+edtNama.Text+'","'+edtStok.Text+'","'+edtHarga.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kantin');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');

zqry1.Refresh;
posisiawal;
end;
end;
end;

procedure TForm9.BtnUbahClick(Sender: TObject);
begin
  //UBAH
  
if (edtNama.Text = '')or(edtStok.Text = '')or(edtHarga.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (edtNama.Text = zqry1.Fields[1].AsString) and (edtStok.Text = zqry1.Fields[2].AsString) and(edtHarga.Text = zqry1.Fields[3].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_kantin').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add('Update kantin set nama_makananMinuman= "'+edtNama.Text+'",stok="'+edtStok.Text+'", harga= "'+edtHarga.Text+'" where id_kantin ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kantin');
zqry1.Open;
posisiawal;
zqry1.Refresh;
end;
end;

procedure TForm9.BtnHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_kantin').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from kantin where id_kantin ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kantin');
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

procedure TForm9.BtnCetakClick(Sender: TObject);
begin
frxreport2.ShowReport();
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Close;
Form5.Show;
end;

end.
