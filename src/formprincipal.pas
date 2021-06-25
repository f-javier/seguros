unit formPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ZConnection, ZDataset,
  formCompanias, formRamos;

type

  { TformularioPrincipal }

  TformularioPrincipal = class(TForm)
    MenuArchivo: TMenuItem;
    OpcionItemRamos: TMenuItem;
    MenuMaestros: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    OpcionItemCompanias: TMenuItem;
    OptionItemSalir: TMenuItem;
    OptionItemAcercade: TMenuItem;
    OptionItemImpresora: TMenuItem;
    OptionItemAyuda: TMenuItem;
    menuPrincipal: TMainMenu;
    ZConnection1: TZConnection;
    procedure OpcionItemCompaniasClick(Sender: TObject);
    procedure OpcionItemRamosClick(Sender: TObject);
    procedure OptionItemSalirClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formularioPrincipal: TformularioPrincipal;

implementation

{$R *.lfm}

{ TformularioPrincipal }

procedure TformularioPrincipal.OptionItemSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformularioPrincipal.OpcionItemCompaniasClick(Sender: TObject);
begin
  if not Assigned(formularioCompanias) then
     formularioCompanias := TFormularioCompanias.Create(Application);
  formularioCompanias.Show;
end;

procedure TformularioPrincipal.OpcionItemRamosClick(Sender: TObject);
begin
  if not Assigned(formularioRamos) then
     formularioRamos := TFormularioRamos.Create(Application);
  formularioRamos.Show;
end;

end.

