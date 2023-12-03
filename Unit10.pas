unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls,
  frxClass, frxDBSet;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    BtnTambah: TButton;
    BtnSimpan: TButton;
    BtnUbah: TButton;
    BtnHapus: TButton;
    BtnCetak: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtKode: TEdit;
    edtNama: TEdit;
    edtJumlah: TEdit;
    edtTanggal: TEdit;
    frxreport2: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure posisiAwal;
    procedure editBersih;
    procedure editEnable;
    procedure Button2Click(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BtnCetakClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  id : string;

implementation

uses
  main_operator;

{$R *.dfm}

procedure TForm10.editBersih;
begin
  edtKode.Text := '';
  edtNama.Text := '';
  edtJumlah.Text := '';
  edtTanggal.Text := '';
end;

procedure TForm10.editEnable;
begin
  edtKode.Enabled := True;
  edtNama.Enabled := True;
  edtJumlah.Enabled := True;
  edtTanggal.Enabled := True;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm10.posisiAwal;
begin
editBersih;

edtKode.Enabled := False;
edtNama.Enabled := False;
edtJumlah.Enabled := False;
edtTanggal.Enabled := False;

BtnTambah.Enabled := True;
BtnSimpan.Enabled := False;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm10.BtnTambahClick(Sender: TObject);
begin
BtnTambah.Enabled := False;
BtnSimpan.Enabled := True;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

editEnable;
end;

procedure TForm10.BtnSimpanClick(Sender: TObject);
begin
begin
if(edtKode.Text = '')or(edtNama.Text = '')or(edtJumlah.Text = '')or(edtTanggal.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into inventaris values(null,"'+edtKode.Text+'","'+edtNama.Text+'","'+edtJumlah.Text+'","'+edtTanggal.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from inventaris');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');

zqry1.Refresh;
posisiawal;
end;
end;
end;

procedure TForm10.BtnUbahClick(Sender: TObject);
begin
  //UBAH

if (edtKode.Text = '')or(edtNama.Text = '')or(edtJumlah.Text = '')or(edtTanggal.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (edtKode.Text = zqry1.Fields[1].AsString) and (edtNama.Text = zqry1.Fields[2].AsString) and(edtJumlah.Text = zqry1.Fields[3].AsString)and(edtTanggal.Text = zqry1.Fields[4].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_inventaris').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add('Update inventaris set kode_barang= "'+edtKode.Text+'",nama_barang="'+edtNama.Text+'", jumlah_barang= "'+edtJumlah.Text+'",tanggal_masuk= "'+edtTanggal.Text+'" where id_inventaris ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from inventaris');
zqry1.Open;
posisiawal;
zqry1.Refresh;
end;
end;

procedure TForm10.BtnHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_inventaris').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from inventaris where id_inventaris ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from inventaris');
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

procedure TForm10.BtnCetakClick(Sender: TObject);
begin
frxreport2.ShowReport();
end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  edtKode.Text := zqry1.Fields[1].AsString;
  edtNama.Text := zqry1.Fields[2].AsString;
  edtJumlah.Text := zqry1.Fields[3].AsString;
  edtTanggal.Text := zqry1.Fields[4].AsString;

  BtnTambah.Enabled := False;
  BtnSimpan.Enabled := False;
  BtnUbah.Enabled := True;
  BtnHapus.Enabled := True;

  editEnable
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
  close;
Form5.Show;
end;

end.
 