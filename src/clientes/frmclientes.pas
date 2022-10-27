unit frmClientes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, StdCtrls, DBGrids, ComCtrls, frmPadre, DB, ZDataset;

type

  { TformClientes }

  TformClientes = class(TformPadre)
    btnAplicarFiltro: TBitBtn;
    BusqNombre: TEdit;
    BusqIdentificador: TEdit;
    BusqDireccion: TEdit;
    BusqTelefono: TEdit;
    BusqPoblacion: TEdit;
    dbcbEnviarPublicidad: TDBCheckBox;
    dbcbImpresoLOPD: TDBCheckBox;
    dbcbFirmadoLOPD: TDBCheckBox;
    dbClientesnombreprovincia: TStringField;
    dbeCarnetB: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    dbeEmail2: TDBEdit;
    dbeEmail3: TDBEdit;
    dbeEmail4: TDBEdit;
    dbeFNacimiento: TDBEdit;
    dbeEmail1: TDBEdit;
    DBGrid1: TDBGrid;
    dbProvinciasid: TLongintField;
    dbProvinciasnombre: TStringField;
    dbrgFormaContacto: TDBRadioGroup;
    dbrgEstado: TDBRadioGroup;
    dsProvincias: TDataSource;
    dbClientesalias: TStringField;
    dbClientesapellido1: TStringField;
    dbClientesapellido2: TStringField;
    dbClientescapacidadahorro: TFloatField;
    dbClientescodigopostal: TStringField;
    dbClientescolaborador: TLongintField;
    dbClientescomercial: TBlobField;
    dbClientescuentabancaria: TStringField;
    dbClientesdetalle: TBlobField;
    dbClientesdireccion: TStringField;
    dbClientesemail: TStringField;
    dbClientesenviarpublicidad: TStringField;
    dbClientesestado: TStringField;
    dbClientesestadocivil: TStringField;
    dbClientesfax: TStringField;
    dbClientesfechaalta: TDateField;
    dbClientesfechabaja: TDateField;
    dbClientesfechacarneta: TDateField;
    dbClientesfechacarneta1: TDateField;
    dbClientesfechacarneta2: TDateField;
    dbClientesfechacarnetb: TDateField;
    dbClientesfechacarnetc: TDateField;
    dbClientesfechacarnetd: TDateField;
    dbClientesfechacreacion: TDateTimeField;
    dbClientesfechadevalidez: TDateField;
    dbClientesfechanacimiento: TDateField;
    dbClientesfechaultimamodificacion: TDateTimeField;
    dbClientesfirmadolopd: TStringField;
    dbClientesformacontacto: TStringField;
    dbClienteshijos: TLongintField;
    dbClientesid: TLongintField;
    dbClientesidentificador: TStringField;
    dbClientesimpresolopd: TStringField;
    dbClientesincidencias: TBlobField;
    dbClientesmastelefonos: TBlobField;
    dbClientesnombre: TStringField;
    dbClientesnombrecompleto: TStringField;
    dbClientesobservaciones: TBlobField;
    dbClientespoblacion: TStringField;
    dbClientesprofesion: TLongintField;
    dbClientesprovincia: TLongintField;
    dbClientesrentaanual: TFloatField;
    dbClientessexo: TStringField;
    dbClientessituacionlaboral: TStringField;
    dbClientestelefono1: TStringField;
    dbClientestelefono2: TStringField;
    dbClientestipodocumento: TStringField;
    dbClientesusuariocreacion: TStringField;
    dbClientesusuarioultimamodificacion: TStringField;
    dbClientesvalidezcarneta: TDateField;
    dbClientesvalidezcarneta1: TDateField;
    dbClientesvalidezcarneta2: TDateField;
    dbClientesvalidezcarnetb: TDateField;
    dbClientesvalidezcarnetc: TDateField;
    dbClientesvalidezcarnetd: TDateField;
    dbClientesweb: TStringField;
    dbcbIdentificador: TDBComboBox;
    dbeNombre: TDBEdit;
    dbeApellido1: TDBEdit;
    dbeApellido2: TDBEdit;
    dbeIdentificador: TDBEdit;
    dbeFechaValidez: TDBEdit;
    dbeValCarnetB: TDBEdit;
    dbeCarnetC: TDBEdit;
    dbeValCarnetC: TDBEdit;
    dbeCarnetD: TDBEdit;
    dbeValCarnetD: TDBEdit;
    dbeCodigoPostal: TDBEdit;
    dbeCarnetA: TDBEdit;
    dbeValCarnetA: TDBEdit;
    dbeCarnetA1: TDBEdit;
    dbeValCarnetA1: TDBEdit;
    dbeCarnetA2: TDBEdit;
    dbeValCarnetA2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dbeFax: TDBEdit;
    dbePoblacion: TDBEdit;
    dbeDireccion: TDBEdit;
    dbeTelefono1: TDBEdit;
    dbeTelefono2: TDBEdit;
    dblcProvincia: TDBLookupComboBox;
    dbmMasTelefonos: TDBMemo;
    dbmDetalles: TDBMemo;
    dbmObservaciones: TDBMemo;
    dbmTelefonosAsistencia3: TDBMemo;
    dbmTelefonosAsistencia4: TDBMemo;
    dsClientes: TDataSource;
    dbClientes: TZQuery;
    gbCreacion: TGroupBox;
    gbUltimaModificacion: TGroupBox;
    gbLOPD: TGroupBox;
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
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label8: TLabel;
    lEstado: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
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
    pc: TPageControl;
    Panel1: TPanel;
    tsControl: TTabSheet;
    tsFiltro: TTabSheet;
    tsComercial: TTabSheet;
    tsIncidencias: TTabSheet;
    tsTextos: TTabSheet;
    tsPersonales: TTabSheet;
    tsFechas: TTabSheet;
    tsDatos: TTabSheet;
    dbProvincias: TZQuery;
    procedure ActualizarEstado(Sender: TObject; Field: TField);
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure dbClientesCalcFields(DataSet: TDataSet);
    procedure dbClientesNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

  public

  end;

var
  formClientes: TformClientes;

implementation

{$R *.lfm}

{ TformClientes }

procedure TformClientes.FormCreate(Sender: TObject);
begin
  pc.ActivePage := tsDatos;
end;

procedure TformClientes.FormDestroy(Sender: TObject);
begin
  dbClientes.Close;
  dbProvincias.Close;
end;

procedure TformClientes.dbClientesCalcFields(DataSet: TDataSet);
begin
  dbClientesnombrecompleto.Text:=dbClientesnombre.AsString+' '+
                                 dbClientesapellido1.AsString+' '+
                                 dbClientesapellido2.AsString;
end;

procedure TformClientes.dbClientesNewRecord(DataSet: TDataSet);
begin
  dbClientesFechaalta.Value:=DATE();
  dbClientesEstado.Value:='A';
  dbClientesFormaContacto.Value:='T';
  dbClientesEnviarPublicidad.Value:='N';
  dbClientesImpresoLOPD.Value:='N';
  dbClientesFirmadoLOPD.Value:='N';
end;

procedure TformClientes.btnAplicarFiltroClick(Sender: TObject);
begin
  if dbClientes.Active then dbClientes.Close;
  if btnAplicarFiltro.Caption='Aplicar Filtro' then begin
     dbClientes.SQL.Clear;
     dbClientes.SQL.Add('SELECT * FROM clientes');
     dbClientes.SQL.Add('WHERE nombre LIKE "%'+BusqNombre.Text+'%" AND');
     dbClientes.SQL.Add('      identificador LIKE "%'+BusqIdentificador.Text+'%" AND');
     dbClientes.SQL.Add('      telefono1 LIKE "%'+BusqTelefono.Text+'%" AND');
     dbClientes.SQL.Add('      telefono2 LIKE "%'+BusqTelefono.Text+'%" AND');
     dbClientes.SQL.Add('      direccion LIKE "%'+BusqDireccion.Text+'%" AND');
     dbClientes.SQL.Add('      poblacion LIKE "%'+BusqPoblacion.Text+'%"');
     dbClientes.SQL.Add('ORDER BY nombre');
     dbClientes.Open;
     BusqNombre.Color:=clSilver;
     BusqIdentificador.Color:=clSilver;
     BusqTelefono.Color:=clSilver;
     BusqDireccion.Color:=clSilver;
     BusqPoblacion.Color:=clSilver;
     btnAplicarFiltro.Caption:='Eliminar Filtro';
  end else begin
      dbClientes.SQL.Clear;
      dbClientes.SQL.Add('SELECT * FROM clientes ORDER BY nombre');
      dbClientes.Open;
      BusqNombre.Text:='';
      BusqNombre.Color:=clDefault;
      BusqIdentificador.Color:=clDefault;
      BusqTelefono.Color:=clDefault;
      BusqDireccion.Color:=clDefault;
      BusqPoblacion.Color:=clDefault;
      btnAplicarFiltro.Caption:='Aplicar Filtro';
  end;
end;

procedure TformClientes.ActualizarEstado(Sender: TObject; Field: TField);
begin
  if dbClientesEstado.AsString='L' then begin
     lEstado.Font.Color:=clRed;
     lEstado.Caption:='ELIMINADO LOPD';
     tsDatos.TabVisible:=False;
     tsFechas.TabVisible:=False;
     tsPersonales.TabVisible:=False;
     tsTextos.TabVisible:=False;
     tsIncidencias.TabVisible:=False;
     tsComercial.TabVisible:=False;
  end else if dbClientesEstado.AsString='A' then begin
     lEstado.Font.Color:=clGreen;
     lEstado.Caption:='ACTIVO';
     tsDatos.TabVisible:=True;
     tsFechas.TabVisible:=True;
     tsPersonales.TabVisible:=True;
     tsTextos.TabVisible:=True;
     tsIncidencias.TabVisible:=True;
     tsComercial.TabVisible:=True;
  end else begin
      lEstado.Font.Color:=clFuchsia;
      lEstado.Caption:='INACTIVO';
      tsDatos.TabVisible:=True;
      tsFechas.TabVisible:=True;
      tsPersonales.TabVisible:=True;
      tsTextos.TabVisible:=True;
      tsIncidencias.TabVisible:=True;
      tsComercial.TabVisible:=True;
  end;
end;

end.

