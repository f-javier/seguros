unit frmconexionmysql;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, IniFiles;

type

  { TformConexionMySQL }

  TformConexionMySQL = class(TForm)
    btnCancelar: TBitBtn;
    btnAceptar: TBitBtn;
    eBaseDatos: TEdit;
    eUsuario: TEdit;
    eServidor: TEdit;
    ePuerto: TEdit;
    eContrasena: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  formConexionMySQL: TformConexionMySQL;

implementation

{$R *.lfm}

{ TformConexionMySQL }

procedure TformConexionMySQL.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TformConexionMySQL.btnAceptarClick(Sender: TObject);
var
    FicheroIni: TIniFile;
begin
    FicheroIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'seguros.ini');
    try
       FicheroIni.WriteString('MYSQL', 'SERVIDOR', eServidor.Text);
       FicheroIni.WriteString('MYSQL', 'PUERTO', ePuerto.Text);
       FicheroIni.WriteString('MYSQL', 'BASEDATOS', eBaseDatos.Text);
       FicheroIni.WriteString('MYSQL', 'USUARIO', eUsuario.Text);
    finally
       FreeAndNil(FicheroIni);
    end;
end;

procedure TformConexionMySQL.FormCreate(Sender: TObject);
var
   FicheroIni: TIniFile;
begin
   if FileExists(ExtractFilePath(ParamStr(0))+'seguros.ini') then begin
      FicheroIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'seguros.ini');
      try
         eServidor.Text  := FicheroIni.ReadString('MYSQL', 'SERVIDOR', '');
         ePuerto.Text    := FicheroIni.ReadString('MYSQL', 'PUERTO', '');
         eBaseDatos.Text := FicheroIni.ReadString('MYSQL', 'BASEDATOS', '');
         eUsuario.Text   := FicheroIni.ReadString('MYSQL', 'USUARIO', '');
      finally
         FreeAndNil(FicheroIni);
      end;
   end;
end;

end.

