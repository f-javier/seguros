unit frmRamos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBCtrls, Buttons, ComCtrls, StdCtrls, DBGrids, frmPadre, DB, ZDataset;

type

  { TformRamos }

  TformRamos = class(TformPadre)
    btnAplicarFiltro: TBitBtn;
    BusqNombre: TEdit;
    dbeComision: TDBEdit;
    dbeComisionAgente: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    DBGrid1: TDBGrid;
    dblcCompania: TDBLookupComboBox;
    dblcRamoDEC: TDBLookupComboBox;
    dsRamosDEC: TDataSource;
    dsCompanias: TDataSource;
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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    pc: TPageControl;
    tsControl: TTabSheet;
    tsDatos: TTabSheet;
    tsDatosEconomicos: TTabSheet;
    tsFiltro: TTabSheet;
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formRamos: TformRamos;

implementation

{$R *.lfm}

{ TformRamos }

procedure TformRamos.FormCreate(Sender: TObject);
begin
  pc.ActivePage := tsDatos;
end;

procedure TformRamos.FormDestroy(Sender: TObject);
begin
  dbRamos.Close;
  dbCompanias.Close;
  dbRamosDEC.Close;
end;

procedure TformRamos.btnAplicarFiltroClick(Sender: TObject);
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

end.

