unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    Conn: TFDConnection;
    DriverLink: TFDPhysPgDriverLink;
    Query: TFDQuery;
    QryAniversariantes: TFDQuery;
    DSAniversariantes: TDataSource;
    QryClientes: TFDQuery;
    DSClientes: TDataSource;
    QryClientescli_codigo: TIntegerField;
    QryClientescli_nome: TWideStringField;
    QryClientescli_cpf: TWideStringField;
    QryClientescli_rg: TWideStringField;
    QryClientescli_cnpj: TWideStringField;
    QryClientescli_endereco: TWideStringField;
    QryClientescli_numero: TWideStringField;
    QryClientescli_cep: TWideStringField;
    QryClientescli_cidade: TWideStringField;
    QryClientescli_uf: TWideStringField;
    QryClientescli_limite_credito: TBCDField;
    QryClientescli_razao_social: TWideStringField;
    QryClientescli_nome_fantasia: TWideStringField;
    QryClientescli_data_nascimento: TDateField;
    QryClientescli_dthr_cadastro: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
