unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.NetEncoding, JPEG;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Memo1: TMemo;
    Image1: TImage;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure Panel8Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    { Private declarations }
    function ConvertBase64ToBitmap(Base64, FileName: string) : String;
    function ConvertBitmapToBase64(AInFileName: string): String;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm1 }


function TfrmPrincipal.ConvertBase64ToBitmap(Base64, FileName: string): String;
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
      DirFileOutStream := DirFileOutStream + FormatDateTime('yyyy-mm-dd HH-mm-ss',Now) + ' ' + FileName;
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

procedure TfrmPrincipal.Panel7Click(Sender: TObject);
begin
  if (Memo1.Lines.Text) <> '' then
    Image1.Picture.LoadFromFile(ConvertBase64ToBitmap(Memo1.Lines.Text,
                                                      'teste.jpeg'))
  else
    raise Exception.Create('Nenhum texto Base64 informado');
end;

procedure TfrmPrincipal.Panel8Click(Sender: TObject);
begin
  Memo1.Lines.Text := ConvertBitmapToBase64(GetCurrentDir + '\teste.jpeg');
end;

end.
