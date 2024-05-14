unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.NetEncoding,
  GraphicEx, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    pnlTImageConvert: TPanel;
    pnlTMemo: TPanel;
    pnlTImageIcon: TPanel;
    mmBase64: TMemo;
    imgBitmap: TImage;
    pnlLocImage: TPanel;
    pnlCaminhoArquivo: TPanel;
    Label1: TLabel;
    edtCaminhoArquivo: TEdit;
    btnLocArquivo: TSpeedButton;
    OpenImage: TOpenDialog;
    imgIcon: TImage;
    btnConverterBitmapToBase64: TSpeedButton;
    btnConverterBase64ToBitmap: TSpeedButton;
    btnLimpar: TSpeedButton;
    procedure btnLocArquivoClick(Sender: TObject);
    procedure btnConverterBitmapToBase64Click(Sender: TObject);
    procedure btnConverterBase64ToBitmapClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    function ConvertBase64ToStringStream(Base64: string) : String;
    function ConvertBitmapToBase64(AInFileName: string): String;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm1 }


function TfrmPrincipal.ConvertBase64ToStringStream(Base64: string): String;
var
  entrada, saida: TStringStream;
begin
  entrada := TStringStream.Create(Base64);
  saida   := TStringStream.Create;

  try
    entrada.Position := 0;
    TNetEncoding.Base64.Decode(entrada, saida);
    saida.Position := 0;
    Result := saida.DataString;
  finally
    entrada.Free;
    saida.Free;
  end;
end;

function TfrmPrincipal.ConvertBitmapToBase64(AInFileName: string): String;
var
  entrada, saida: TStringStream;
begin
  entrada := TStringStream.Create;
  saida   := TStringStream.Create;

  try
    imgBitmap.Picture.SaveToStream(entrada);
    entrada.Position := 0;
    TNetEncoding.Base64.Encode(entrada, saida);
    saida.Position   := 0;
    Result := saida.DataString;
  finally
    entrada.Free;
    saida.Free;
  end;
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  OpenImage.FileName := '';
  edtCaminhoArquivo.Text := '';
  imgBitmap.Picture := nil;
  mmBase64.Lines.Clear;
end;

procedure TfrmPrincipal.btnLocArquivoClick(Sender: TObject);
begin
  OpenImage.FileName := '';
  if OpenImage.Execute then
    if OpenImage.FileName <> '' then
    begin
      edtCaminhoArquivo.Text := OpenImage.FileName;
      imgBitmap.Picture.LoadFromFile(OpenImage.FileName);
    end;
end;

procedure TfrmPrincipal.btnConverterBitmapToBase64Click(Sender: TObject);
begin
  mmBase64.Lines.Text := ConvertBitmapToBase64(edtCaminhoArquivo.Text);
end;

procedure TfrmPrincipal.btnConverterBase64ToBitmapClick(Sender: TObject);
var
  StrToStream: TStringStream;
begin
  if (mmBase64.Lines.Text) <> '' then
  begin
    StrToStream := TStringStream.Create( ConvertBase64ToStringStream(mmBase64.Lines.Text) );
    try
      imgBitmap.Picture.LoadFromStream(StrToStream);
    finally
      StrToStream.Free;
    end;
  end
  else
    raise Exception.Create('Nenhum texto Base64 informado');
end;

end.
