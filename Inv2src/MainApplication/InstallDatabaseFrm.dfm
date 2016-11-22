object frmInstallDatabase: TfrmInstallDatabase
  Left = 432
  Top = 207
  Width = 567
  Height = 315
  Caption = 'frmInstallDatabase'
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
  object btnInstall: TButton
    Left = 8
    Top = 16
    Width = 161
    Height = 25
    Caption = 'Install Database'
    TabOrder = 0
    OnClick = btnInstallClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 48
    Width = 545
    Height = 233
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
