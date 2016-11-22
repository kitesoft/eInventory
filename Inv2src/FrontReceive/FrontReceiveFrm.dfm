object frmFrontReceive: TfrmFrontReceive
  Left = 439
  Top = 193
  Width = 1088
  Height = 563
  Caption = 'frmFrontReceive'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnAllClient: TRzPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 536
    Align = alClient
    BorderOuter = fsPopup
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object pnTop: TRzPanel
      Left = 1
      Top = 33
      Width = 1078
      Height = 328
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
      object RzLabel4: TRzLabel
        Left = 299
        Top = 40
        Width = 137
        Height = 23
        AutoSize = False
        Caption = ' '#3619#3627#3633#3626#3611#3619#3632#3592#3635#3605#3633#3623#3611#3619#3632#3594#3634#3594#3609
        Color = clSilver
        ParentColor = False
        Layout = tlCenter
        BorderColor = clGray
      end
      object RzLabel2: TRzLabel
        Left = 299
        Top = 64
        Width = 137
        Height = 23
        AutoSize = False
        Caption = ' '#3626#3585#3640#3621
        Color = clSilver
        ParentColor = False
        Layout = tlCenter
        BorderColor = clGray
      end
      object RzLabel1: TRzLabel
        Left = 13
        Top = 40
        Width = 97
        Height = 23
        AutoSize = False
        Caption = ' '#3619#3627#3633#3626#3626#3617#3634#3594#3636#3585
        Color = clSilver
        ParentColor = False
        Layout = tlCenter
        BorderColor = clGray
      end
      object RzLabel3: TRzLabel
        Left = 13
        Top = 64
        Width = 97
        Height = 23
        AutoSize = False
        Caption = ' '#3594#3639#3656#3629
        Color = clSilver
        ParentColor = False
        Layout = tlCenter
        BorderColor = clGray
      end
      object RzDBEdit1: TRzDBEdit
        Left = 114
        Top = 64
        Width = 177
        Height = 22
        DataSource = dsCustomer
        DataField = 'FNAME'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 439
        Top = 39
        Width = 174
        Height = 22
        DataSource = dsCustomer
        DataField = 'IDCARD'
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
        Left = 439
        Top = 64
        Width = 174
        Height = 22
        DataSource = dsCustomer
        DataField = 'LNAME'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameVisible = True
        ParentFont = False
        TabOrder = 2
      end
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 1078
        Height = 39
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 3
        object lbOrderItem: TLabel
          Left = 140
          Top = 8
          Width = 73
          Height = 23
          AutoSize = False
          Caption = ' '#3586#3657#3629#3588#3623#3634#3617#3588#3657#3609#3627#3634
          Color = clSilver
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object btnSearch: TRzBitBtn
          Left = 4
          Top = 6
          Width = 133
          Height = 27
          Caption = 'F6 - '#3588#3657#3609#3627#3634'..'
          Color = 16753919
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = btnSearchClick
        end
        object edDonatorName: TRzEdit
          Left = 215
          Top = 7
          Width = 314
          Height = 24
          TabStop = False
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
          TabOrder = 1
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 287
        Width = 1078
        Height = 41
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 4
      end
      object RzDBEdit17: TRzDBEdit
        Left = 114
        Top = 39
        Width = 177
        Height = 22
        DataSource = dsCustomer
        DataField = 'CIFCODE'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
      end
      object pnNetCharge: TRzPanel
        Left = 733
        Top = 39
        Width = 345
        Height = 73
        Align = alRight
        BorderOuter = fsGroove
        Caption = '0.00'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object lbPeriod: TRzLabel
          Left = 4
          Top = 1
          Width = 104
          Height = 24
          AutoSize = False
          Caption = ' '#3591#3623#3604#3607#3637#3656' 00'
          Color = clSilver
          Font.Charset = THAI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          BorderColor = clGray
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 112
        Width = 1078
        Height = 175
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 7
        object RzPanel4: TRzPanel
          Left = 893
          Top = 0
          Width = 185
          Height = 175
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 0
          object btnNew: TRzBitBtn
            Left = 10
            Top = 25
            Width = 153
            Height = 29
            Caption = #3619#3633#3610#3594#3635#3619#3632#3619#3634#3618#3585#3634#3619
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
          object btnClash: TRzBitBtn
            Left = 8
            Top = 54
            Width = 153
            Height = 29
            Caption = 'F10-Cash'
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 1
            OnClick = btnClashClick
          end
          object RzBitBtn2: TRzBitBtn
            Left = 8
            Top = 92
            Width = 153
            Height = 29
            Caption = #3604#3641#3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3594#3635#3619#3632
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 2
          end
          object btnCloseContract: TRzBitBtn
            Left = 8
            Top = 121
            Width = 153
            Height = 29
            Caption = #3611#3636#3604#3626#3633#3597#3597#3634
            Color = 12615808
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 3
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 893
          Height = 175
          ActivePage = TabSheet1
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 1
          object TabSheet1: TTabSheet
            Caption = #3586#3657#3629#3617#3641#3621#3585#3634#3619#3619#3633#3610#3594#3635#3619#3632
            object RzLabel6: TRzLabel
              Left = 26
              Top = 53
              Width = 83
              Height = 16
              Caption = #3623#3633#3609#3607#3637#3656#3588#3619#3610#3585#3635#3627#3609#3604
            end
            object RzLabel7: TRzLabel
              Left = 320
              Top = 22
              Width = 100
              Height = 16
              Caption = #3592#3635#3609#3623#3609#3607#3637#3656#3594#3635#3619#3632#3621#3656#3634#3626#3640#3604
            end
            object RzLabel8: TRzLabel
              Left = 56
              Top = 81
              Width = 53
              Height = 16
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            end
            object RzLabel9: TRzLabel
              Left = 320
              Top = 48
              Width = 100
              Height = 16
              Caption = #3592#3635#3609#3623#3609#3607#3637#3656#3594#3635#3619#3632#3621#3656#3634#3626#3640#3604
            end
            object RzLabel10: TRzLabel
              Left = 384
              Top = 85
              Width = 34
              Height = 16
              Caption = #3648#3591#3636#3609#3605#3657#3609
            end
            object RzLabel11: TRzLabel
              Left = 344
              Top = 111
              Width = 81
              Height = 16
              Caption = #3618#3629#3604#3648#3591#3636#3609#3607#3633#3657#3591#3627#3617#3604
            end
            object RzLabel20: TRzLabel
              Left = 34
              Top = 29
              Width = 29
              Height = 16
              Caption = #3591#3623#3604#3607#3637#3656
            end
            object RzDBEdit5: TRzDBEdit
              Left = 120
              Top = 50
              Width = 174
              Height = 24
              DataSource = dsIns
              DataField = 'INSDUE'
              Font.Charset = THAI_CHARSET
              Font.Color = clPurple
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
            end
            object RzDBEdit6: TRzDBEdit
              Left = 432
              Top = 17
              Width = 174
              Height = 24
              DataSource = dsLastReceive
              DataField = 'INSNAM'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 1
            end
            object RzDBEdit7: TRzDBEdit
              Left = 120
              Top = 76
              Width = 174
              Height = 24
              DataSource = dsIns
              DataField = 'INSNAM'
              Font.Charset = THAI_CHARSET
              Font.Color = clPurple
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 2
            end
            object RzDBEdit8: TRzDBEdit
              Left = 432
              Top = 43
              Width = 174
              Height = 24
              DataSource = dsLastReceive
              DataField = 'INSDUE'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 3
            end
            object RzDBEdit9: TRzDBEdit
              Left = 432
              Top = 80
              Width = 174
              Height = 24
              DataSource = dsConn
              DataField = 'CONAMT'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 4
            end
            object RzDBEdit10: TRzDBEdit
              Left = 432
              Top = 106
              Width = 174
              Height = 24
              DataSource = dsConn
              DataField = 'CONNET'
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 5
            end
            object RzDBEdit15: TRzDBEdit
              Left = 120
              Top = 24
              Width = 174
              Height = 24
              DataSource = dsIns
              DataField = 'INSITM'
              Font.Charset = THAI_CHARSET
              Font.Color = clPurple
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 6
            end
          end
          object TabSheet2: TTabSheet
            Caption = #3586#3657#3629#3617#3641#3621#3626#3636#3609#3648#3594#3639#3656#3629
            ImageIndex = 1
            object RzLabel5: TRzLabel
              Left = 14
              Top = 47
              Width = 80
              Height = 16
              Caption = #3623#3633#3609#3607#3637#3656#3621#3591#3607#3632#3648#3610#3637#3618#3609
            end
            object RzLabel19: TRzLabel
              Left = 14
              Top = 73
              Width = 81
              Height = 16
              Caption = #3618#3629#3604#3648#3591#3636#3609#3607#3633#3657#3591#3627#3617#3604
            end
            object RzLabel21: TRzLabel
              Left = 358
              Top = 81
              Width = 72
              Height = 16
              Caption = #3629#3633#3605#3619#3634#3604#3629#3585#3648#3610#3637#3657#3618
            end
            object RzLabel15: TRzLabel
              Left = 14
              Top = 21
              Width = 65
              Height = 16
              Caption = #3648#3621#3586#3607#3637#3656#3626#3633#3597#3597#3634
            end
            object RzLabel24: TRzLabel
              Left = 358
              Top = 17
              Width = 55
              Height = 16
              Caption = #3592#3635#3609#3623#3609#3591#3623#3604
            end
            object RzDBEdit3: TRzDBEdit
              Left = 102
              Top = 42
              Width = 174
              Height = 24
              DataSource = dsConn
              DataField = 'CONDTE'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
            end
            object RzDBEdit14: TRzDBEdit
              Left = 102
              Top = 68
              Width = 174
              Height = 24
              DataSource = dsConn
              DataField = 'CONNET'
              Font.Charset = THAI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 1
            end
            object RzDBEdit16: TRzDBEdit
              Left = 446
              Top = 76
              Width = 174
              Height = 24
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 2
            end
            object RzDBEdit18: TRzDBEdit
              Left = 102
              Top = 16
              Width = 174
              Height = 24
              DataSource = dsConn
              DataField = 'CONRUN'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 3
            end
            object RzDBEdit21: TRzDBEdit
              Left = 446
              Top = 12
              Width = 174
              Height = 24
              DataSource = dsConn
              DataField = 'CONPER'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 4
            end
          end
          object TabSheet3: TTabSheet
            Caption = #3586#3657#3629#3617#3641#3621#3621#3641#3585#3588#3657#3634
            ImageIndex = 2
            object RzLabel12: TRzLabel
              Left = 16
              Top = 20
              Width = 111
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = #3623#3633#3609' / '#3648#3604#3639#3629#3609' / '#3611#3637' '#3648#3585#3636#3604
            end
            object RzLabel13: TRzLabel
              Left = 407
              Top = 19
              Width = 22
              Height = 16
              Caption = #3629#3634#3618#3640
            end
            object RzLabel14: TRzLabel
              Left = 602
              Top = 15
              Width = 47
              Height = 16
              Caption = #3648#3610#3629#3619#3660#3650#3607#3619
            end
            object RzLabel18: TRzLabel
              Left = 16
              Top = 46
              Width = 111
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = #3648#3621#3586#3607#3637#3656
            end
            object RzLabel22: TRzLabel
              Left = 296
              Top = 46
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = #3648#3621#3586#3607#3637#3656
            end
            object RzDBEdit11: TRzDBEdit
              Left = 135
              Top = 16
              Width = 177
              Height = 24
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
            end
            object RzDBEdit12: TRzDBEdit
              Left = 447
              Top = 14
              Width = 57
              Height = 24
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 1
            end
            object RzDBEdit13: TRzDBEdit
              Left = 690
              Top = 10
              Width = 174
              Height = 24
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 2
            end
            object RzDBEdit19: TRzDBEdit
              Left = 135
              Top = 42
              Width = 177
              Height = 24
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 3
            end
            object RzDBEdit20: TRzDBEdit
              Left = 385
              Top = 42
              Width = 177
              Height = 24
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
    end
    object pnContainer: TRzPanel
      Left = 1
      Top = 361
      Width = 775
      Height = 174
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 775
        Height = 174
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = dsAllINS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'INSITM'
            Options.Editing = False
            Options.Focusing = False
            Width = 49
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = #3623#3633#3609#3607#3637#3656#3588#3619#3610#3585#3635#3627#3609#3604
            DataBinding.FieldName = 'INSDUE'
            Options.Editing = False
            Options.Focusing = False
            Width = 116
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            DataBinding.FieldName = 'INSIAM'
            Options.Editing = False
            Options.Focusing = False
            Width = 114
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #3604#3629#3585#3648#3610#3637#3657#3618
            DataBinding.FieldName = 'INSVAM'
            Options.Editing = False
            Options.Focusing = False
            Width = 132
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609
            DataBinding.FieldName = 'INSNAM'
            Options.Editing = False
            Options.Focusing = False
            Width = 139
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = #3626#3606#3634#3609#3632#3585#3634#3619#3592#3656#3634#3618
            DataBinding.FieldName = 'INSF01'
            Options.Editing = False
            Options.Focusing = False
            Width = 97
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object pnRight: TRzPanel
      Left = 776
      Top = 361
      Width = 303
      Height = 174
      Align = alRight
      BorderOuter = fsNone
      Color = clWhite
      TabOrder = 2
    end
    object rzTopPanel: TRzPanel
      Left = 1
      Top = 29
      Width = 1078
      Height = 4
      Align = alTop
      BorderOuter = fsNone
      GradientColorStyle = gcsCustom
      TabOrder = 3
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
      TabOrder = 4
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 159
        Height = 16
        Caption = #3619#3633#3610#3594#3635#3619#3632' ( Front Receive )'
        Font.Charset = THAI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzLabel16: TRzLabel
        Left = 323
        Top = 2
        Width = 97
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = #3594#3639#3656#3629'-'#3609#3634#3617#3626#3585#3640#3621' :'
        Color = clGray
        Font.Charset = THAI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        BlinkColor = clYellow
        BorderColor = clYellow
        BorderShadow = clBlack
        FlyByColor = clYellow
        FlyByEnabled = True
        ShadowColor = 64
        TextStyle = tsShadow
      end
      object lbUserName: TRzLabel
        Left = 421
        Top = 2
        Width = 191
        Height = 26
        AutoSize = False
        Caption = #3609#3634#3618#3585#3585#3585' '#3586#3586#3586
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
      object lbDonationPoint: TRzLabel
        Left = 696
        Top = 2
        Width = 145
        Height = 26
        AutoSize = False
        Caption = 'BL13-0601-00001'
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
      object RzLabel17: TRzLabel
        Left = 598
        Top = 2
        Width = 97
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619' :'
        Color = clGray
        Font.Charset = THAI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        BlinkColor = clYellow
        BorderColor = clYellow
        BorderShadow = clBlack
        FlyByColor = clYellow
        FlyByEnabled = True
        ShadowColor = 64
        TextStyle = tsShadow
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
  end
  object Conn: TSQLConnection
    ConnectionName = 'Devart SQL Server'
    DriverName = 'DevartSQLServer'
    GetDriverFunc = 'getSQLDriverSQLServer'
    LibraryName = 'dbexpsda.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=127.0.0.1'
      'DataBase=fddb'
      'DriverName=DevartSQLServer'
      'User_Name=sa'
      'Password=123456'
      'LongStrings=True'
      'EnableBCD=True'
      'FetchAll=True')
    VendorLib = 'sqloledb.dll'
    Left = 122
    Top = 337
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 637
    Top = 196
  end
  object dsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 637
    Top = 241
  end
  object cdsConn: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 693
    Top = 196
  end
  object dsConn: TDataSource
    DataSet = cdsConn
    Left = 693
    Top = 249
  end
  object cdsLastRa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 741
    Top = 204
  end
  object dsLastRa: TDataSource
    DataSet = cdsLastRa
    Left = 749
    Top = 249
  end
  object cdsIns: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 813
    Top = 220
  end
  object dsIns: TDataSource
    DataSet = cdsIns
    Left = 789
    Top = 177
  end
  object cdsLoanType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 861
    Top = 188
  end
  object dsLoanType: TDataSource
    DataSet = cdsLoanType
    Left = 877
    Top = 273
  end
  object dsAllINS: TDataSource
    DataSet = cdsAllINS
    Left = 853
    Top = 377
  end
  object cdsAllINS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 877
    Top = 420
  end
  object cdsLastReceive: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 645
    Top = 76
  end
  object dsLastReceive: TDataSource
    DataSet = cdsLastReceive
    Left = 645
    Top = 121
  end
end
