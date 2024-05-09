unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.NetEncoding, JPEG,
  GraphicEx, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Memo1: TMemo;
    Image1: TImage;
    Panel9: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    edtCaminhoArquivo: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    function ConvertBase64ToBitmap(Base64: string) : String;
    function ConvertBitmapToBase64(AInFileName: string): String;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm1 }


function TfrmPrincipal.ConvertBase64ToBitmap(Base64: string): String;
var
  inStream    : TStream;
  outStream   : TStream;

  DirFileInStream   : String;
  DirFileOutStream  : String;
  NameFileInStream  : String;
  NameFileOutStream : String;

  vStringList : TStringList;
begin
  vStringList := TStringList.Create;
  try
    //local onde vai salvar os arquivos antes de salvar no banco
    DirFileInStream  := GetCurrentDir + '\temp\input\';
    DirFileOutStream := GetCurrentDir + '\temp\output\';

    //verifica se os diretorios existem, se nao existir, cria
    if not DirectoryExists(DirFileInStream) then
      ForceDirectories(DirFileInStream);

    if not DirectoryExists(DirFileOutStream) then
      ForceDirectories(DirFileOutStream);

    DirFileInStream := DirFileInStream + FormatDateTime('yyyy-mm-dd HH-mm-ss',Now);
    vStringList.Add(Base64);
    vStringList.SaveToFile(DirFileInStream);
    inStream := TFileStream.Create(DirFileInStream, fmOpenRead);

    try
      DirFileOutStream := DirFileOutStream + FormatDateTime('yyyy-mm-dd HH-mm-ss',Now)+'.jpg';
      outStream := TFileStream.Create(DirFileOutStream, fmCreate);
      try
        TNetEncoding.Base64.Decode(inStream, outStream);
        Result := DirFileOutStream;
      finally
        outStream.Free;
      end;
    finally
      inStream.Free;
    end;

  finally
    DeleteFile(PChar(DirFileInStream));
    FreeAndNil(vStringList);
  end;
end;

function TfrmPrincipal.ConvertBitmapToBase64(AInFileName: string): String;
var
  inStream    : TStream;
  outStream   : TStream;
  vFile       : String;
  vStringList : TStringList;
begin
  inStream    := TFileStream.Create(AInFileName, fmOpenRead);
  vStringList := TStringList.Create;
  try
    vFile := FormatDateTime('hhmmss',Now);
    outStream := TFileStream.Create(vFile, fmCreate);
    try
      TNetEncoding.Base64.Encode(inStream, outStream);
    finally
      outStream.Free;
    end;

    vStringList.LoadFromFile(vFile);

    Result := vStringList.Text;
  finally
    DeleteFile(Pchar(vFile));
    inStream.Free;
  end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.FileName := '';
  if OpenDialog1.Execute then
    if OpenDialog1.FileName <> '' then
    begin
      edtCaminhoArquivo.Text := OpenDialog1.FileName;
      Image1.Picture.LoadFromFile(OpenDialog1.FileName);
    end;
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  Memo1.Lines.Text := ConvertBitmapToBase64(edtCaminhoArquivo.Text);
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
var
  DirBitmap: string;
begin
  if (Memo1.Lines.Text) <> '' then
  begin
    DirBitmap := ConvertBase64ToBitmap(Memo1.Lines.Text);
    Image1.Picture.LoadFromFile(DirBitmap);
  end
  else
    raise Exception.Create('Nenhum texto Base64 informado');
end;

end.
