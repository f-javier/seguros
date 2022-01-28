unit frmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ZConnection, ZDataset,
  frmCompanias, frmRamos, frmClientes, frmProfesiones, frmFormasdePago;

type

  { TformPrincipal }

  TformPrincipal = class(TForm)
    MenuArchivo: TMenuItem;
    MenuItem1: TMenuItem;
    OpcionItemFormasPago: TMenuItem;
    OpcionItemProfesiones: TMenuItem;
    OpcionItemClientes: TMenuItem;
    OpcionItemRamos: TMenuItem;
    MenuMaestros: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    OpcionItemCompanias: TMenuItem;
    OptionItemSalir: TMenuItem;
    OptionItemAcercade: TMenuItem;
    OptionItemImpresora: TMenuItem;
    OptionItemAyuda: TMenuItem;
    menuPrincipal: TMainMenu;
    ZConnection1: TZConnection;
    procedure OpcionItemFormasPagoClick(Sender: TObject);
    procedure OpcionItemProfesionesClick(Sender: TObject);
    procedure OpcionItemClientesClick(Sender: TObject);
    procedure OpcionItemCompaniasClick(Sender: TObject);
    procedure OpcionItemRamosClick(Sender: TObject);
    procedure OptionItemSalirClick(Sender: TObject);
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

procedure TformPrincipal.OptionItemSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformPrincipal.OpcionItemCompaniasClick(Sender: TObject);
begin
  if not Assigned(formCompanias) then
     formCompanias := TFormCompanias.Create(Application);
  formCompanias.Show;
end;

procedure TformPrincipal.OpcionItemClientesClick(Sender: TObject);
begin
  if not Assigned(formClientes) then
     formClientes := TFormClientes.Create(Application);
  formClientes.Show;
end;

procedure TformPrincipal.OpcionItemProfesionesClick(Sender: TObject);
begin
  if not Assigned(formProfesiones) then
     formProfesiones := TFormProfesiones.Create(Application);
  formProfesiones.Show;
end;

procedure TformPrincipal.OpcionItemFormasPagoClick(Sender: TObject);
begin
  if not Assigned(formFormasdePago) then
     formFormasdePago := TFormFormasdePago.Create(Application);
  formFormasdePago.Show;
end;

procedure TformPrincipal.OpcionItemRamosClick(Sender: TObject);
begin
  if not Assigned(formRamos) then
     formRamos := TFormRamos.Create(Application);
  formRamos.Show;
end;

end.

