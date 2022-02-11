unit frmFormasdePago;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, ComCtrls, StdCtrls, DBGrids, frmPadre, DB, ZDataset;

type

  { TformFormasdePago }

  TformFormasdePago = class(TformPadre)
    btnAplicarFiltro: TBitBtn;
    BusqNombre: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    dbFormasPagofechacreacion: TDateTimeField;
    dbFormasPagofechaultimamodificacion: TDateTimeField;
    dbFormasPagoid: TLongintField;
    dbFormasPagonombre: TStringField;
    dbFormasPagousuariocreacion: TStringField;
    dbFormasPagousuarioultimamodificacion: TStringField;
    DBGrid1: TDBGrid;
    dbFormasPago: TZQuery;
    dsFormasPago: TDataSource;
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
    tsControl: TTabSheet;
    tsDatos: TTabSheet;
    tsFiltro: TTabSheet;
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

  public

  end;

var
  formFormasdePago: TformFormasdePago;

implementation

{$R *.lfm}

{ TformFormasdePago }

procedure TformFormasdePago.FormCreate(Sender: TObject);
begin
  pc.ActivePage:=tsDatos;
  dbFormasPago.Open;
end;

procedure TformFormasdePago.FormDestroy(Sender: TObject);
begin
  dbFormasPago.Close;
end;

procedure TformFormasdePago.btnAplicarFiltroClick(Sender: TObject);
begin
  if dbFormasPago.Active then dbFormasPago.Close;
  if btnAplicarFiltro.Caption='Aplicar Filtro' then begin
     dbFormasPago.SQL.Clear;
     dbFormasPago.SQL.Add('SELECT * FROM formasdepago WHERE nombre LIKE "%'+BusqNombre.Text+'%" ORDER BY nombre');
     dbFormasPago.Open;
     BusqNombre.Color:=clSilver;
     btnAplicarFiltro.Caption:='Eliminar Filtro';
  end else begin
      dbFormasPago.SQL.Clear;
      dbFormasPago.SQL.Add('SELECT * FROM formasdepago ORDER BY nombre');
      dbFormasPago.Open;
      BusqNombre.Text:='';
      BusqNombre.Color:=clDefault;
      btnAplicarFiltro.Caption:='Aplicar Filtro';
  end;
end;

end.

