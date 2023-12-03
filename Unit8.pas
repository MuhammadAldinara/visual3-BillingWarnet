unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    grp1: TGroupBox;
    BtnSimpan: TButton;
    BtnTambah: TButton;
    BtnUbah: TButton;
    BtnHapus: TButton;
    BtnCetak: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtOP: TEdit;
    edtUser: TEdit;
    edtBilling: TEdit;
    dtp1: TDateTimePicker;
    dbgrd1: TDBGrid;
    frxreport2: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure posisiAwal;
    procedure editBersih;
    procedure editEnable;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure BtnCetakClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id: string;

implementation

uses
  main_operator;

{$R *.dfm}

{ TForm8 }

procedure TForm8.editBersih;
begin
  edtOP.Text := '';
  edtUser.Text := '';
  edtBilling.Text := '';
end;

procedure TForm8.editEnable;
begin
  edtOP.Enabled := True;
  edtUser.Enabled := True;
  edtBilling.Enabled := True;
  dtp1.Enabled := True;
end;

procedure TForm8.posisiAwal;
begin
editBersih;

edtOP.Enabled := False;
edtUser.Enabled := False;
edtBilling.Enabled := False;
dtp1.Enabled := False;

BtnTambah.Enabled := True;
BtnSimpan.Enabled := False;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm8.BtnTambahClick(Sender: TObject);
begin
BtnTambah.Enabled := False;
BtnSimpan.Enabled := True;
BtnUbah.Enabled := False;
BtnHapus.Enabled := False;
BtnCetak.Enabled := True;

editEnable;
end;

procedure TForm8.BtnSimpanClick(Sender: TObject);
begin
begin
if(edtOP.Text = '')or(edtUser.Text = '')or(edtBilling.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into transaksi values(null,"'+edtOP.Text+'","'+edtUser.Text+'","'+edtBilling.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');

zqry1.Refresh;
posisiawal;
end;
end;
end;

procedure TForm8.BtnUbahClick(Sender: TObject);
begin
  //UBAH
  
if (edtOP.Text = '')or(edtUser.Text = '')or(edtBilling.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (edtOP.Text = zqry1.Fields[1].AsString) and (edtUser.Text = zqry1.Fields[2].AsString) and(edtBilling.Text = zqry1.Fields[3].AsString)and(dtp1.date = zqry1.Fields[4].AsDateTime) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_transaksi').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add('Update transaksi set id_op= "'+edtOP.Text+'",id_user="'+edtUser.Text+'", id_billing= "'+edtBilling.Text+'",tgl_transaksi= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'" where id_transaksi ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
posisiawal;
zqry1.Refresh;
end;
end;

procedure TForm8.BtnHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_transaksi').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from transaksi where id_transaksi ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
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

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;

  edtOP.Text := zqry1.Fields[1].AsString;
  edtUser.Text := zqry1.Fields[2].AsString;
  edtBilling.Text := zqry1.Fields[3].AsString;
  dtp1.Date :=  zqry1.FieldList[4].AsDateTime;

  BtnTambah.Enabled := False;
  BtnSimpan.Enabled := False;
  BtnUbah.Enabled := True;
  BtnHapus.Enabled := True;

  editEnable;
end;

procedure TForm8.BtnCetakClick(Sender: TObject);
begin
frxreport2.ShowReport();
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
hide;
Form5.Show;
end;

end.
 