program Project1;

uses
  Vcl.Forms,
  UCadastroHorarios in 'UCadastroHorarios.pas' {frmPrincipal},
  UDM in 'UDM.pas' {DataModule1: TDataModule};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
