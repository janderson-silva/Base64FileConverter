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
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 888
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Bitmap from Base64 and Base64 from Bitmap'
    Color = 16744448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 889
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 360
    Height = 374
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 1
    object Image1: TImage
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 350
      Height = 323
      Align = alClient
      Center = True
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 334
      Width = 350
      Height = 35
      Align = alBottom
      BevelInner = bvLowered
      Caption = 'Bitmap'
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 889
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 531
    Top = 44
    Width = 360
    Height = 374
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 2
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 334
      Width = 350
      Height = 35
      Align = alBottom
      BevelInner = bvLowered
      Caption = 'Base64'
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 5
      ExplicitWidth = 351
    end
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 350
      Height = 323
      Align = alClient
      BorderStyle = bsNone
      ScrollBars = ssBoth
      TabOrder = 1
      ExplicitWidth = 351
      ExplicitHeight = 315
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 369
    Top = 44
    Width = 156
    Height = 374
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 41
    ExplicitWidth = 361
    ExplicitHeight = 498
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 52
      Width = 146
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      BevelInner = bvLowered
      Caption = 'Converter para Bitmap'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel7Click
      ExplicitLeft = 10
      ExplicitTop = 0
      ExplicitWidth = 155
    end
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 146
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      BevelInner = bvLowered
      Caption = 'Converter para Base64'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = Panel8Click
      ExplicitLeft = 0
      ExplicitWidth = 155
    end
  end
end
