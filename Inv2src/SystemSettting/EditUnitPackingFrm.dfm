object frmEditUnitPacking: TfrmEditUnitPacking
  Left = 581
  Top = 398
  Width = 488
  Height = 212
  Caption = 'frmEditUnitPacking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 185
    Align = alClient
    BorderOuter = fsGroove
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      478
      183)
    object RzLabel1: TRzLabel
      Left = 11
      Top = 11
      Width = 122
      Height = 23
      AutoSize = False
      Caption = ' '#3619#3627#3633#3626
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel3: TRzLabel
      Left = 11
      Top = 35
      Width = 122
      Height = 23
      AutoSize = False
      Caption = ' '#3594#3639#3656#3629#3586#3609#3634#3604#3610#3619#3619#3592#3640
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel2: TRzLabel
      Left = 11
      Top = 59
      Width = 122
      Height = 23
      AutoSize = False
      Caption = ' '#3586#3609#3634#3604#3610#3619#3619#3592#3640' ('#3605#3633#3623#3588#3641#3603')'
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object btnSaveUnit: TRzBitBtn
      Left = 307
      Top = 151
      Width = 80
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = #3610#3633#3609#3607#3638#3585
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = btnSaveUnitClick
    end
    object btnCancelUnit: TRzBitBtn
      Left = 395
      Top = 151
      Width = 80
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = #3618#3585#3648#3621#3636#3585
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelUnitClick
    end
    object RzDBEdit17: TRzDBEdit
      Left = 136
      Top = 10
      Width = 177
      Height = 22
      DataSource = dsPackUnit
      DataField = 'PACCOD'
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit1: TRzDBEdit
      Left = 136
      Top = 35
      Width = 177
      Height = 22
      DataSource = dsPackUnit
      DataField = 'PACNAM'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 3
    end
    object RzDBEdit2: TRzDBEdit
      Left = 136
      Top = 59
      Width = 177
      Height = 22
      DataSource = dsPackUnit
      DataField = 'PACRAT'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 134
      Top = 114
      Width = 97
      Height = 17
      Caption = #3651#3594#3657#3591#3634#3609
      DataField = 'PACACT'
      DataSource = dsPackUnit
      TabOrder = 5
      ValueChecked = 'A'
      ValueUnchecked = 'I'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 134
      Top = 90
      Width = 97
      Height = 17
      Caption = #3627#3609#3656#3623#3618#3609#3633#3610
      DataField = 'PACFLG'
      DataSource = dsPackUnit
      TabOrder = 6
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
    end
  end
  object cdsPackUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 25
    Top = 126
  end
  object dsPackUnit: TDataSource
    DataSet = cdsPackUnit
    Left = 73
    Top = 126
  end
end
