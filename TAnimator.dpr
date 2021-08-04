program TAnimator;

uses
  System.StartUpCopy,
  FMX.Forms,
  uTAnimator in 'uTAnimator.pas' {Form57};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm57, Form57);
  Application.Run;
end.
