object DM: TDM
  OldCreateOrder = False
  Height = 380
  Width = 459
  object Conn: TFDConnection
    Params.Strings = (
      'Port='
      'DriverID=PG')
    LoginPrompt = False
    Left = 40
    Top = 56
  end
  object DriverLink: TFDPhysPgDriverLink
    Left = 96
    Top = 56
  end
  object Query: TFDQuery
    Connection = Conn
    Left = 88
    Top = 152
  end
  object QryClientes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from cliente order by cli_codigo')
    Left = 200
    Top = 216
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
    Left = 208
    Top = 280
  end
  object frxRepClientes: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45169.034249398150000000
    ReportOptions.LastChange = 45169.607709120370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Clientes')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 27.102350000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Width = 1046.929133860000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 4.425170000000000000
          Width = 62.476589400000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 63.256119400000000000
          Top = 4.204700000000000000
          Width = 335.021627760000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 518.443177160000000000
          Top = 4.204700000000000000
          Width = 109.087584470000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 911.788127150000000000
          Top = 4.204700000000000000
          Width = 126.673833410000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 626.879535430000000000
          Top = 4.204700000000000000
          Width = 283.848111990000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Fantasia')
          ParentFont = False
          Style = 'Header'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 396.711567420000000000
          Top = 4.204700000000000000
          Width = 120.490565280000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Nascimento')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Width = 62.476589403306680000
          Height = 18.897650000000000000
          DataField = 'cli_codigo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_codigo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.476589400000000000
          Width = 331.242097760000000000
          Height = 18.897650000000000000
          DataField = 'cli_nome'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_nome"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 518.443177160000000000
          Width = 109.087584470000000000
          Height = 18.897650000000000000
          DataField = 'cli_cpf'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_cpf"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 911.788127150000000000
          Width = 126.673833410000000000
          Height = 18.897650000000000000
          DataField = 'cli_cnpj'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_cnpj"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 626.879535430000000000
          Width = 283.848111990000000000
          Height = 18.897650000000000000
          DataField = 'cli_nome_fantasia'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_nome_fantasia"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 395.152507420000000000
          Width = 120.490565280000000000
          Height = 18.897650000000000000
          DataField = 'cli_data_nascimento'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_data_nascimento"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        object Memo33: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo35: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = QryClientes
    BCDToCurrency = False
    Left = 328
    Top = 272
  end
end
