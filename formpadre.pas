unit formpadre;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, Buttons;

type

  { TformularioPadre }

  TformularioPadre = class(TForm)
    DBNavigator1: TDBNavigator;
    PanelBotonera: TPanel;
    sbBuscar: TSpeedButton;
    sbImprimir: TSpeedButton;
    sbSalir: TSpeedButton;
    procedure sbSalirClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formularioPadre: TformularioPadre;

implementation

{$R *.lfm}

{ TformularioPadre }

procedure TformularioPadre.sbSalirClick(Sender: TObject);
begin
  Self.Close;
end;

end.

