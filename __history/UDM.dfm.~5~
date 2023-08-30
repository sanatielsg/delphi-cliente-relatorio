object DM: TDM
  OldCreateOrder = False
  Height = 380
  Width = 627
  object Conn: TFDConnection
    Params.Strings = (
      'Database=programa'
      'User_Name=postgres'
      'Password=Super@321'
      'DriverID=PG')
    Connected = True
    Left = 40
    Top = 56
  end
  object DriverLink: TFDPhysPgDriverLink
    Left = 40
    Top = 128
  end
  object Query: TFDQuery
    Connection = Conn
    Left = 168
    Top = 104
  end
  object QryAniversariantes: TFDQuery
    Connection = Conn
    Left = 216
    Top = 200
  end
  object DSAniversariantes: TDataSource
    DataSet = QryAniversariantes
    Left = 216
    Top = 256
  end
  object QryClientes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from cliente')
    Left = 320
    Top = 200
    object QryClientescli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      Origin = 'cli_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryClientescli_nome: TWideStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 100
    end
    object QryClientescli_cpf: TWideStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Size = 11
    end
    object QryClientescli_rg: TWideStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object QryClientescli_cnpj: TWideStringField
      FieldName = 'cli_cnpj'
      Origin = 'cli_cnpj'
      Size = 14
    end
    object QryClientescli_endereco: TWideStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 150
    end
    object QryClientescli_numero: TWideStringField
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      Size = 10
    end
    object QryClientescli_cep: TWideStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Size = 8
    end
    object QryClientescli_cidade: TWideStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 30
    end
    object QryClientescli_uf: TWideStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Size = 2
    end
    object QryClientescli_limite_credito: TBCDField
      FieldName = 'cli_limite_credito'
      Origin = 'cli_limite_credito'
      Precision = 10
      Size = 2
    end
    object QryClientescli_razao_social: TWideStringField
      FieldName = 'cli_razao_social'
      Origin = 'cli_razao_social'
      Size = 100
    end
    object QryClientescli_nome_fantasia: TWideStringField
      FieldName = 'cli_nome_fantasia'
      Origin = 'cli_nome_fantasia'
      Size = 100
    end
    object QryClientescli_data_nascimento: TDateField
      FieldName = 'cli_data_nascimento'
      Origin = 'cli_data_nascimento'
    end
    object QryClientescli_dthr_cadastro: TSQLTimeStampField
      FieldName = 'cli_dthr_cadastro'
      Origin = 'cli_dthr_cadastro'
    end
  end
  object DSClientes: TDataSource
    DataSet = QryClientes
    Left = 328
    Top = 264
  end
end
