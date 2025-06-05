program Base64AndFoto;

uses
  Vcl.Forms,
  untPrincipal in 'src\untPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  untBase64Utils in 'src\untBase64Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
