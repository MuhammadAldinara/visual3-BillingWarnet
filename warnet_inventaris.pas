unit warnet_inventaris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7; 

implementation

uses Math, userInfo, main_operator, inventaris;



procedure TForm7.Button1Click(Sender: TObject);
begin
  hide;
Form5.Show;
end;

end.
