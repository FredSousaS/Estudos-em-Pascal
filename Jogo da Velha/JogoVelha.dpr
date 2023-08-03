program JogoVelha;

uses
  Forms,
  uJogoVelha in 'uJogoVelha.pas' {FrmVelha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmVelha, FrmVelha);
  Application.Run;
end.
