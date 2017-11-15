unit formPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  formCompanias;

type

  { TformularioPrincipal }

  TformularioPrincipal = class(TForm)
    MenuArchivo: TMenuItem;
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
    procedure OpcionItemCompaniasClick(Sender: TObject);
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
  formularioCompanias.Show;
end;

end.

