unit udmWordnikAPI;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  FireDAC.Stan.StorageBin;

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
    RESTReqWOTD: TRESTRequest;
    RESTRespWOTD: TRESTResponse;
    RESTRespDSAWordOofTheDay: TRESTResponseDataSetAdapter;
    tblWOTD: TFDMemTable;
    tblWOTD_id: TWideStringField;
    tblWOTDword: TWideStringField;
    tblWOTDcontentProvider: TWideStringField;
    tblWOTDdefinitions: TWideStringField;
    tblWOTDpublishDate: TDateTimeField;
    tblWOTDexamples: TWideStringField;
    tblWOTDpdd: TDateTimeField;
    tblWOTDnote: TWideStringField;
    tblWOTDhtmlExtra: TWideStringField;
    RESTReqRandom: TRESTRequest;
    RESTRespRandom: TRESTResponse;
    RESTRespDSARandom: TRESTResponseDataSetAdapter;
    tblRandom: TFDMemTable;
    tblRandomid: TFloatField;
    tblRandomword: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    function GetAPIKey: string;
    procedure SetRequestAPIKey(ARESTRequest: TRESTRequest; const APIKey: string);
  public
    procedure GetDefsAndExamples(const WordLookup: string);
    function GetWordOfTheDay: string;
    function GetRandomWord: string;
  end;

var
  dmWordnikAPI: TdmWordnikAPI;


implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TdmWordnikAPI }

procedure TdmWordnikAPI.SetRequestAPIKey(ARESTRequest: TRESTRequest; const APIKey: string);
begin
  for var i := 0 to ARESTRequest.Params.Count - 1 do
    if SameText(ARESTRequest.Params[i].Name, 'api_key') then begin
      ARESTRequest.Params[i].Value := APIKey;
      Break;
    end;
end;

procedure TdmWordnikAPI.DataModuleCreate(Sender: TObject);
begin
  for var i := 0 to ComponentCount - 1 do
    if Components[i] is TRESTRequest then
      SetRequestAPIKey(Components[i] as TRESTRequest, GetAPIKey);
end;

function TdmWordnikAPI.GetAPIKey: string;
begin
  Result := '< enter your API Key here >';
end;

procedure TdmWordnikAPI.GetDefsAndExamples(const WordLookup: string);
begin
  RESTReqDefinitions.Resource := 'word.json/' + WordLookup;
  RESTReqDefinitions.Execute;

  RESTReqExamples.Resource := RESTReqDefinitions.Resource;
  RESTReqExamples.Execute;
end;

function TdmWordnikAPI.GetRandomWord: string;
begin
  RESTReqRandom.Execute;
  Result := tblRandomword.AsString;
end;

function TdmWordnikAPI.GetWordOfTheDay: string;
begin
  RESTReqWOTD.Execute;
  Result := tblWOTDword.AsString;
end;

end.
