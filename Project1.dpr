program Project1;



uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  login in 'login.pas' {Form2},
  registerUser in 'registerUser.pas' {Form3},
  operator in 'operator.pas' {Form4},
  main_operator in 'main_operator.pas' {Form5},
  warnet_operator in 'warnet_operator.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
