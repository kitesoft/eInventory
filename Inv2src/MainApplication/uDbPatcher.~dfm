object frmDbPatcher: TfrmDbPatcher
  Left = 410
  Top = 245
  Width = 833
  Height = 334
  BorderIcons = [biMaximize]
  Caption = '[Patcher] '#3585#3619#3640#3603#3634#3619#3629#3626#3633#3585#3588#3619#3641#3656'...'#3619#3632#3610#3610#3585#3635#3621#3633#3591#3607#3635#3585#3634#3619#3611#3619#3633#3610#3611#3619#3640#3591#3650#3588#3619#3591#3626#3619#3657#3634#3591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    825
    307)
  PixelsPerInch = 96
  TextHeight = 13
  object MemoInfo: TMemo
    Left = 0
    Top = 0
    Width = 825
    Height = 259
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = THAI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      'MemoInfo')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnExecutePath: TButton
    Left = 664
    Top = 264
    Width = 145
    Height = 34
    Anchors = [akRight, akBottom]
    Caption = 'Execute...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnExecutePathClick
  end
  object MyConnection1: TMyConnection
    IsolationLevel = ilRepeatableRead
    Options.Charset = 'tis620'
    LoginPrompt = False
    Left = 307
    Top = 228
  end
  object MyQuery: TMyQuery
    Connection = MyConnection1
    Left = 408
    Top = 223
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 240
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 216
    Top = 232
  end
end
