unit frmCompanias;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, Buttons, ComCtrls, StdCtrls, DBGrids, frmPadre, db, ZDataset;

type

  { TformCompanias }

  TformCompanias = class(TformPadre)
    btnAplicarFiltro: TBitBtn;
    dbCompaniasadmincontacto: TStringField;
    dbCompaniasadminemail: TStringField;
    dbCompaniasadminfax: TStringField;
    dbCompaniasadmintelefono: TStringField;
    dbCompaniascodigopostal: TStringField;
    dbCompaniascomercialcontacto: TStringField;
    dbCompaniascomercialemail: TStringField;
    dbCompaniascomercialfax: TStringField;
    dbCompaniascomercialtelefono: TStringField;
    dbCompaniascontabcontacto: TStringField;
    dbCompaniascontabemail: TStringField;
    dbCompaniascontabfax: TStringField;
    dbCompaniascontabtelefono: TStringField;
    dbCompaniasdireccion: TStringField;
    dbCompaniasemail: TStringField;
    dbCompaniasfax: TStringField;
    dbCompaniasfechacreacion: TDateTimeField;
    dbCompaniasfechaultimamodificacion: TDateTimeField;
    dbCompaniasid: TLongintField;
    dbCompaniasnombre: TStringField;
    dbCompaniasnotas: TMemoField;
    dbCompaniaspaginaweb: TStringField;
    dbCompaniasperitocontacto: TStringField;
    dbCompaniasperitoemail: TStringField;
    dbCompaniasperitofax: TStringField;
    dbCompaniasperitotelefono: TStringField;
    dbCompaniaspoblacion: TStringField;
    dbCompaniasprodcontacto: TStringField;
    dbCompaniasprodemail: TStringField;
    dbCompaniasprodfax: TStringField;
    dbCompaniasprodtelefono: TStringField;
    dbCompaniasprovincia: TLongintField;
    dbCompaniassinicontacto: TStringField;
    dbCompaniassiniemail: TStringField;
    dbCompaniassinifax: TStringField;
    dbCompaniassinitelefono: TStringField;
    dbCompaniastelefono1: TStringField;
    dbCompaniastelefono2: TStringField;
    dbCompaniastelefonoasistencia: TMemoField;
    dbCompaniasusuariocreacion: TStringField;
    dbCompaniasusuarioultimamodificacion: TStringField;
    dbeAdminContacto: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    dbProdContacto: TDBEdit;
    dbeAdminEmail: TDBEdit;
    dbeProdEmail: TDBEdit;
    dbeProdFax: TDBEdit;
    dbeProdTelefono: TDBEdit;
    dbePeritoContacto: TDBEdit;
    dbePeritoEmail: TDBEdit;
    dbePeritoFax: TDBEdit;
    dbePeritoTelefono: TDBEdit;
    dbeContabContacto: TDBEdit;
    dbeSiniContacto: TDBEdit;
    dbeContabEmail: TDBEdit;
    dbeComercialContacto: TDBEdit;
    dbeComercialEmail: TDBEdit;
    dbeContabEmail1: TDBEdit;
    dbeContabFax: TDBEdit;
    dbeComercialFax: TDBEdit;
    dbeAdminTelefono: TDBEdit;
    dbeAdminFax: TDBEdit;
    dbeSiniFax: TDBEdit;
    dbeContabTelefono: TDBEdit;
    dbeComercialTelefono: TDBEdit;
    dbeSiniTelefono: TDBEdit;
    dbeEmail: TDBEdit;
    dbePaginaWeb: TDBEdit;
    dbeTelefono1: TDBEdit;
    dbePoblacion: TDBEdit;
    dbeDireccion: TDBEdit;
    dbeCodigoPostal: TDBEdit;
    dbeTelefono2: TDBEdit;
    dbeFax: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dbmNotas: TDBMemo;
    dbmTelefonosAsistencia: TDBMemo;
    dsCompanias: TDataSource;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    BusqNombre: TEdit;
    gbAdministracion: TGroupBox;
    gbUltimaModificacion: TGroupBox;
    gbProduccion: TGroupBox;
    gbPerito: TGroupBox;
    gbContabilidad: TGroupBox;
    gbComercial: TGroupBox;
    gbSiniestros: TGroupBox;
    gbCreacion: TGroupBox;
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
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pc: TPageControl;
    Panel1: TPanel;
    tsControl: TTabSheet;
    tsFiltro: TTabSheet;
    tsContactos1: TTabSheet;
    tsContactos2: TTabSheet;
    tsNotas: TTabSheet;
    tsDatos: TTabSheet;
    dbCompanias: TZQuery;
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formCompanias: TformCompanias;

implementation

{$R *.lfm}

{ TformCompanias }

procedure TformCompanias.FormCreate(Sender: TObject);
begin
  pc.ActivePage := tsDatos;
end;

procedure TformCompanias.btnAplicarFiltroClick(Sender: TObject);
begin
  if dbCompanias.Active then dbCompanias.Close;
  if btnAplicarFiltro.Caption='Aplicar Filtro' then begin
     dbCompanias.SQL.Clear;
     dbCompanias.SQL.Add('SELECT * FROM companias WHERE nombre LIKE "%'+BusqNombre.Text+'%" ORDER BY nombre');
     dbCompanias.Open;
     BusqNombre.Color:=clSilver;
     btnAplicarFiltro.Caption:='Eliminar Filtro';
  end else begin
      dbCompanias.SQL.Clear;
      dbCompanias.SQL.Add('SELECT * FROM companias ORDER BY nombre');
      dbCompanias.Open;
      BusqNombre.Text:='';
      BusqNombre.Color:=clDefault;
      btnAplicarFiltro.Caption:='Aplicar Filtro';
  end;
end;

end.

