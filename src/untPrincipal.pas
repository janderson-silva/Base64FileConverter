unit untPrincipal;

interface

uses
  System.Classes,
  System.NetEncoding,
  System.SysUtils,
  System.Variants,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows,
  untBase64Utils;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    pnlFoto: TPanel;
    pnlMemo: TPanel;
    pnlLimpar: TPanel;
    mmBase64: TMemo;
    imgFoto: TImage;
    pnlLocalizarFoto: TPanel;
    pnlCaminhoFoto: TPanel;
    Label1: TLabel;
    edtCaminhoFoto: TEdit;
    btnLocalizarFoto: TSpeedButton;
    OpenImage: TOpenDialog;
    btnConverterFotoParaBase64: TSpeedButton;
    btnConverterBase64ParaFoto: TSpeedButton;
    btnLimpar: TSpeedButton;
    procedure btnLocalizarFotoClick(Sender: TObject);
    procedure btnConverterFotoParaBase64Click(Sender: TObject);
    procedure btnConverterBase64ParaFotoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  OpenImage.FileName := '';
  edtCaminhoFoto.Text := '';
  imgFoto.Picture := nil;
  mmBase64.Lines.Clear;
end;

procedure TfrmPrincipal.btnLocalizarFotoClick(Sender: TObject);
begin
  if OpenImage.Execute then
  begin
    edtCaminhoFoto.Text := OpenImage.FileName;
    imgFoto.Picture.LoadFromFile(OpenImage.FileName);
  end;
end;

procedure TfrmPrincipal.btnConverterFotoParaBase64Click(Sender: TObject);
begin
  mmBase64.Text := BitmapToBase64(imgFoto.Picture);
end;

procedure TfrmPrincipal.btnConverterBase64ParaFotoClick(Sender: TObject);
begin
  if mmBase64.Text <> '' then
    Base64ToBitmap(mmBase64.Text, imgFoto.Picture)
  else
    raise Exception.Create('Nenhum texto Base64 informado');
end;

end.
