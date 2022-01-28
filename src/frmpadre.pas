unit frmPadre;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, Buttons;

type

  { TformPadre }

  TformPadre = class(TForm)
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
  formPadre: TformPadre;

implementation

{$R *.lfm}

{ TformPadre }

procedure TformPadre.sbSalirClick(Sender: TObject);
begin
  Self.Close;
end;

end.

