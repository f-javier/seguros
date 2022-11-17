unit frmpolizas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  DBCtrls, DBExtCtrls, DBGrids, frmPadre, DB, ZDataset, Types;

type

  { TformPolizas }

  TformPolizas = class(TformPadre)
    dbClientesapellido1: TStringField;
    dbClientesapellido2: TStringField;
    dbClientesid: TLongintField;
    dbClientesidentificador: TStringField;
    dbClientesnombre: TStringField;
    dbClientesnombrecompleto: TStringField;
    dbCompaniasid: TLongintField;
    dbCompaniasnombre: TStringField;
    dbdeEfecto: TDBDateEdit;
    dbdeFNCond: TDBDateEdit;
    dbdeFechaAnulacion: TDBDateEdit;
    dbdeFCCond: TDBDateEdit;
    dbdeVencimiento: TDBDateEdit;
    dbeAutosConductor1: TDBEdit;
    dbeDiverSitRiesgo: TDBEdit;
    dbeCoberturas: TDBEdit;
    dbeAutosPropietario: TDBEdit;
    dbeAutosConductor: TDBEdit;
    dbeAutosUso: TDBEdit;
    dbeAutosMarcaModelo: TDBEdit;
    dbeColaborador1: TDBEdit;
    dbeVidaRiesgo: TDBEdit;
    dbeDomicilioCobro: TDBEdit;
    dbeAutosMatricula: TDBEdit;
    dbeRamo: TDBEdit;
    dbeColaborador: TDBEdit;
    dbeTomadorId: TDBEdit;
    dbeCompaniaId: TDBEdit;
    dbePoliza: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    dblcColaborador: TDBLookupComboBox;
    dblcFormaDePago: TDBLookupComboBox;
    dblcTomador: TDBLookupComboBox;
    dblcTomador1: TDBLookupComboBox;
    dblcRamo: TDBLookupComboBox;
    dbmVidaCapitales: TDBMemo;
    dbmObservaciones: TDBMemo;
    dbmDiverCapitales: TDBMemo;
    dbPolizasautocarnetconductor: TDateField;
    dbPolizasautonacimconductor: TDateField;
    dbrgMotivoAnulacion: TDBRadioGroup;
    dbrgEnVigor: TDBRadioGroup;
    dbRamosid: TLongintField;
    dbRamosnombre: TStringField;
    dsFormasdePago: TDataSource;
    dsColaboradores: TDataSource;
    dsRamos: TDataSource;
    dsCompanias: TDataSource;
    dsClientes: TDataSource;
    dsPolizas: TDataSource;
    dbPolizas: TZQuery;
    dbPolizasautocoberturas: TStringField;
    dbPolizasautoconductor: TStringField;
    dbPolizasautomarcamodelo: TStringField;
    dbPolizasautomatricula: TStringField;
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
    procedure dbClientesCalcFields(DataSet: TDataSet);
    procedure dbPolizasNewRecord(DataSet: TDataSet);
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

procedure TformPolizas.dbClientesCalcFields(DataSet: TDataSet);
begin
  dbClientesnombrecompleto.Value := dbClientesapellido1.AsString + ' ' +
                                   dbClientesapellido2.AsString + ', ' +
                                   dbClientesnombre.AsString;
end;

procedure TformPolizas.dbPolizasNewRecord(DataSet: TDataSet);
begin
  dbPolizasenvigor.Value := 'S';
end;

end.

