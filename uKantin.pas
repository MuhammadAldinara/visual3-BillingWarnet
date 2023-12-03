unit uKantin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls,
  ExtCtrls;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    grp1: TGroupBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    con2: TZConnection;
    zqry2: TZQuery;
    ds2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    edtUser: TEdit;
    edtKantin: TEdit;
    BtnPesan: TButton;
    Label4: TLabel;
    Label5: TLabel;
    edtHarga: TEdit;
    dtp1: TDateTimePicker;
    pnl1: TPanel;
    Label6: TLabel;
    tmr1: TTimer;
    tmr2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure tmr1Timer(Sender: TObject);
    procedure BtnPesanClick(Sender: TObject);
    procedure posisiAwal;
    procedure tmr2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  id: string;

implementation

uses
  main_operator, Unit1;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
hide;
end;

procedure TForm11.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry2.Fields[0].AsString;
  edtKantin.Text := zqry2.Fields[1].AsString;;
  edtHarga.Text := zqry2.Fields[2].AsString;
end;

procedure TForm11.tmr1Timer(Sender: TObject);
begin
Label6.Left := Label6.Left-2;
if Label6.Left < -350 then Label6.Left:=450;

end;

procedure TForm11.BtnPesanClick(Sender: TObject);
begin
begin
if(edtUser.Text = '')or(edtKantin.Text = '')or(edtHarga.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into transaksi_kantin values(null,"'+edtUser.Text+'","'+edtKantin.Text+'","'+edtHarga.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi_kantin');
zqry1.Open;
ShowMessage('PESANAN BERHASIL');

zqry1.Refresh;
posisiAwal;
end;
end;
end;

procedure TForm11.posisiAwal;
begin
edtKantin.Text := '';
edtHarga.Text := '';
end;

procedure TForm11.tmr2Timer(Sender: TObject);
begin
dtp1.Date := Date;
end;

end.
