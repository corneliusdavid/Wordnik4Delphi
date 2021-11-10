object dmWordnikAPI: TdmWordnikAPI
  Height = 480
  Width = 640
  PixelsPerInch = 96
  object RESTClientWordnik: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.wordnik.com/v4'
    Params = <>
    Left = 48
    Top = 48
  end
  object RESTReqDefinitions: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientWordnik
    Params = <
      item
        Name = 'api_key'
        Value = '<enter your own API key here>'
      end>
    Resource = 'word.json/hippopotamus'
    ResourceSuffix = 'definitions'
    Response = RESTRespDefinitions
    Left = 80
    Top = 112
  end
  object RESTRespDefinitions: TRESTResponse
    ContentType = 'application/json'
    Left = 88
    Top = 176
  end
  object RESTRespDSADefinitions: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblDefinitions
    FieldDefs = <>
    Response = RESTRespDefinitions
    Left = 88
    Top = 240
  end
  object tblDefinitions: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'message'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'partOfSpeech'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'attributionText'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'sourceDictionary'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'text'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'sequence'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'score'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'labels'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'citations'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'word'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'relatedWords'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'exampleUses'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'textProns'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'notes'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'attributionUrl'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'wordnikUrl'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 88
    Top = 312
    object tblDefinitionsid: TWideStringField
      FieldName = 'id'
      Origin = 'id'
      Size = 255
    end
    object tblDefinitionspartOfSpeech: TWideStringField
      FieldName = 'partOfSpeech'
      Origin = 'partOfSpeech'
      Size = 255
    end
    object tblDefinitionsattributionText: TWideStringField
      FieldName = 'attributionText'
      Origin = 'attributionText'
      Size = 255
    end
    object tblDefinitionssourceDictionary: TWideStringField
      FieldName = 'sourceDictionary'
      Origin = 'sourceDictionary'
      Size = 255
    end
    object tblDefinitionstext: TWideStringField
      FieldName = 'text'
      Origin = 'text'
      Size = 255
    end
    object tblDefinitionssequence: TWideStringField
      FieldName = 'sequence'
      Origin = 'sequence'
      Size = 255
    end
    object tblDefinitionsscore: TWideStringField
      FieldName = 'score'
      Origin = 'score'
      Size = 255
    end
    object tblDefinitionslabels: TWideStringField
      FieldName = 'labels'
      Origin = 'labels'
      Size = 255
    end
    object tblDefinitionscitations: TWideStringField
      FieldName = 'citations'
      Origin = 'citations'
      Size = 255
    end
    object tblDefinitionsword: TWideStringField
      FieldName = 'word'
      Origin = 'word'
      Size = 255
    end
    object tblDefinitionsrelatedWords: TWideStringField
      FieldName = 'relatedWords'
      Origin = 'relatedWords'
      Size = 255
    end
    object tblDefinitionsexampleUses: TWideStringField
      FieldName = 'exampleUses'
      Origin = 'exampleUses'
      Size = 255
    end
    object tblDefinitionstextProns: TWideStringField
      FieldName = 'textProns'
      Origin = 'textProns'
      Size = 255
    end
    object tblDefinitionsnotes: TWideStringField
      FieldName = 'notes'
      Origin = 'notes'
      Size = 255
    end
    object tblDefinitionsattributionUrl: TWideStringField
      FieldName = 'attributionUrl'
      Origin = 'attributionUrl'
      Size = 255
    end
    object tblDefinitionswordnikUrl: TWideStringField
      FieldName = 'wordnikUrl'
      Origin = 'wordnikUrl'
      Size = 255
    end
  end
  object RESTReqExamples: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientWordnik
    Params = <
      item
        Name = 'api_key'
        Value = '<enter your own API key here>'
      end>
    Resource = 'word.json/hippopotamus'
    ResourceSuffix = 'examples'
    Response = RESTRespExamples
    Left = 256
    Top = 120
  end
  object RESTRespExamples: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'examples'
    Left = 264
    Top = 192
  end
  object RESTRespDSAExamples: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblExamples
    FieldDefs = <>
    Response = RESTRespExamples
    Left = 264
    Top = 256
  end
  object tblExamples: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'provider'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'year'
        DataType = ftFloat
      end
      item
        Name = 'rating'
        DataType = ftFloat
      end
      item
        Name = 'url'
        DataType = ftWideString
        Size = 42
      end
      item
        Name = 'word'
        DataType = ftWideString
        Size = 12
      end
      item
        Name = 'text'
        DataType = ftWideString
        Size = 79
      end
      item
        Name = 'documentId'
        DataType = ftFloat
      end
      item
        Name = 'exampleId'
        DataType = ftFloat
      end
      item
        Name = 'title'
        DataType = ftWideString
        Size = 11
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 264
    Top = 320
    object tblExamplesprovider: TWideStringField
      FieldName = 'provider'
      Origin = 'provider'
      Size = 255
    end
    object tblExamplesyear: TFloatField
      FieldName = 'year'
      Origin = 'year'
    end
    object tblExamplesrating: TFloatField
      FieldName = 'rating'
      Origin = 'rating'
    end
    object tblExamplesurl: TWideStringField
      FieldName = 'url'
      Origin = 'url'
      Size = 42
    end
    object tblExamplesword: TWideStringField
      FieldName = 'word'
      Origin = 'word'
      Size = 12
    end
    object tblExamplestext: TWideStringField
      FieldName = 'text'
      Origin = 'text'
      Size = 79
    end
    object tblExamplesdocumentId: TFloatField
      FieldName = 'documentId'
      Origin = 'documentId'
    end
    object tblExamplesexampleId: TFloatField
      FieldName = 'exampleId'
      Origin = 'exampleId'
    end
    object tblExamplestitle: TWideStringField
      FieldName = 'title'
      Origin = 'title'
      Size = 11
    end
  end
end
