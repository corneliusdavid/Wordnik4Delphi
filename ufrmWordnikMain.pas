unit ufrmWordnikMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit, FMX.Layouts,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, System.Actions, FMX.ActnList, FMX.Objects;

type
  TfrmWordnikMain = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    HeaderLabel: TLabel;
    FlowLayout1: TFlowLayout;
    Label1: TLabel;
    edtWordLookup: TEdit;
    Button1: TButton;
    Label2: TLabel;
    lvDefinitions: TListView;
    Label3: TLabel;
    lvExamples: TListView;
    BindSrcDefinitions: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    BindSrcExamples: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    aclWordnik: TActionList;
    actWordLookup: TAction;
    imgBotLogo: TImage;
    actWordOfTheDay: TAction;
    actRandomWord: TAction;
    Button2: TButton;
    Button3: TButton;
    procedure actWordLookupExecute(Sender: TObject);
    procedure actWordOfTheDayExecute(Sender: TObject);
    procedure actRandomWordExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWordnikMain: TfrmWordnikMain;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.iPhone47in.fmx IOS}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

uses udmWordnikAPI;

procedure TfrmWordnikMain.actWordLookupExecute(Sender: TObject);
begin
  dmWordnikAPI.GetDefsAndExamples(edtWordLookup.Text);
end;

procedure TfrmWordnikMain.actRandomWordExecute(Sender: TObject);
begin
  edtWordLookup.Text := dmWordnikAPI.GetRandomWord;
  actWordLookup.Execute;
end;

procedure TfrmWordnikMain.actWordOfTheDayExecute(Sender: TObject);
begin
  edtWordLookup.Text := dmWordnikAPI.GetWordOfTheDay;
  actWordLookup.Execute;
end;

end.
