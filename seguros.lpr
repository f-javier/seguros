program seguros;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, formprincipal, formpadre, formcompanias, zcomponent
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TformularioPrincipal, formularioPrincipal);
  Application.CreateForm(TformularioCompanias, formularioCompanias);
  Application.Run;
end.

