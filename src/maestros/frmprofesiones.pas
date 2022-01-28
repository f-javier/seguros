unit frmProfesiones;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, ComCtrls, StdCtrls, DBGrids, frmPadre, DB, ZDataset;

type

  { TformProfesiones }

  TformProfesiones = class(TformPadre)
    btnAplicarFiltro: TBitBtn;
    BusqNombre: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    DBGrid1: TDBGrid;
    dsProfesiones: TDataSource;
    gbCreacion: TGroupBox;
    gbUltimaModificacion: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    pc: TPageControl;
    tsFiltro: TTabSheet;
    tsControl: TTabSheet;
    tsDatos: TTabSheet;
    dbProfesiones: TZQuery;
    dbProfesionesfechacreacion: TDateTimeField;
    dbProfesionesfechaultimamodificacion: TDateTimeField;
    dbProfesionesid: TLongintField;
    dbProfesionesnombre: TStringField;
    dbProfesionesusuariocreacion: TStringField;
    dbProfesionesusuarioultimamodificacion: TStringField;
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  formProfesiones: TformProfesiones;

implementation

{$R *.lfm}

{ TformProfesiones }

procedure TformProfesiones.FormCreate(Sender: TObject);
begin
  pc.ActivePage := tsDatos;
  dbProfesiones.Open;
end;

procedure TformProfesiones.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  dbProfesiones.Close;
end;

procedure TformProfesiones.btnAplicarFiltroClick(Sender: TObject);
begin
  if dbProfesiones.Active then dbProfesiones.Close;
  if btnAplicarFiltro.Caption='Aplicar Filtro' then begin
     dbProfesiones.SQL.Clear;
     dbProfesiones.SQL.Add('SELECT * FROM profesiones WHERE nombre LIKE "%'+BusqNombre.Text+'%" ORDER BY nombre');
     dbProfesiones.Open;
     BusqNombre.Color:=clSilver;
     btnAplicarFiltro.Caption:='Eliminar Filtro';
  end else begin
      dbProfesiones.SQL.Clear;
      dbProfesiones.SQL.Add('SELECT * FROM profesiones ORDER BY nombre');
      dbProfesiones.Open;
      BusqNombre.Text:='';
      BusqNombre.Color:=clDefault;
      btnAplicarFiltro.Caption:='Aplicar Filtro';
  end;
end;

end.

