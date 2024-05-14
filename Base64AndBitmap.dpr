program Base64AndBitmap;

uses
  Vcl.Forms,
  untPrincipal in 'src\untPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
