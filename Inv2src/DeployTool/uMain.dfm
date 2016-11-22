object frmMain: TfrmMain
  Left = 489
  Top = 235
  Width = 819
  Height = 132
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Deploy Tool'
  Color = clBtnFace
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
    Left = 0
    Top = 0
    Width = 811
    Height = 105
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 39
      Height = 13
      Caption = 'Source'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 34
      Width = 65
      Height = 13
      Caption = 'Destination'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCaption: TLabel
      Left = 88
      Top = 80
      Width = 3
      Height = 13
    end
    object btnDeploy: TButton
      Left = 664
      Top = 8
      Width = 131
      Height = 65
      Caption = 'Deploy'
      TabOrder = 0
      OnClick = btnDeployClick
    end
    object dlProgress: TProgressBar
      Left = 88
      Top = 65
      Width = 563
      Height = 7
      TabOrder = 1
    end
    object edSource: TEdit
      Left = 88
      Top = 8
      Width = 561
      Height = 21
      TabOrder = 2
    end
    object edDest: TEdit
      Left = 88
      Top = 32
      Width = 561
      Height = 21
      TabOrder = 3
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 112
  end
end
