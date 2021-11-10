unit udmWordnikAPI;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TdmWordnikAPI = class(TDataModule)
    RESTClientWordnik: TRESTClient;
    RESTReqDefinitions: TRESTRequest;
    RESTRespDefinitions: TRESTResponse;
    RESTRespDSADefinitions: TRESTResponseDataSetAdapter;
    tblDefinitions: TFDMemTable;
    tblDefinitionsid: TWideStringField;
    tblDefinitionspartOfSpeech: TWideStringField;
    tblDefinitionsattributionText: TWideStringField;
    tblDefinitionssourceDictionary: TWideStringField;
    tblDefinitionstext: TWideStringField;
    tblDefinitionssequence: TWideStringField;
    tblDefinitionsscore: TWideStringField;
    tblDefinitionslabels: TWideStringField;
    tblDefinitionscitations: TWideStringField;
    tblDefinitionsword: TWideStringField;
    tblDefinitionsrelatedWords: TWideStringField;
    tblDefinitionsexampleUses: TWideStringField;
    tblDefinitionstextProns: TWideStringField;
    tblDefinitionsnotes: TWideStringField;
    tblDefinitionsattributionUrl: TWideStringField;
    tblDefinitionswordnikUrl: TWideStringField;
    RESTReqExamples: TRESTRequest;
    RESTRespExamples: TRESTResponse;
    RESTRespDSAExamples: TRESTResponseDataSetAdapter;
    tblExamples: TFDMemTable;
    tblExamplesprovider: TWideStringField;
    tblExamplesyear: TFloatField;
    tblExamplesrating: TFloatField;
    tblExamplesurl: TWideStringField;
    tblExamplesword: TWideStringField;
    tblExamplestext: TWideStringField;
    tblExamplesdocumentId: TFloatField;
    tblExamplesexampleId: TFloatField;
    tblExamplestitle: TWideStringField;
  private
    { Private declarations }
  public
    procedure GetDefsAndExamples(const WordLookup: string);
  end;

var
  dmWordnikAPI: TdmWordnikAPI;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TdmWordnikAPI }

procedure TdmWordnikAPI.GetDefsAndExamples(const WordLookup: string);
begin
  RESTReqDefinitions.Resource := 'word.json/' + WordLookup;
  RESTReqDefinitions.Execute;

  RESTReqExamples.Resource := RESTReqDefinitions.Resource;
  RESTReqExamples.Execute;
end;

end.
