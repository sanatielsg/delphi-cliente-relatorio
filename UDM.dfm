object DM: TDM
  OldCreateOrder = False
  Height = 380
  Width = 627
  object Conn: TFDConnection
    Params.Strings = (
      'Port='
      'DriverID=PG')
    LoginPrompt = False
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
  object QryClientes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from cliente order by cli_codigo')
    Left = 248
    Top = 192
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
    Left = 256
    Top = 256
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
    ReportOptions.LastChange = 45169.034475312500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 400
    Top = 200
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
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133858268000000
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
          Width = 62.476589403306680000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_codigo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 62.476589403306680000
          Width = 55.336407757214490000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_nome')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 117.812997160521200000
          Width = 41.056044465030110000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_cpf')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 158.869041625551300000
          Width = 34.808385524699440000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_rg')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 193.677427150250700000
          Width = 47.303703405360770000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_cnpj')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 240.981130555611500000
          Width = 75.864429989729540000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_endereco')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 316.845560545341000000
          Width = 66.939202932114300000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_numero')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 383.784763477455300000
          Width = 43.733612582314680000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_cep')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 427.518376059770000000
          Width = 60.691543991783640000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_cidade')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 488.209920051553700000
          Width = 34.808385524699440000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_uf')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 523.018305576253100000
          Width = 99.962543045290690000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_limite_credito')
          ParentFont = False
          Style = 'Header'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 622.980848621543800000
          Width = 94.607406810721550000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_razao_social')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 717.588255432265300000
          Width = 106.210201985621400000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_nome_fantasia')
          ParentFont = False
          Style = 'Header'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 823.798457417886700000
          Width = 120.490565277805700000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_data_nascimento')
          ParentFont = False
          Style = 'Header'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 944.289022695692500000
          Width = 102.640111162575300000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'cli_dthr_cadastro')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
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
          Left = 62.476589403306680000
          Width = 55.336407757214490000
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
          Left = 117.812997160521200000
          Width = 41.056044465030110000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 158.869041625551300000
          Width = 34.808385524699440000
          Height = 18.897650000000000000
          DataField = 'cli_rg'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_rg"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 193.677427150250700000
          Width = 47.303703405360770000
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 240.981130555611500000
          Width = 75.864429989729540000
          Height = 18.897650000000000000
          DataField = 'cli_endereco'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_endereco"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 316.845560545341000000
          Width = 66.939202932114300000
          Height = 18.897650000000000000
          DataField = 'cli_numero'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_numero"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 383.784763477455300000
          Width = 43.733612582314680000
          Height = 18.897650000000000000
          DataField = 'cli_cep'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_cep"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 427.518376059770000000
          Width = 60.691543991783640000
          Height = 18.897650000000000000
          DataField = 'cli_cidade'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_cidade"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 488.209920051553700000
          Width = 34.808385524699440000
          Height = 18.897650000000000000
          DataField = 'cli_uf'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_uf"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 523.018305576253100000
          Width = 99.962543045290690000
          Height = 18.897650000000000000
          DataField = 'cli_limite_credito'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_limite_credito"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 622.980848621543800000
          Width = 94.607406810721550000
          Height = 18.897650000000000000
          DataField = 'cli_razao_social'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_razao_social"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 717.588255432265300000
          Width = 106.210201985621400000
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
          Left = 823.798457417886700000
          Width = 120.490565277805700000
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
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 944.289022695692500000
          Width = 102.640111162575300000
          Height = 18.897650000000000000
          DataField = 'cli_dthr_cadastro'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cli_dthr_cadastro"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 230.551330000000000000
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
    Left = 400
    Top = 264
  end
end
