unit frmpolizas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  DBCtrls, frmPadre, DB, ZDataset;

type

  { TformPolizas }

  TformPolizas = class(TformPadre)
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    dsFormasdePago: TDataSource;
    dsColaboradores: TDataSource;
    dsRamos: TDataSource;
    dsCompanias: TDataSource;
    dsClientes: TDataSource;
    dsPolizas: TDataSource;
    dbPolizas: TZQuery;
    dbPolizasautocarnetconductor: TStringField;
    dbPolizasautocoberturas: TStringField;
    dbPolizasautoconductor: TStringField;
    dbPolizasautomarcamodelo: TStringField;
    dbPolizasautomatricula: TStringField;
    dbPolizasautonacimconductor: TStringField;
    dbPolizasautonifconductor: TStringField;
    dbPolizasautopropietario: TStringField;
    dbPolizasautouso: TStringField;
    dbPolizascolaboradorid: TLongintField;
    dbPolizascompaniaid: TLongintField;
    dbPolizasdiversoscapitales: TMemoField;
    dbPolizasdiversosriesgo: TStringField;
    dbPolizasdomiciliocobro: TStringField;
    dbPolizasefecto: TDateField;
    dbPolizasenvigor: TStringField;
    dbPolizasfechaanulacion: TDateField;
    dbPolizasfechacreacion: TDateTimeField;
    dbPolizasfechaultimamodificacion: TDateTimeField;
    dbPolizasformadepagoid: TLongintField;
    dbPolizasid: TLongintField;
    dbPolizasmotivoanulacion: TStringField;
    dbPolizasobservaciones: TMemoField;
    dbPolizaspoliza: TStringField;
    dbPolizasramoid: TLongintField;
    dbPolizastomadorid: TLongintField;
    dbPolizasusuariocreacion: TStringField;
    dbPolizasusuarioultimamodificacion: TStringField;
    dbPolizasvencimiento: TDateField;
    dbPolizasvidaasegurado: TStringField;
    dbPolizasvidacapitales: TMemoField;
    dbClientes: TZQuery;
    dbCompanias: TZQuery;
    dbRamos: TZQuery;
    dbColaboradores: TZQuery;
    dbFormasdePago: TZQuery;
    gbCreacion: TGroupBox;
    gbUltimaModificacion: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pc: TPageControl;
    tsFiltro: TTabSheet;
    tsControl: TTabSheet;
    tsObservaciones: TTabSheet;
    tsVidaRiesgo: TTabSheet;
    tsDiversos: TTabSheet;
    tsVehiculo: TTabSheet;
    tsDatos: TTabSheet;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  formPolizas: TformPolizas;

implementation

{$R *.lfm}

{ TformPolizas }

procedure TformPolizas.FormCreate(Sender: TObject);
begin
  inherited;
  pc.ActivePage:=tsDatos;
end;

end.

