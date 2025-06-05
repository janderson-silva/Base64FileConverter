object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Bitmap from Base64 and Base64 from Bitmap'
  ClientHeight = 421
  ClientWidth = 894
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Converter Foto para Base64 e/ou Base64 para Foto'
    Color = 16744448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlFoto: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 360
    Height = 380
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 1
    object imgFoto: TImage
      AlignWithMargins = True
      Left = 5
      Top = 50
      Width = 350
      Height = 290
      Align = alClient
      Center = True
      Proportional = True
      Transparent = True
      ExplicitTop = 5
      ExplicitHeight = 323
    end
    object btnConverterFotoParaBase64: TSpeedButton
      Left = 2
      Top = 343
      Width = 356
      Height = 35
      Align = alBottom
      Caption = 'Converter TImage para Base64 --->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnConverterFotoParaBase64Click
      ExplicitTop = 309
    end
    object pnlLocalizarFoto: TPanel
      Left = 2
      Top = 2
      Width = 356
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object btnLocalizarFoto: TSpeedButton
        AlignWithMargins = True
        Left = 323
        Top = 15
        Width = 30
        Height = 25
        Margins.Top = 15
        Margins.Bottom = 5
        Align = alClient
        Glyph.Data = {
          C6070000424DC607000000000000360000002800000016000000160000000100
          2000000000009007000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000600000006000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000060000000500000000000000000000
          00000000000000669C4600729893007396900073969000739690007396900073
          9690007396900073969000739690007396900073969000739690007396900073
          9690007396900073969000759982000000000000000000000000000000000085
          ED7600C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C2FDFE009BC6120000000000000000000000000074FF5A00B6F6FF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF009E
          CD4D0000000000000000000000000074FF5A009EEEFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00A4D685000000000000
          0000000000000074FF5A008CF3FF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00AEE3B70000000000000000000000000074
          FF5A007CFFFF00C3FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00B9F1E20000000000000000000000000074FF5A0075FFFF00B3
          F6FF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C2
          FDFE00AADD0F00000000000000000074FF5A0075FFFF009DF4FF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00A0D1490000
          0000000000000074FF5A0075FFFF008DFDFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00A6D78200000000000000000074
          FF5A0075FFFF007AFFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF00B6FCFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C4FFFF00C4FFFF00B0E4B500000000000000000074FF5A0075FFFF0075
          FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0079FFFF00AB
          FCFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4
          FFFF00C0FAD800000000000000000074FF5A0075FFFF0075FFFF0075FFFF0075
          FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0076FFFF008EFFFF008F
          FFFF008FFFFF008FFFFF008FFFFF008FFFFF008FFFFF00B9FF6000C3FF520000
          0000000000000074FF5A0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075
          FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075
          FFFF0075FFFF0075FFFF0075FFFF0078FF110000000000000000000000000074
          FF5A0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0075FFFF0074FFFD0074
          FF780078FF220078FF220078FF220078FF220078FF220078FF220078FF220078
          FF220078FF22007FFF020000000000000000000000000074FF5A0075FFFF0075
          FFFF0075FFFF0075FFFF0075FFFF0074FFF30075FF5000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
        OnClick = btnLocalizarFotoClick
        ExplicitLeft = 312
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
      object pnlCaminhoFoto: TPanel
        Left = 0
        Top = 0
        Width = 320
        Height = 45
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 5
          Width = 310
          Height = 13
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alTop
          Caption = 'Localizar imagem'
          ExplicitWidth = 80
        end
        object edtCaminhoFoto: TEdit
          AlignWithMargins = True
          Left = 10
          Top = 20
          Width = 310
          Height = 20
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 5
          Align = alClient
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
    end
  end
  object pnlMemo: TPanel
    AlignWithMargins = True
    Left = 531
    Top = 38
    Width = 360
    Height = 380
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 2
    object btnConverterBase64ParaFoto: TSpeedButton
      Left = 2
      Top = 343
      Width = 356
      Height = 35
      Align = alBottom
      Caption = '<--- Converter Base64 para Bitmap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnConverterBase64ParaFotoClick
      ExplicitLeft = 4
      ExplicitTop = 304
    end
    object mmBase64: TMemo
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 350
      Height = 335
      Align = alClient
      BorderStyle = bsNone
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object pnlLimpar: TPanel
    AlignWithMargins = True
    Left = 369
    Top = 38
    Width = 156
    Height = 380
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object btnLimpar: TSpeedButton
      Left = 0
      Top = 345
      Width = 156
      Height = 35
      Align = alBottom
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnLimparClick
      ExplicitLeft = 4
      ExplicitTop = 304
      ExplicitWidth = 356
    end
  end
  object OpenImage: TOpenDialog
    Left = 235
    Top = 188
  end
end
