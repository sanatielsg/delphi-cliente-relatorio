unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxClasses,
  dxSkinsForm, cxControls, cxContainer, cxEdit, cxGroupBox, cxMaskEdit, cxLabel,
  cxTextEdit, cxDropDownEdit, cxCalc, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar,
  System.IniFiles
  ;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    BtnNovo: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnRelatorio: TcxButton;
    BtnPesquisa: TcxButton;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    EdtNome: TcxTextEdit;
    cxLabel1: TcxLabel;
    MskCPF: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    EdtRG: TcxTextEdit;
    cxLabel4: TcxLabel;
    EdtRazaoSocial: TcxTextEdit;
    cxLabel5: TcxLabel;
    EdtNomeFantasia: TcxTextEdit;
    cxLabel6: TcxLabel;
    MskCNPJ: TcxMaskEdit;
    cxLabel7: TcxLabel;
    ClcLimiteCredito: TcxCalcEdit;
    cxLabel8: TcxLabel;
    EdtEndereco: TcxTextEdit;
    cxLabel9: TcxLabel;
    EdtNumero: TcxTextEdit;
    cxLabel10: TcxLabel;
    MskCEP: TcxMaskEdit;
    cxLabel11: TcxLabel;
    EdtCidade: TcxTextEdit;
    cxLabel12: TcxLabel;
    EdtUF: TcxTextEdit;
    DteNascimento: TcxDateEdit;
    cxLabel13: TcxLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Conectar();
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Config : TIniFile;

implementation

{$R *.dfm}

uses UDM;

{ TFrmPrincipal }

procedure TFrmPrincipal.Conectar;
 var Params : Array [0..6] of string;
begin
  Config := TIniFile.Create(GetCurrentDir+'\config.ini');
  try
    Params[0] := Config.ReadString('Banco','server','');
    Params[1] := Config.ReadString('Banco','port','');
    Params[2] := Config.ReadString('Banco','database','');
    Params[3] := Config.ReadString('Banco','username','');
    Params[4] := Config.ReadString('Banco','password','');
    Params[5] := Config.ReadString('Banco','vendorhome','');
    Params[6] := Config.ReadString('Banco','vendorlib','');
  finally
    FreeAndNil(Config);
  end;

  DM.Conn.Params.Add('Server='+Params[0]);
  DM.Conn.Params.Add('Port='+Params[1]);
  DM.Conn.Params.Add('Database='+Params[2]);
  DM.Conn.Params.Add('User_Name='+Params[3]);
  DM.Conn.Params.Add('Password='+Params[4]);
  DM.DriverLink.VendorHome := Params[5];
  DM.DriverLink.VendorLib := Params[6];

  try
    DM.Conn.Connected := True;
  except
    on E:Exception do
    begin
      ShowMessage('Ocorreu um erro ao conectar, verifique o arquivo config.ini! ::'+E.Message);
      Application.Terminate;
    end;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
 Conectar;
end;

end.