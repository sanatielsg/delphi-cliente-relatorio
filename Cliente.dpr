program Cliente;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UUtil in 'UUtil.pas',
  UBusca in 'UBusca.pas' {FrmBusca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmBusca, FrmBusca);
  Application.Run;
end.
