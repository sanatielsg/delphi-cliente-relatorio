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

  TCliente = class
    private
      FCodigo        : integer;
      FNome          : string;
      FCPF           : string;
      FRG            : string;
      FCNPJ          : string;
      FTipoPessoa    :  integer;
      FEndereco      : string;
      FNumero        : string;
      FCEP           : string;
      FCidade        : string;
      FUF            : string;
      FLimiteCredito : Double;
      FDtHrCadastro  : string;
      FDataNascimento: TDate;
      FRazaoSocial   : string;
      FNomeFantasia  : string;
    public
      property Codigo          : integer read FCodigo         write FCodigo ;
      property Nome            : string read  FNome           write FNome          ;
      property CPF             : string read  FCPF            write FCPF           ;
      property RG              : string read  FRG             write FRG            ;
      property CNPJ            : string read  FCNPJ           write FCNPJ          ;
      property TipoPessoa      : integer read FTipoPessoa     write FTipoPessoa    ;
      property Endereco        : string read  FEndereco       write FEndereco      ;
      property Numero          : string read  FNumero         write FNumero        ;
      property CEP             : string read  FCEP            write FCEP           ;
      property Cidade          : string read  FCidade         write FCidade        ;
      property UF              : string read  FUF             write FUF            ;
      property LimiteCredito   : Double read  FLimiteCredito  write FLimiteCredito ;
      property DtHrCadastro    : string read  FDtHrCadastro   write FDtHrCadastro  ;
      property DataNascimento  : TDate read   FDataNascimento write FDataNascimento;
      property RazaoSocial     : string read  FRazaoSocial    write FRazaoSocial;
      property NomeFantasia    : string read  FNomeFantasia   write FNomeFantasia;
  end;

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
