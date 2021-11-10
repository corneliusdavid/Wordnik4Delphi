program Wordnik4Delphi;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmWordnikMain in 'ufrmWordnikMain.pas' {frmWordnikMain},
  udmWordnikAPI in 'udmWordnikAPI.pas' {dmWordnikAPI: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmWordnikMain, frmWordnikMain);
  Application.CreateForm(TdmWordnikAPI, dmWordnikAPI);
  Application.Run;
end.
