object frmReportManager: TfrmReportManager
  Left = 403
  Top = 126
  Width = 1088
  Height = 563
  Caption = 'frmReportManager'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
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
        Width = 187
        Height = 16
        Caption = ' '#3619#3634#3618#3591#3634#3609' ( Reports Manager )'
        Font.Charset = THAI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 33
      Width = 1078
      Height = 41
      Align = alTop
      TabOrder = 2
      object btnDesignReport: TButton
        Left = 696
        Top = 8
        Width = 169
        Height = 25
        Caption = 'btnDesignReport'
        TabOrder = 0
        OnClick = btnDesignReportClick
      end
      object btnPreviewReport: TButton
        Left = 520
        Top = 8
        Width = 169
        Height = 25
        Caption = 'btnDesignReport'
        TabOrder = 1
        OnClick = btnPreviewReportClick
      end
    end
    object pnReportDesigner: TPanel
      Left = 1
      Top = 74
      Width = 1078
      Height = 461
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnReportDesigner'
      TabOrder = 3
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = True
    Left = 285
    Top = 255
  end
  object frxReport1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41692.381278229160000000
    ReportOptions.LastChange = 41692.381278229160000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 165
    Top = 135
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
end
