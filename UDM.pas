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
    function GetCliente(Value: Integer): TCliente;
    function Delete(Value: Integer): Integer;
    function Insert(Value: TCliente): Integer;
    function Update(Value: TCliente): Integer;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TDM.Delete(Value: Integer): Integer;
  var sqlTmp : string;
begin
  Result := 0;
  sqlTmp := 'delete from cliente where cli_codigo = :cli_codigo';
  with Query do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqlTmp);
    ParamByName('cli_codigo').AsInteger := Value;
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDM.GetCliente(Value: Integer): TCliente;
  var sqlTmp : string;
      Cliente : TCliente;
begin
  Cliente := Nil;
  sqlTmp := 'select * from cliente where cli_codigo = :cli_codigo ';

  with Query do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqlTmp);
    ParamByName('cli_codigo').AsInteger := Value;
    Open();
    if RecordCount > 0 then
    begin
      Cliente := TCliente.Create;
      with Cliente do
      begin
        Codigo         := FieldByName('cli_codigo').AsInteger;
        Nome           := FieldByName('cli_nome').AsString;
        CPF            := FieldByName('cli_cpf').AsString;
        RG             := FieldByName('cli_rg').AsString;
        DataNascimento := FieldByName('cli_data_nascimento').AsDateTime;
        RazaoSocial    := FieldByName('cli_razao_social').AsString;
        NomeFantasia   := FieldByName('cli_nome_fantasia').AsString;
        CNPJ           := FieldByName('cli_cnpj').AsString;
        Endereco       := FieldByName('cli_endereco').AsString;
        Numero         := FieldByName('cli_numero').AsString;
        CEP            := FieldByName('cli_cep').AsString;
        Cidade         := FieldByName('cli_cidade').AsString;
        UF             := FieldByName('cli_uf').AsString;
        LimiteCredito  := FieldByName('cli_limite_credito').AsFloat;
      end;
    end;
  end;
  Result := Cliente;
end;

function TDM.Insert(Value: TCliente): Integer;
  var sqlTmp : string;
begin
  Result := 0;
  sqlTmp := ' insert into cliente (  '
       + '  cli_nome              '
       + ' ,cli_cpf               '
       + ' ,cli_rg                '
       + ' ,cli_cnpj              '
       + ' ,cli_tipo_pessoa       '
       + ' ,cli_endereco          '
       + ' ,cli_numero            '
       + ' ,cli_cep               '
       + ' ,cli_cidade            '
       + ' ,cli_uf                '
       + ' ,cli_limite_credito    '
       + ' ,cli_razao_social      '
       + ' ,cli_nome_fantasia     '
       + ' ,cli_data_nascimento   '
       + ') values (              '
       + '  :cli_nome             '
       + ' ,:cli_cpf              '
       + ' ,:cli_rg               '
       + ' ,:cli_cnpj             '
       + ' ,:cli_tipo_pessoa      '
       + ' ,:cli_endereco         '
       + ' ,:cli_numero           '
       + ' ,:cli_cep              '
       + ' ,:cli_cidade           '
       + ' ,:cli_uf               '
       + ' ,:cli_limite_credito   '
       + ' ,:cli_razao_social     '
       + ' ,:cli_nome_fantasia    '
       + ' ,:cli_data_nascimento  '
       + ' ) ';

  with Query do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqlTmp);
    ParamByName('cli_nome').AsString          := Value.Nome;
    ParamByName('cli_cpf').AsString           := Value.CPF;
    ParamByName('cli_rg').AsString            := Value.RG;
    ParamByName('cli_cnpj').AsString          := Value.CNPJ;
    ParamByName('cli_endereco').AsString      := Value.Endereco;
    ParamByName('cli_numero').AsString        := Value.Numero;
    ParamByName('cli_cep').AsString           := Value.CEP;
    ParamByName('cli_cidade').AsString        := Value.Cidade;
    ParamByName('cli_uf').AsString            := Value.UF;
    ParamByName('cli_limite_credito').AsFloat := Value.LimiteCredito;
    ParamByName('cli_razao_social').AsString  := Value.RazaoSocial;
    ParamByName('cli_nome_fantasia').AsString := Value.NomeFantasia;
    ParamByName('cli_data_nascimento').AsDate := Value.DataNascimento;
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDM.Update(Value: TCliente): Integer;
  var sqlTmp : string;
begin
  Result := 0;
  sqlTMp :=  'update cliente                              '
           + 'set cli_nome         = :cli_nome            '
           + ',cli_cpf             = :cli_cpf             '
           + ',cli_rg              = :cli_rg              '
           + ',cli_cnpj            = :cli_cnpj            '
           + ',cli_endereco        = :cli_endereco        '
           + ',cli_numero          = :cli_numero          '
           + ',cli_cep             = :cli_cep             '
           + ',cli_cidade          = :cli_cidade          '
           + ',cli_uf              = :cli_uf              '
           + ',cli_limite_credito  = :cli_limite_credito  '
           + ',cli_razao_social    = :cli_razao_social    '
           + ',cli_nome_fantasia   = :cli_nome_fantasia   '
           + ',cli_data_nascimento = :cli_data_nascimento '
           + 'where cli_codigo = :cli_codigo              ';
  with Query do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sqlTmp);
      ParamByName('cli_codigo').AsInteger       := Value.Codigo;
      ParamByName('cli_nome').AsString          := Value.Nome;
      ParamByName('cli_cpf').AsString           := Value.CPF;
      ParamByName('cli_rg').AsString            := Value.RG;
      ParamByName('cli_cnpj').AsString          := Value.CNPJ;
      ParamByName('cli_endereco').AsString      := Value.Endereco;
      ParamByName('cli_numero').AsString        := Value.Numero;
      ParamByName('cli_cep').AsString           := Value.CEP;
      ParamByName('cli_cidade').AsString        := Value.Cidade;
      ParamByName('cli_uf').AsString            := Value.UF;
      ParamByName('cli_limite_credito').AsFloat := Value.LimiteCredito;
      ParamByName('cli_razao_social').AsString  := Value.RazaoSocial;
      ParamByName('cli_nome_fantasia').AsString := Value.NomeFantasia;
      ParamByName('cli_data_nascimento').AsDate := Value.DataNascimento;
      ExecSQL;
      Result := RowsAffected;
    end;
end;

end.
