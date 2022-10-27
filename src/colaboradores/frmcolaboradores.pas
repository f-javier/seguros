unit frmColaboradores;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, StdCtrls, ComCtrls, DBGrids, frmPadre, DB, ZDataset;

type

  { TformColaboradores }

  TformColaboradores = class(TformPadre)
    btnAplicarFiltro: TBitBtn;
    BusqDireccion: TEdit;
    BusqIdentificador: TEdit;
    BusqNombre: TEdit;
    BusqPoblacion: TEdit;
    BusqTelefono: TEdit;
    dbeCodigoPostal: TDBEdit;
    dbeDireccion: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dbeEmail: TDBEdit;
    dbeFax: TDBEdit;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    dbePoblacion: TDBEdit;
    dbeTelefono1: TDBEdit;
    dbeTelefono2: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    dbmNotas: TDBMemo;
    dbProvincias: TZQuery;
    dbProvinciasid: TLongintField;
    dbProvinciasnombre: TStringField;
    dsColaboradores: TDataSource;
    dbColaboradores: TZQuery;
    dbColaboradorescodigopostal: TStringField;
    dbColaboradoresdireccion: TStringField;
    dbColaboradoresemail: TStringField;
    dbColaboradoresfax: TStringField;
    dbColaboradoresfechacreacion: TDateTimeField;
    dbColaboradoresfechaultimamodificacion: TDateTimeField;
    dbColaboradoresid: TLongintField;
    dbColaboradoresnombre: TStringField;
    dbColaboradoresobservaciones: TMemoField;
    dbColaboradorespoblacion: TStringField;
    dbColaboradoresprovincia: TLongintField;
    dbColaboradorestelefono1: TStringField;
    dbColaboradorestelefono2: TStringField;
    dbColaboradoresusuariocreacion: TStringField;
    dbColaboradoresusuarioultimamodificacion: TStringField;
    dsProvincias: TDataSource;
    gbCreacion: TGroupBox;
    gbUltimaModificacion: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pc: TPageControl;
    tsFiltro: TTabSheet;
    tsObservaciones: TTabSheet;
    tsControl: TTabSheet;
    tsDatos: TTabSheet;
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

  public

  end;

var
  formColaboradores: TformColaboradores;

implementation

{$R *.lfm}

{ TformColaboradores }

procedure TformColaboradores.FormCreate(Sender: TObject);
begin
  pc.ActivePage := tsDatos;
end;

procedure TformColaboradores.btnAplicarFiltroClick(Sender: TObject);
begin
  if dbColaboradores.Active then dbColaboradores.Close;
  if btnAplicarFiltro.Caption='Aplicar Filtro' then begin
     dbColaboradores.SQL.Clear;
     dbColaboradores.SQL.Add('SELECT * FROM colaboradores');
     dbColaboradores.SQL.Add('WHERE nombre LIKE "%'+BusqNombre.Text+'%" AND');
     dbColaboradores.SQL.Add('      id LIKE "%'+BusqIdentificador.Text+'%" AND');
     dbColaboradores.SQL.Add('      telefono1 LIKE "%'+BusqTelefono.Text+'%" AND');
     dbColaboradores.SQL.Add('      telefono2 LIKE "%'+BusqTelefono.Text+'%" AND');
     dbColaboradores.SQL.Add('      direccion LIKE "%'+BusqDireccion.Text+'%" AND');
     dbColaboradores.SQL.Add('      poblacion LIKE "%'+BusqPoblacion.Text+'%"');
     dbColaboradores.SQL.Add('ORDER BY nombre');
     showmessage(dbColaboradores.SQL.Text);
     dbColaboradores.Open;
     BusqNombre.Color:=clSilver;
     BusqIdentificador.Color:=clSilver;
     BusqTelefono.Color:=clSilver;
     BusqDireccion.Color:=clSilver;
     BusqPoblacion.Color:=clSilver;
     btnAplicarFiltro.Caption:='Eliminar Filtro';
  end else begin
      dbColaboradores.SQL.Clear;
      dbColaboradores.SQL.Add('SELECT * FROM colaboradores ORDER BY nombre');
      dbColaboradores.Open;
      BusqNombre.Text:='';
      BusqNombre.Color:=clDefault;
      BusqIdentificador.Color:=clDefault;
      BusqTelefono.Color:=clDefault;
      BusqDireccion.Color:=clDefault;
      BusqPoblacion.Color:=clDefault;
      btnAplicarFiltro.Caption:='Aplicar Filtro';
  end;
end;

procedure TformColaboradores.FormDestroy(Sender: TObject);
begin
  dbColaboradores.Close;
  dbProvincias.Close;
end;

end.

