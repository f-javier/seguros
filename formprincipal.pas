unit formPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TformularioPrincipal }

  TformularioPrincipal = class(TForm)
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    OptionItem0104: TMenuItem;
    OptionItem0103: TMenuItem;
    OptionItem0102: TMenuItem;
    OptionItem0101: TMenuItem;
    menuPrincipal: TMainMenu;
    procedure OptionItem0104Click(Sender: TObject);
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

procedure TformularioPrincipal.OptionItem0104Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

