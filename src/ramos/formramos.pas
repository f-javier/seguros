unit formramos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBCtrls, Buttons, formpadre, DB, ZDataset;

type

  { TformularioRamos }

  TformularioRamos = class(TformularioPadre)
    dbRamoscomision: TFloatField;
    dbRamoscomisionagente: TFloatField;
    dbRamoscompaniaid: TLongintField;
    dbRamosfechacreacion: TDateTimeField;
    dbRamosfechaultimamodificacion: TDateTimeField;
    dbRamosid: TLongintField;
    dbRamosnombre: TStringField;
    dbRamosramodecid: TLongintField;
    dbRamosusuariocreacion: TStringField;
    dbRamosusuarioultimamodificacion: TStringField;
    dsRamos: TDataSource;
    dbRamos: TZQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formularioRamos: TformularioRamos;

implementation

{$R *.lfm}

{ TformularioRamos }

procedure TformularioRamos.FormCreate(Sender: TObject);
begin
  dbRamos.Open;
end;

procedure TformularioRamos.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  dbRamos.Close;
end;

end.

