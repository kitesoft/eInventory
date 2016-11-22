object frmMasterQuotation: TfrmMasterQuotation
  Left = 406
  Top = 193
  Width = 1024
  Height = 563
  Caption = 'frmMasterQuotation'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object dsQuotationHdr: TDataSource
    DataSet = cdsQuotationHdr
    Left = 77
    Top = 296
  end
  object cdsQuotationHdr: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 77
    Top = 248
  end
  object cdsQuotationDtl: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 181
    Top = 248
  end
  object dsQuotationDtl: TDataSource
    DataSet = cdsQuotationDtl
    Left = 181
    Top = 296
  end
  object cdsAllQuotation: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 277
    Top = 248
  end
  object dsAllQuotation: TDataSource
    DataSet = cdsAllQuotation
    Left = 277
    Top = 296
  end
end
