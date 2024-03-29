unit frmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, StdCtrls, Buttons, ZConnection, IniFiles, LCLType,
  frmCompanias, frmRamos, frmClientes, frmProfesiones, frmFormasdePago,
  frmConexionMySQL, frmColaboradores, frmPolizas;

type

  { TformPrincipal }

  TformPrincipal = class(TForm)
    Label1: TLabel;
    lConexion: TLabel;
    MenuArchivo: TMenuItem;
    MenuListadoClientes: TMenuItem;
    N2: TMenuItem;
    MenuListadosPolizas: TMenuItem;
    MenuClientes: TMenuItem;
    MenuPolizas: TMenuItem;
    OpcionClientes: TMenuItem;
    OpcionPolizas: TMenuItem;
    N1: TMenuItem;
    OpcionConexionMySQL: TMenuItem;
    OpcionColaboradores: TMenuItem;
    OpcionFormasPago: TMenuItem;
    OpcionProfesiones: TMenuItem;
    OpcionRamos: TMenuItem;
    MenuMaestros: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    OpcionCompanias: TMenuItem;
    OptionSalir: TMenuItem;
    OptionAcercade: TMenuItem;
    OptionImpresora: TMenuItem;
    OptionAyuda: TMenuItem;
    menuPrincipal: TMainMenu;
    Panel1: TPanel;
    Panel2: TPanel;
    sbConexionOnOff: TSpeedButton;
    ZConnection1: TZConnection;
    procedure FormCreate(Sender: TObject);
    procedure OpcionClientesClick(Sender: TObject);
    procedure OpcionColaboradoresClick(Sender: TObject);
    procedure OpcionConexionMySQLClick(Sender: TObject);
    procedure OpcionFormasPagoClick(Sender: TObject);
    procedure OpcionPolizasClick(Sender: TObject);
    procedure OpcionProfesionesClick(Sender: TObject);
    procedure OpcionCompaniasClick(Sender: TObject);
    procedure OpcionRamosClick(Sender: TObject);
    procedure OptionSalirClick(Sender: TObject);
    procedure sbConexionOnOffClick(Sender: TObject);
    procedure ZConnection1AfterConnect(Sender: TObject);
    procedure ZConnection1AfterDisconnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.lfm}

{ TformPrincipal }

procedure TformPrincipal.OptionSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformPrincipal.sbConexionOnOffClick(Sender: TObject);
var
  ClaveUsuario: string;
  FicheroIni: TIniFile;
begin
  ClaveUsuario:='';

  if ZConnection1.Connected then begin
     // Cierre de TODOS los formularios abiertos, antes de desconectar de la BBDD
     if Assigned(formCompanias) then formCompanias.Close;
     if Assigned(formRamos) then formRamos.Close;
     if Assigned(formProfesiones) then formProfesiones.Close;
     if Assigned(formFormasdePago) then formFormasdePago.Close;
     if Assigned(formColaboradores) then formColaboradores.Close;
     if Assigned(formClientes) then formClientes.Close;
     if Assigned(formPolizas) then formPolizas.Close;

     ZConnection1.Connected:=False;
  end else begin
      if FileExists(ExtractFilePath(ParamStr(0))+'seguros.ini') then begin
         FicheroIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'seguros.ini');
         try
            ZConnection1.HostName := FicheroIni.ReadString('MYSQL', 'SERVIDOR', '');
            ZConnection1.Port     := StrToInt(FicheroIni.ReadString('MYSQL', 'PUERTO', ''));
            ZConnection1.Database := FicheroIni.ReadString('MYSQL', 'BASEDATOS', '');
            ZConnection1.User     := FicheroIni.ReadString('MYSQL', 'USUARIO', '');
         finally
            FreeAndNil(FicheroIni);
         end;
      end;
      if InputQuery('Conexión al servidor', 'Introduzca su Clave de Acceso', TRUE, ClaveUsuario) then
         ZConnection1.Password := ClaveUsuario;

      ZConnection1.Connected:=True;
  end;
end;

procedure TformPrincipal.ZConnection1AfterConnect(Sender: TObject);
begin
  lConexion.Font.Color:=clGreen;
  lConexion.Caption:='ONLINE';
end;

procedure TformPrincipal.ZConnection1AfterDisconnect(Sender: TObject);
begin
  lConexion.Font.Color:=clRed;
  lConexion.Caption:='OFFLINE';
end;

procedure TformPrincipal.OpcionCompaniasClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formCompanias) then
        formCompanias := TFormCompanias.Create(Application);
     formCompanias.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.OpcionProfesionesClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formProfesiones) then
        formProfesiones := TFormProfesiones.Create(Application);
     formProfesiones.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.OpcionFormasPagoClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formFormasdePago) then
        formFormasdePago := TFormFormasdePago.Create(Application);
     formFormasdePago.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.OpcionPolizasClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formPolizas) then
        formPolizas := TFormPolizas.Create(Application);
     formPolizas.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.OpcionConexionMySQLClick(Sender: TObject);
begin
  if not ZConnection1.Connected then begin
     if not Assigned(formConexionMySQL) then
        formConexionMySQL := TFormConexionMySQL.Create(Application);
     formConexionMySQL.Show;
  end else begin
       Application.MessageBox('Base de Datos CONECTADA'+CHR(13)+'Desconecte primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.OpcionColaboradoresClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formColaboradores) then
        formColaboradores := TFormColaboradores.Create(Application);
     formColaboradores.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.OpcionClientesClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formClientes) then
        formClientes := TFormClientes.Create(Application);
     formClientes.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  if ZConnection1.Connected then ZConnection1.Connected:=False;
end;

procedure TformPrincipal.OpcionRamosClick(Sender: TObject);
begin
  if ZConnection1.Connected then begin
     if not Assigned(formRamos) then
        formRamos := TFormRamos.Create(Application);
     formRamos.Show;
  end else begin
       Application.MessageBox('Base de Datos NO CONECTADA'+CHR(13)+'Establezca primero la conexión',
                              '¡Atención!', MB_ICONHAND);
  end;
end;

end.

