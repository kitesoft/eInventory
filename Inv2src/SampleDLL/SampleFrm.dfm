object frmSample: TfrmSample
  Left = 375
  Top = 107
  Width = 1088
  Height = 563
  Caption = 'frmSample'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnAllClients: TRzPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 536
    Align = alClient
    BorderOuter = fsPopup
    TabOrder = 0
    object rzTopPanel: TRzPanel
      Left = 1
      Top = 29
      Width = 1078
      Height = 4
      Align = alTop
      BorderOuter = fsNone
      GradientColorStyle = gcsCustom
      TabOrder = 0
      VisualStyle = vsGradient
    end
    object pnHeader: TRzPanel
      Left = 1
      Top = 1
      Width = 1078
      Height = 28
      Align = alTop
      BorderOuter = fsNone
      Color = 5832793
      TabOrder = 1
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 76
        Height = 16
        Caption = 'title ( title )'
        Font.Charset = THAI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Button1: TButton
      Left = 88
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
    end
    object pnRight: TRzPanel
      Left = 894
      Top = 129
      Width = 185
      Height = 406
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 3
    end
    object pnTop: TRzPanel
      Left = 1
      Top = 33
      Width = 1078
      Height = 96
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 4
    end
    object pnMiddle: TRzPanel
      Left = 1
      Top = 129
      Width = 893
      Height = 406
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 5
    end
  end
end
