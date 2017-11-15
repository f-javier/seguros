unit formcompanias;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, Buttons, ComCtrls, StdCtrls, formpadre, db, ZDataset;

type

  { TformularioCompanias }

  TformularioCompanias = class(TformularioPadre)
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
    dbeAdminContacto: TDBEdit;
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
    gbAdministracion: TGroupBox;
    gbProduccion: TGroupBox;
    gbPerito: TGroupBox;
    gbContabilidad: TGroupBox;
    gbComercial: TGroupBox;
    gbSiniestros: TGroupBox;
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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pc: TPageControl;
    Panel1: TPanel;
    tsContactos1: TTabSheet;
    tsContactos2: TTabSheet;
    tsNotas: TTabSheet;
    tsDatos: TTabSheet;
    dbCompanias: TZQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formularioCompanias: TformularioCompanias;

implementation

{$R *.lfm}

{ TformularioCompanias }

procedure TformularioCompanias.FormCreate(Sender: TObject);
begin
  pc.ActivePage := tsDatos;
end;

procedure TformularioCompanias.FormDeactivate(Sender: TObject);
begin
  dbCompanias.Close;
end;

procedure TformularioCompanias.FormActivate(Sender: TObject);
begin
  dbCompanias.Open;
end;

end.

