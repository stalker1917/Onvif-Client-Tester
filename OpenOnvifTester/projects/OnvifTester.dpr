program OnvifTester;

uses
  Forms,
  formMain in '..\forms\formMain.pas' {Form1},
  devicemgmt in '..\units\devicemgmt.pas',
  unitdevice in '..\units\unitdevice.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
