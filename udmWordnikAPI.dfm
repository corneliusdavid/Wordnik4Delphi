object dmWordnikAPI: TdmWordnikAPI
  OnCreate = DataModuleCreate
  Height = 548
  Width = 722
  PixelsPerInch = 120
  object RESTClientWordnik: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.wordnik.com/v4'
    Params = <>
    Left = 60
    Top = 60
  end
  object RESTReqDefinitions: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientWordnik
    Params = <
      item
        Name = 'api_key'
        Value = '<replaced at runtime>'
      end>
    Resource = 'word.json/hippopotamus'
    ResourceSuffix = 'definitions'
    Response = RESTRespDefinitions
    Left = 100
    Top = 140
  end
  object RESTRespDefinitions: TRESTResponse
    ContentType = 'application/json'
    Left = 110
    Top = 220
  end
  object RESTRespDSADefinitions: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblDefinitions
    FieldDefs = <>
    Response = RESTRespDefinitions
    Left = 110
    Top = 300
  end
  object tblDefinitions: TFDMemTable
    Active = True
    FieldDefs = <
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
    Left = 110
    Top = 390
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
        Value = '<replaced at runtime>'
      end>
    Resource = 'word.json/hippopotamus'
    ResourceSuffix = 'examples'
    Response = RESTRespExamples
    Left = 240
    Top = 102
  end
  object RESTRespExamples: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'examples'
    Left = 250
    Top = 192
  end
  object RESTRespDSAExamples: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblExamples
    FieldDefs = <>
    Response = RESTRespExamples
    Left = 250
    Top = 272
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
        Size = 50
      end
      item
        Name = 'text'
        DataType = ftWideString
        Size = 500
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
        Size = 200
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
    Left = 250
    Top = 352
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
      Size = 50
    end
    object tblExamplestext: TWideStringField
      FieldName = 'text'
      Origin = 'text'
      Size = 500
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
      Size = 200
    end
  end
  object RESTReqWOTD: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientWordnik
    Params = <
      item
        Name = 'api_key'
        Value = '<replaced at runtime>'
      end
      item
        Name = 'date'
        Value = '2021-11-12'
      end>
    Resource = 'words.json/wordOfTheDay'
    Response = RESTRespWOTD
    Left = 384
    Top = 160
  end
  object RESTRespWOTD: TRESTResponse
    ContentType = 'application/json'
    Left = 392
    Top = 240
  end
  object RESTRespDSAWordOofTheDay: TRESTResponseDataSetAdapter
    Dataset = tblWOTD
    FieldDefs = <>
    Response = RESTRespWOTD
    Left = 392
    Top = 312
  end
  object tblWOTD: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 392
    Top = 384
    object tblWOTD_id: TWideStringField
      FieldName = '_id'
      Size = 24
    end
    object tblWOTDword: TWideStringField
      FieldName = 'word'
      Size = 50
    end
    object tblWOTDcontentProvider: TWideStringField
      FieldName = 'contentProvider'
      Size = 255
    end
    object tblWOTDdefinitions: TWideStringField
      FieldName = 'definitions'
      Size = 255
    end
    object tblWOTDpublishDate: TDateTimeField
      FieldName = 'publishDate'
    end
    object tblWOTDexamples: TWideStringField
      FieldName = 'examples'
      Size = 255
    end
    object tblWOTDpdd: TDateTimeField
      FieldName = 'pdd'
    end
    object tblWOTDnote: TWideStringField
      FieldName = 'note'
      Size = 500
    end
    object tblWOTDhtmlExtra: TWideStringField
      FieldName = 'htmlExtra'
      Size = 255
    end
  end
  object RESTReqRandom: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientWordnik
    Params = <
      item
        Name = 'api_key'
        Value = '<replaced at runtime>'
      end
      item
        Name = 'hasDictionaryDef'
        Value = 'true'
      end>
    Resource = 'words.json/randomWord'
    Response = RESTRespRandom
    Left = 560
    Top = 104
  end
  object RESTRespRandom: TRESTResponse
    ContentType = 'application/json'
    Left = 568
    Top = 176
  end
  object RESTRespDSARandom: TRESTResponseDataSetAdapter
    Dataset = tblRandom
    FieldDefs = <>
    Response = RESTRespRandom
    Left = 568
    Top = 248
  end
  object tblRandom: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 568
    Top = 320
    object tblRandomid: TFloatField
      FieldName = 'id'
    end
    object tblRandomword: TWideStringField
      FieldName = 'word'
      Size = 255
    end
  end
end
