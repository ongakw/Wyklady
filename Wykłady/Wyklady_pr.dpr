program Wyklady_pr;

uses
  Vcl.Forms,
  Okno in 'Okno.pas' {Okno_Form},

  Kotek in 'wyzwania\Kotek.pas',
  Kotek.Test in 'wyzwania\Kotek.Test.pas',

  Czas_Zmiana in 'wyzwania\Czas_Zmiana.pas',
  Czas_Zmiana.Test in 'wyzwania\Czas_Zmiana.Test.pas',

  Code02.HttpGet in 'zasoby\Code02.HttpGet.pas';

{$R *.res}

begin

  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize();
  Application.MainFormOnTaskbar := true;
  Application.CreateForm( TOkno_Form, Okno_Form );
  Application.Run();

end.
