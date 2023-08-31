unit UBusca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, UDM;

type
  TFrmBusca = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGrid: TcxGrid;
    BtnSelecionar: TcxButton;
    cxGridDBTableViewcli_codigo: TcxGridDBColumn;
    cxGridDBTableViewcli_nome: TcxGridDBColumn;
    cxGridDBTableViewcli_cpf: TcxGridDBColumn;
    cxGridDBTableViewcli_rg: TcxGridDBColumn;
    cxGridDBTableViewcli_cnpj: TcxGridDBColumn;
    cxGridDBTableViewcli_endereco: TcxGridDBColumn;
    cxGridDBTableViewcli_numero: TcxGridDBColumn;
    cxGridDBTableViewcli_cep: TcxGridDBColumn;
    cxGridDBTableViewcli_cidade: TcxGridDBColumn;
    cxGridDBTableViewcli_uf: TcxGridDBColumn;
    cxGridDBTableViewcli_limite_credito: TcxGridDBColumn;
    cxGridDBTableViewcli_razao_social: TcxGridDBColumn;
    cxGridDBTableViewcli_nome_fantasia: TcxGridDBColumn;
    cxGridDBTableViewcli_data_nascimento: TcxGridDBColumn;
    cxGridDBTableViewcli_dthr_cadastro: TcxGridDBColumn;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Selecionado(): Integer;
  end;

var
  FrmBusca: TFrmBusca;

implementation

{$R *.dfm}

procedure TFrmBusca.BtnSelecionarClick(Sender: TObject);
begin
  if Selecionado > 0 then
    ModalResult := mrOk;
end;

procedure TFrmBusca.FormShow(Sender: TObject);
begin
  DM.QryClientes.Close;
  DM.QryClientes.Open();
end;

function TFrmBusca.Selecionado: Integer;
  var Db : TcxGridDBTableView;
begin
  Result := 0;
  Db :=  cxGridDBTableView;
  if Db.DataController.RecordCount > 0 then
    Result := Db.DataController.Values[DB.DataController.FocusedRecordIndex, 0];
end;

end.
