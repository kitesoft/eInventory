object frmCustomers: TfrmCustomers
  Left = 330
  Top = 122
  Width = 1088
  Height = 563
  Caption = 'frmCustomers'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnAllClients: TRzPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 536
    Align = alClient
    BorderOuter = fsPopup
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 241
      Width = 1078
      Height = 294
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsCustomers
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'CIFCODE'
          Options.Editing = False
          Options.Focusing = False
          Width = 80
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'IDCARD'
          Options.Editing = False
          Options.Focusing = False
          Width = 168
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'FNAME'
          Options.Editing = False
          Options.Focusing = False
          Width = 117
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'LNAME'
          Options.Editing = False
          Options.Focusing = False
          Width = 146
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object rzTopPanel: TRzPanel
      Left = 1
      Top = 29
      Width = 1078
      Height = 4
      Align = alTop
      BorderOuter = fsNone
      GradientColorStyle = gcsCustom
      TabOrder = 1
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
      TabOrder = 2
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 165
        Height = 16
        Caption = #3607#3632#3648#3610#3637#3618#3609#3621#3641#3585#3588#3657#3634' ( Customer )'
        Font.Charset = THAI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzLabel23: TRzLabel
        Left = 872
        Top = 2
        Width = 180
        Height = 26
        AutoSize = False
        Caption = #3626#3634#3586#3634' : '#3626#3635#3609#3633#3585#3591#3634#3609#3651#3627#3597#3656
        Color = clGray
        Font.Charset = THAI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        BlinkColor = clWhite
        BorderColor = clWhite
        BorderShadow = clWhite
        FlyByColor = clWhite
        FlyByEnabled = True
        ShadowColor = 64
        TextStyle = tsShadow
      end
    end
    object Button1: TButton
      Left = 88
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
      OnClick = Button1Click
    end
    object RzPanel2: TRzPanel
      Left = 1
      Top = 33
      Width = 1078
      Height = 208
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 4
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1078
        Height = 167
        ActivePage = TabSheet1
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #3586#3657#3629#3617#3641#3621#3607#3633#3656#3623#3652#3611
          object RzLabel4: TRzLabel
            Left = 315
            Top = 8
            Width = 137
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3619#3627#3633#3626#3611#3619#3632#3592#3635#3605#3633#3623#3611#3619#3632#3594#3634#3594#3609' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel2: TRzLabel
            Left = 315
            Top = 32
            Width = 137
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3626#3585#3640#3621' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel1: TRzLabel
            Left = 5
            Top = 8
            Width = 108
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3619#3627#3633#3626#3626#3617#3634#3594#3636#3585' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel3: TRzLabel
            Left = 5
            Top = 32
            Width = 108
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3594#3639#3656#3629' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel12: TRzLabel
            Left = 5
            Top = 56
            Width = 108
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3623#3633#3609' / '#3648#3604#3639#3629#3609' / '#3611#3637' '#3648#3585#3636#3604' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel13: TRzLabel
            Left = 315
            Top = 56
            Width = 137
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3629#3634#3618#3640' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel14: TRzLabel
            Left = 5
            Top = 80
            Width = 108
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3648#3610#3629#3619#3660#3650#3607#3619' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel7: TRzLabel
            Left = 315
            Top = 80
            Width = 137
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' Sex '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel17: TRzLabel
            Left = 659
            Top = 8
            Width = 137
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3623#3633#3609#3607#3637#3656#3621#3591#3607#3632#3648#3610#3637#3618#3609' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel18: TRzLabel
            Left = 659
            Top = 32
            Width = 137
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3626#3632#3606#3634#3609#3632' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzDBEdit1: TRzDBEdit
            Left = 116
            Top = 32
            Width = 177
            Height = 23
            DataSource = dsCustomers
            DataField = 'FNAME'
            AutoSize = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
          end
          object edIdCard: TRzDBEdit
            Left = 455
            Top = 8
            Width = 174
            Height = 23
            DataSource = dsCustomers
            DataField = 'IDCARD'
            AutoSize = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 1
          end
          object RzDBEdit4: TRzDBEdit
            Left = 455
            Top = 32
            Width = 174
            Height = 23
            DataSource = dsCustomers
            DataField = 'LNAME'
            AutoSize = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 2
          end
          object RzDBEdit17: TRzDBEdit
            Left = 116
            Top = 8
            Width = 177
            Height = 23
            DataSource = dsCustomers
            DataField = 'CIFCODE'
            ReadOnly = True
            AutoSize = False
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FocusColor = clSilver
            FrameVisible = True
            ParentFont = False
            ReadOnlyColor = clSilver
            TabOrder = 3
          end
          object RzDBEdit11: TRzDBEdit
            Left = 116
            Top = 56
            Width = 177
            Height = 23
            DataSource = dsCustomers
            DataField = 'BIRTH_DATE'
            AutoSize = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 4
          end
          object RzDBEdit12: TRzDBEdit
            Left = 455
            Top = 56
            Width = 174
            Height = 23
            DataSource = dsCustomers
            DataField = 'AGE'
            AutoSize = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 5
          end
          object RzDBEdit13: TRzDBEdit
            Left = 116
            Top = 80
            Width = 177
            Height = 23
            DataSource = dsCustomers
            DataField = 'TELEPHONE_NUM'
            AutoSize = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 6
          end
          object DBLookupComboboxEh1: TDBLookupComboboxEh
            Left = 455
            Top = 80
            Width = 174
            Height = 23
            AutoSize = False
            DataField = 'SEX'
            DataSource = dsCustomers
            EditButtons = <>
            KeyField = 'CDECDE'
            ListField = 'CDENME'
            ListSource = dsSex
            TabOrder = 7
            Visible = True
          end
          object RzDBEdit15: TRzDBEdit
            Left = 799
            Top = 8
            Width = 174
            Height = 23
            DataSource = dsCustomers
            DataField = 'REGISTER_DATE'
            ReadOnly = True
            AutoSize = False
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            ReadOnlyColor = clSilver
            TabOrder = 8
          end
          object DBLookupComboboxEh2: TDBLookupComboboxEh
            Left = 799
            Top = 32
            Width = 174
            Height = 23
            AutoSize = False
            DataField = 'STATUS'
            DataSource = dsCustomers
            EditButtons = <>
            KeyField = 'CDECDE'
            ListField = 'CDENME'
            ListSource = dsPersonStatus
            TabOrder = 9
            Visible = True
          end
        end
        object TabSheet2: TTabSheet
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ImageIndex = 1
          object RzLabel5: TRzLabel
            Left = 3
            Top = 10
            Width = 140
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '#3610#3657#3634#3609#3648#3621#3586#3607#3637#3656' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel6: TRzLabel
            Left = 3
            Top = 35
            Width = 140
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3594#3639#3656#3629#3627#3617#3641#3656#3610#3657#3634#3609'/'#3650#3588#3619#3591#3585#3634#3619', '#3594#3633#3657#3609#3607#3637#3656' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel8: TRzLabel
            Left = 3
            Top = 60
            Width = 140
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3627#3617#3641#3656#3607#3637#3656' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel9: TRzLabel
            Left = 328
            Top = 10
            Width = 114
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3595#3629#3618' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel10: TRzLabel
            Left = 328
            Top = 35
            Width = 114
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3619#3627#3633#3626#3605#3635#3610#3621'/'#3649#3586#3623#3591' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel11: TRzLabel
            Left = 328
            Top = 60
            Width = 114
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3619#3627#3633#3626#3629#3635#3648#3616#3629'/'#3648#3586#3605' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel15: TRzLabel
            Left = 328
            Top = 85
            Width = 114
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3619#3627#3633#3626#3592#3633#3591#3627#3623#3633#3604' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzLabel16: TRzLabel
            Left = 328
            Top = 110
            Width = 114
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660' '
            Color = clSilver
            ParentColor = False
            Layout = tlCenter
          end
          object RzDBEdit3: TRzDBEdit
            Left = 145
            Top = 10
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'LODGE_NUMBER'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
          end
          object RzDBEdit5: TRzDBEdit
            Left = 145
            Top = 35
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'LODGE_NUMBER'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 1
          end
          object RzDBEdit6: TRzDBEdit
            Left = 145
            Top = 60
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'SUB_DISTRIC'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 2
          end
          object RzDBEdit7: TRzDBEdit
            Left = 448
            Top = 10
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'SOI'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 3
          end
          object RzDBEdit8: TRzDBEdit
            Left = 448
            Top = 35
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'DISTRIC'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 4
          end
          object RzDBEdit9: TRzDBEdit
            Left = 448
            Top = 60
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'AMPHUR'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 5
          end
          object RzDBEdit10: TRzDBEdit
            Left = 448
            Top = 85
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'PROVINCE'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 6
          end
          object RzDBEdit14: TRzDBEdit
            Left = 448
            Top = 110
            Width = 177
            Height = 24
            DataSource = dsCustomers
            DataField = 'POST_CODE'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 7
          end
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 167
        Width = 1078
        Height = 41
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 1
        DesignSize = (
          1078
          41)
        object btnNew: TRzBitBtn
          Left = 760
          Top = 8
          Width = 131
          Height = 29
          Anchors = [akRight, akBottom]
          Caption = 'F3 - '#3621#3591#3607#3632#3648#3610#3637#3618#3609#3651#3627#3617#3656
          Color = clSilver
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          TabOrder = 0
          OnClick = btnNewClick
        end
        object btnSave: TRzBitBtn
          Left = 896
          Top = 8
          Width = 103
          Height = 29
          Anchors = [akRight, akBottom]
          Caption = 'F4 - '#3610#3633#3609#3607#3638#3585
          Color = clSilver
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          TabOrder = 1
          OnClick = btnSaveClick
        end
      end
    end
  end
  object cdsCustomers: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsCustomersBeforePost
    Left = 88
    Top = 392
  end
  object dsCustomers: TDataSource
    DataSet = cdsCustomers
    Left = 136
    Top = 392
  end
  object dsSex: TDataSource
    DataSet = cdsSex
    Left = 344
    Top = 392
  end
  object cdsSex: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 392
  end
  object cdsPersonStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 448
  end
  object dsPersonStatus: TDataSource
    DataSet = cdsPersonStatus
    Left = 368
    Top = 464
  end
end
