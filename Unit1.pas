unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, Buttons,
  Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    tmr1: TTimer;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    pnl1: TPanel;
    Label2: TLabel;
    tmr2: TTimer;
    Label3: TLabel;
    dbgrd: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
//    procedure AddTime;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;

implementation

uses
  login;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  

// Menyegarkan data setelah pembaruan
//zqry1.Refresh;

end;

procedure TForm1.tmr1Timer(Sender: TObject);      
var
  hours, minutes, seconds: Integer;
begin
  if Label1.Caption = '00:00:00' then
  begin
    Tmr1.Enabled := False; // Menonaktifkan timer setelah cooldown
    Label1.Enabled := False; // Menyembunyikan label
    // Kode lain yang ingin Anda jalankan setelah cooldown selesai
  end
  else
  begin
    // Memecah waktu menjadi jam, menit, dan detik
    hours := StrToInt(Copy(Label1.Caption, 1, 2));
    minutes := StrToInt(Copy(Label1.Caption, 4, 2));
    seconds := StrToInt(Copy(Label1.Caption, 7, 2));

    // Mengurangkan waktu satu detik
    if (hours = 0) and (minutes = 0) and (seconds = 0) then
    begin
      Tmr1.Enabled := False; // Menonaktifkan timer setelah cooldown
      Label1.Enabled := False; // Menyembunyikan label
      // Kode lain yang ingin Anda jalankan setelah cooldown selesai
    end
    else
    begin
      Dec(seconds);
      if seconds < 0 then
      begin
        Dec(minutes);
        seconds := 59;
        if minutes < 0 then
        begin
          Dec(hours);
          minutes := 59;
        end;
      end;

      // Memperbarui teks label
      Label1.Caption := Format('%.2d:%.2d:%.2d', [hours, minutes, seconds]);
    end;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
tmr1.Enabled := true;
  Label1.Enabled := true; // Menampilkan label
end;

procedure TForm1.Button4Click(Sender: TObject);
var
     jam, minutes, seconds, tambah_h, tambah_m, tambah_s : Integer;

begin
  // Memecah waktu menjadi jam, menit, dan detik
    jam := StrToInt(Copy(Label1.Caption, 1, 2));
    minutes := StrToInt(Copy(Label1.Caption, 4, 2));
    seconds := StrToInt(Copy(Label1.Caption, 7, 2));

    tambah_h := jam;
    
    if minutes > 59 then
    begin
      jam := jam + 1;
      minutes := 0; // atau nilai yang sesuai
    end
    else
    begin
      // Tidak perlu melakukan operasi pada minutes jika kondisinya tidak terpenuhi
      minutes := minutes + 30;
    end;

    // Menggunakan variabel tambah_m untuk keperluan tertentu
    tambah_m := minutes;

                
    tambah_s := seconds;


    // Memperbarui teks label
      Label1.Caption := Format('%.2d:%.2d:%.2d', [tambah_h, tambah_m, tambah_s]);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
     jam, minutes, seconds, tambah_h, tambah_m, tambah_s : Integer;

begin
  // Memecah waktu menjadi jam, menit, dan detik
    jam := StrToInt(Copy(Label1.Caption, 1, 2));
    minutes := StrToInt(Copy(Label1.Caption, 4, 2));
    seconds := StrToInt(Copy(Label1.Caption, 7, 2));

    tambah_h := jam + 1;
    tambah_m := minutes;
    tambah_s := seconds;

    // Memperbarui teks label
      Label1.Caption := Format('%.2d:%.2d:%.2d', [tambah_h, tambah_m, tambah_s]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
tmr1.Enabled := False;
  id := zqry1.FieldByName('id_user').AsString;

  // Menyiapkan parameterized query untuk UPDATE
  zqry1.SQL.Text := 'UPDATE user SET billing = :billing WHERE id_user = :id';
  zqry1.ParamByName('billing').AsString := Label1.Caption;
  zqry1.ParamByName('id').AsString := id;
  zqry1.ExecSQL;

  hide;
  Form2.Show;

  Form2.edt1.Text := '';
  Form2.edt2.Text := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

//procedure TForm1.AddTime;
//var
//  hours1, minutes1, seconds1: Integer;
//  hours2, minutes2, seconds2: Integer;
//  totalHours, totalMinutes, totalSeconds: Integer;
//begin
//  // Memecah waktu yang sudah ada menjadi jam, menit, dan detik
//  hours1 := StrToInt(Copy(currentTime, 1, 2));
//  minutes1 := StrToInt(Copy(currentTime, 4, 2));
//  seconds1 := StrToInt(Copy(currentTime, 7, 2));
//
//  // Memecah waktu tambahan menjadi jam, menit, dan detik
//  hours2 := StrToInt(Copy(additionalTime, 1, 2));
//  minutes2 := StrToInt(Copy(additionalTime, 4, 2));
//  seconds2 := StrToInt(Copy(additionalTime, 7, 2));
//
//  // Menambahkan waktu
//  totalHours := hours1 + hours2;
//  totalMinutes := minutes1 + minutes2;
//  totalSeconds := seconds1 + seconds2;
//
//  // Memperbaiki waktu jika detik atau menit melebihi 59
//  if totalSeconds >= 60 then
//  begin
//    Inc(totalMinutes, totalSeconds div 60);
//    totalSeconds := totalSeconds mod 60;
//  end;
//
//  if totalMinutes >= 60 then
//  begin
//    Inc(totalHours, totalMinutes div 60);
//    totalMinutes := totalMinutes mod 60;
//  end;
//
//  // Menggabungkan hasilnya ke dalam format "jam:menit:detik"
//  currentTime := Format('%.2d:%.2d:%.2d', [totalHours, totalMinutes, totalSeconds]);
//end;

procedure TForm1.tmr2Timer(Sender: TObject);
begin
Label2.Caption := TimeToStr(time);
Label3.Caption := DateToStr(Date);
end;

end.
