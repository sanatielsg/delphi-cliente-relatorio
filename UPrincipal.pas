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
  cxCalendar;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

end.
