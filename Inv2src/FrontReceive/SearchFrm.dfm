object frmSearch: TfrmSearch
  Left = 375
  Top = 107
  Width = 726
  Height = 395
  Caption = 'frmSearch'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    718
    368)
  PixelsPerInch = 96
  TextHeight = 14
  object blAllContainer: TBevel
    Left = 0
    Top = 0
    Width = 718
    Height = 368
    Align = alClient
    Shape = bsFrame
  end
  object RzLabel1: TRzLabel
    Left = 9
    Top = 337
    Width = 496
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = ' '#3607#3633#3657#3591#3627#3617#3604' 1,000 '#3619#3634#3618#3585#3634#3619
    Color = clSilver
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    BorderColor = clGray
  end
  object btnClose: TRzBitBtn
    Left = 615
    Top = 333
    Width = 97
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = '[ESC] Close'
    Color = clSilver
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object btnOK: TRzBitBtn
    Left = 518
    Top = 333
    Width = 97
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = '[F11] OK'
    Color = clSilver
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    TabOrder = 1
    OnClick = btnOKClick
  end
  object Listview: TListView
    Left = 0
    Top = 32
    Width = 705
    Height = 289
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
      end
      item
      end
      item
      end
      item
      end>
    GridLines = True
    Items.Data = {
      840000000500000000000000FFFFFFFFFFFFFFFF000000000000000003616161
      00000000FFFFFFFFFFFFFFFF0000000000000000046161616100000000FFFFFF
      FFFFFFFFFF0000000000000000046161616100000000FFFFFFFFFFFFFFFF0000
      000000000000046161616100000000FFFFFFFFFFFFFFFF000000000000000004
      61616161}
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
    OnKeyDown = ListviewKeyDown
  end
  object edSearchText: TRzEdit
    Left = 8
    Top = 7
    Width = 705
    Height = 24
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 16766975
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnKeyDown = edSearchTextKeyDown
  end
end
