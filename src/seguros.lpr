program seguros;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, frmPrincipal, frmPadre, frmCompanias, frmRamos, zcomponent,
  frmClientes, frmProfesiones, frmFormasdePago, frmconexionmysql,
  frmcolaboradores, frmpolizas
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.

