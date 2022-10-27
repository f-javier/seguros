unit frmPadre;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, Buttons, db;

type

  { TformPadre }

  TformPadre = class(TForm)
    DBNavigator1: TDBNavigator;
    PanelBotonera: TPanel;
    sbBuscar: TSpeedButton;
    sbImprimir: TSpeedButton;
    sbSalir: TSpeedButton;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
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

procedure TformPadre.FormShow(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to Self.ComponentCount-1 do begin
      if Self.Components[i] is TDataSource then
         TDataSource(Self.Components[i]).DataSet.Open;
  end;
end;

procedure TformPadre.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  i: integer;
begin
  for i:=0 to Self.ComponentCount-1 do begin
      if Self.Components[i] is TDataSource then
         TDataSource(Self.Components[i]).DataSet.Close;
  end;
end;

end.

