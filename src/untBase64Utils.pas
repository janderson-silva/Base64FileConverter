unit untBase64Utils;

interface

uses
  System.Classes,
  System.NetEncoding,
  System.SysUtils,
  Vcl.Graphics;

function BitmapToBase64(APicture: TPicture): string;
procedure Base64ToBitmap(const Base64: string; APicture: TPicture);

implementation

function BitmapToBase64(APicture: TPicture): string;
var
  MemStream: TMemoryStream;
  Base64Str: TStringStream;
begin
  MemStream := TMemoryStream.Create;
  Base64Str := TStringStream.Create;
  try
    APicture.SaveToStream(MemStream);
    MemStream.Position := 0;
    TNetEncoding.Base64.Encode(MemStream, Base64Str);
    Result := Base64Str.DataString;
  finally
    MemStream.Free;
    Base64Str.Free;
  end;
end;

procedure Base64ToBitmap(const Base64: string; APicture: TPicture);
var
  MemStream: TMemoryStream;
  Base64Str: TStringStream;
begin
  Base64Str := TStringStream.Create(Base64);
  MemStream := TMemoryStream.Create;
  try
    Base64Str.Position := 0;
    TNetEncoding.Base64.Decode(Base64Str, MemStream);
    MemStream.Position := 0;
    APicture.LoadFromStream(MemStream);
  finally
    Base64Str.Free;
    MemStream.Free;
  end;
end;

end.


