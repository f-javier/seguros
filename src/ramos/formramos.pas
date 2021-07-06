unit formramos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBCtrls, Buttons, ComCtrls, StdCtrls, DBGrids, formpadre, DB, ZDataset;

type

  { TformularioRamos }

  TformularioRamos = class(TformularioPadre)
    btnAplicarFiltro: TBitBtn;
    BusqNombre: TEdit;
    dbeComision: TDBEdit;
    dbeComisionAgente: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    dblcRamoDEC: TDBLookupComboBox;
    dsRamosDEC: TDataSource;
    dsCompanias: TDataSource;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    dblcCompania: TDBLookupComboBox;
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
    dbCompanias: TZReadOnlyQuery;
    dbRamosDEC: TZReadOnlyQuery;
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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pc: TPageControl;
    tsFiltro: TTabSheet;
    tsControl: TTabSheet;
    tsDatosEconomicos: TTabSheet;
    tsDatos: TTabSheet;
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure dbRamosBeforePost(DataSet: TDataSet);
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
  pc.ActivePage := tsDatos;
  dbRamos.Open;
  dbCompanias.Open;
  dbRamosDEC.Open;
end;

procedure TformularioRamos.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  dbRamos.Close;
  dbCompanias.Close;
  dbRamosDEC.Close;
end;

procedure TformularioRamos.btnAplicarFiltroClick(Sender: TObject);
begin
  if dbRamos.Active then dbRamos.Close;
  if btnAplicarFiltro.Caption='Aplicar Filtro' then begin
     dbRamos.SQL.Clear;
     dbRamos.SQL.Add('SELECT * FROM ramos WHERE nombre LIKE "%'+BusqNombre.Text+'%" ORDER BY nombre');
     dbRamos.Open;
     BusqNombre.Color:=clSilver;
     btnAplicarFiltro.Caption:='Eliminar Filtro';
  end else begin
      dbRamos.SQL.Clear;
      dbRamos.SQL.Add('SELECT * FROM ramos ORDER BY nombre');
      dbRamos.Open;
      BusqNombre.Text:='';
      BusqNombre.Color:=clDefault;
      btnAplicarFiltro.Caption:='Aplicar Filtro';
  end;
end;

procedure TformularioRamos.dbRamosBeforePost(DataSet: TDataSet);
begin
  if (dsRamos.State in [dsInsert]) then begin
     dbRamosFechacreacion.Value:=now;
     dbRamosUsuariocreacion.Value:=dbRamos.Connection.User;
  end else begin
    dbRamosFechaultimamodificacion.Value:=now;
    dbRamosUsuarioultimamodificacion.Value:=dbCompanias.Connection.User;
  end;
end;

end.

