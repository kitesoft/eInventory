object frmAdminTools: TfrmAdminTools
  Left = 375
  Top = 107
  Width = 1088
  Height = 563
  Caption = 'frmAdminTools'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
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
        Width = 210
        Height = 16
        Caption = #3612#3641#3657#3604#3641#3649#3621#3619#3632#3610#3610' ( Administator Tools )'
        Font.Charset = THAI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pgAllClients: TPageControl
      Left = 1
      Top = 33
      Width = 1078
      Height = 502
      ActivePage = TabUserPermissions
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 2
      object TabUserPermissions: TTabSheet
        Caption = 'Users And Permissions'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          1070
          471)
        object Splitter1: TSplitter
          Left = 249
          Top = 0
          Height = 471
        end
        object lvUsrePermission: TListView
          Tag = 1
          Left = 252
          Top = 0
          Width = 818
          Height = 417
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clWhite
          Columns = <
            item
              Width = 300
            end
            item
              Caption = 'Access'
              Width = 60
            end
            item
              Caption = 'Edit'
              Width = 60
            end
            item
              Caption = 'Delete'
              Width = 60
            end
            item
              Caption = 'Cancel'
              Width = 60
            end
            item
              Caption = 'Approve'
              Width = 60
            end
            item
              Caption = 'Ex1'
              Width = 40
            end
            item
              Caption = 'Ex2'
              Width = 40
            end
            item
              Caption = 'Ex3'
              Width = 40
            end
            item
              Caption = 'Ex4'
              Width = 40
            end
            item
              Caption = 'Ex5'
              Width = 40
            end
            item
              Caption = 'Ex6'
              Width = 40
            end
            item
              Caption = 'Ex7'
              Width = 40
            end
            item
              Caption = 'Ex8'
              Width = 40
            end
            item
              Caption = 'Ex9'
              Width = 40
            end
            item
              Caption = 'Ex10'
              Width = 40
            end>
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentFont = False
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = lvUsrePermissionColumnClick
          OnCustomDrawItem = lvUsrePermissionCustomDrawItem
          OnCustomDrawSubItem = lvUsrePermissionCustomDrawSubItem
          OnMouseDown = lvUsrePermissionMouseDown
        end
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 249
          Height = 471
          Align = alLeft
          BorderOuter = fsNone
          TabOrder = 1
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 249
            Height = 41
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 41
            Width = 249
            Height = 430
            Align = alClient
            TabOrder = 1
            object cxGrid1DBTableView1: TcxGridDBTableView
              DataController.DataSource = dsAllRole
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Column1: TcxGridDBColumn
                DataBinding.FieldName = 'ROLNAM'
                Options.Editing = False
                Options.Focusing = False
                Width = 237
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object btnSave: TcxButton
          Left = 989
          Top = 430
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #3610#3633#3609#3607#3638#3585
          TabOrder = 2
          OnClick = btnSaveClick
          NumGlyphs = 2
          LookAndFeel.Kind = lfStandard
          OptionsImage.Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000730E0000730E00000001000000000000000000003300
            00006600000099000000CC000000FF0000000033000033330000663300009933
            0000CC330000FF33000000660000336600006666000099660000CC660000FF66
            000000990000339900006699000099990000CC990000FF99000000CC000033CC
            000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
            0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
            330000333300333333006633330099333300CC333300FF333300006633003366
            33006666330099663300CC663300FF6633000099330033993300669933009999
            3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
            330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
            66006600660099006600CC006600FF0066000033660033336600663366009933
            6600CC336600FF33660000666600336666006666660099666600CC666600FF66
            660000996600339966006699660099996600CC996600FF99660000CC660033CC
            660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
            6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
            990000339900333399006633990099339900CC339900FF339900006699003366
            99006666990099669900CC669900FF6699000099990033999900669999009999
            9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
            990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
            CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
            CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
            CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
            CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
            CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
            FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
            FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
            FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
            FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
            000000808000800000008000800080800000C0C0C00080808000191919004C4C
            4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
            6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
            090909090909090909E8E8E881818181818181818181818181E8E809101009E3
            1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
            1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
            1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
            E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
            090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
            101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
            090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
            D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
            0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
            D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
            0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
            D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
            090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          OptionsImage.NumGlyphs = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Modules Setting'
        ImageIndex = 1
      end
      object TabSheet3: TTabSheet
        Caption = 'Backup And Restore'
        ImageIndex = 2
        object Label2: TLabel
          Left = 32
          Top = 375
          Width = 32
          Height = 13
          Caption = 'Server'
          Visible = False
        end
        object Label3: TLabel
          Left = 168
          Top = 375
          Width = 46
          Height = 13
          Caption = 'Database'
          Visible = False
        end
        object Label4: TLabel
          Left = 295
          Top = 375
          Width = 52
          Height = 13
          Caption = 'User Name'
          Visible = False
        end
        object Label5: TLabel
          Left = 422
          Top = 375
          Width = 46
          Height = 13
          Caption = 'Password'
          Visible = False
        end
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 1070
          Height = 73
          Align = alTop
          BorderOuter = fsPopup
          TabOrder = 0
          DesignSize = (
            1069
            72)
          object StatusLabel: TLabel
            Left = 8
            Top = 51
            Width = 16
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = '----'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ProgressBar: TProgressBar
            Left = 10
            Top = 11
            Width = 561
            Height = 9
            TabOrder = 0
          end
          object TotalPg: TProgressBar
            Left = 10
            Top = 23
            Width = 561
            Height = 9
            TabOrder = 1
          end
          object btnBackup: TcxButton
            Left = 731
            Top = 7
            Width = 152
            Height = 28
            Caption = 'Backup'
            TabOrder = 2
            OnClick = btnBackupClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
          end
          object btnCheckBackup: TcxButton
            Left = 577
            Top = 38
            Width = 152
            Height = 28
            Caption = 'Check backup'
            TabOrder = 3
            OnClick = btnCheckBackupClick
            LookAndFeel.Kind = lfFlat
          end
          object btnRestoreAll: TcxButton
            Left = 731
            Top = 38
            Width = 151
            Height = 28
            Caption = 'Restore All'
            Enabled = False
            TabOrder = 4
            OnClick = btnRestoreAllClick
            LookAndFeel.Kind = lfFlat
          end
          object btnBackUpSelected: TcxButton
            Left = 885
            Top = 7
            Width = 152
            Height = 28
            Caption = 'Backup Selected'
            TabOrder = 5
            OnClick = btnBackUpSelectedClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
          end
          object btnRestoreSelected: TcxButton
            Left = 885
            Top = 38
            Width = 152
            Height = 28
            Caption = 'Restore Selected'
            Enabled = False
            TabOrder = 6
            OnClick = btnRestoreSelectedClick
            LookAndFeel.Kind = lfFlat
          end
        end
        object ListView1: TListView
          Left = 0
          Top = 92
          Width = 1070
          Height = 379
          Align = alClient
          Checkboxes = True
          Columns = <
            item
              Caption = 'Filename'
              Width = 130
            end
            item
              Caption = 'Dir'
              Width = 110
            end
            item
              Caption = 'Attr'
              Width = 30
            end
            item
              Alignment = taRightJustify
              Caption = 'FS Packed'
              Width = 80
            end
            item
              Alignment = taRightJustify
              Caption = 'FS Unpacked'
              Width = 80
            end
            item
              Alignment = taRightJustify
              Caption = 'CRC'
              Width = 70
            end
            item
              Caption = 'Method'
              Width = 60
            end
            item
              Caption = 'ID'
              Width = 30
            end
            item
              Caption = 'Date-Time'
              Width = 120
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MultiSelect = True
          ReadOnly = True
          RowSelect = True
          ParentFont = False
          TabOrder = 1
          ViewStyle = vsReport
        end
        object edServer: TEdit
          Left = 32
          Top = 392
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'localhost'
          Visible = False
        end
        object edDatabase: TEdit
          Left = 168
          Top = 392
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'myhosxp'
          Visible = False
        end
        object edUserName: TEdit
          Left = 295
          Top = 393
          Width = 121
          Height = 21
          TabOrder = 4
          Text = 'root'
          Visible = False
        end
        object edPassword: TEdit
          Left = 422
          Top = 391
          Width = 121
          Height = 21
          PasswordChar = '*'
          TabOrder = 5
          Text = '123456'
          Visible = False
        end
        object BackupFileNameEdit: TJvFilenameEdit
          Left = 0
          Top = 73
          Width = 1070
          Height = 19
          Align = alTop
          Flat = True
          ParentFlat = False
          TabOrder = 6
          Text = 'BackupFileNameEdit'
        end
        object Options: TGroupBox
          Left = 779
          Top = 77
          Width = 289
          Height = 88
          Caption = 'Options'
          TabOrder = 7
          Visible = False
          object raDatabase: TRadioButton
            Left = 40
            Top = 20
            Width = 113
            Height = 17
            Caption = 'Database'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object raAllStockDatabase: TRadioButton
            Left = 40
            Top = 43
            Width = 113
            Height = 17
            Caption = 'Stock Database'
            TabOrder = 1
          end
          object raOnlyStockData: TRadioButton
            Left = 40
            Top = 66
            Width = 113
            Height = 17
            Caption = 'Only StockData'
            TabOrder = 2
          end
        end
        object cxMemo1: TcxMemo
          Left = 5
          Top = 288
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Visible = False
          Height = 51
          Width = 764
        end
        object btnShowTables: TcxButton
          Left = 577
          Top = 7
          Width = 152
          Height = 28
          Caption = 'Show Tables'
          TabOrder = 9
          OnClick = btnShowTablesClick
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
        end
      end
    end
  end
  object MyConnection1: TMyConnection
    IsolationLevel = ilRepeatableRead
    Options.Charset = 'tis620'
    LoginPrompt = False
    Left = 409
    Top = 300
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF8
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=CP_UTF8')
    ReadOnly = True
    Port = 0
    Left = 360
    Top = 376
  end
  object Zip: TZipMaster
    AddOptions = []
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR, assJPG, assJPEG, ass7Zp, assMP3, assWMV, assWMA, assDVR, assAVI]
    ConfirmErase = False
    DLL_Load = False
    ExtrOptions = []
    KeepFreeOnAllDisks = 0
    KeepFreeOnDisk1 = 0
    LanguageID = 0
    MaxVolumeSizeKb = 0
    NoReadAux = False
    SFXOptions = []
    SFXOverwriteMode = ovrAlways
    SpanOptions = []
    Trace = False
    Unattended = False
    UseUTF8 = False
    Verbose = False
    Version = '1.9.1.0017'
    WriteOptions = []
    Left = 466
    Top = 362
  end
  object MyDump: TMyDump
    OnBackupProgress = MyDumpBackupProgress
    OnRestoreProgress = MyDumpRestoreProgress
    Connection = MyConnection1
    Options.DisableKeys = True
    Left = 519
    Top = 300
  end
  object zdump: TZSQLProcessor
    Params = <>
    Delimiter = ';'
    Left = 573
    Top = 354
  end
  object MyQuery: TMyQuery
    Connection = MyConnection1
    Left = 625
    Top = 348
  end
  object MyScript: TMyScript
    Connection = MyConnection1
    Left = 679
    Top = 354
  end
  object SevenZip1: TSevenZip
    SFXCreate = False
    SFXModule = '7z.sfx'
    AddOptions = []
    ExtractOptions = []
    LZMACompressType = LZMA
    LZMACompressStrength = SAVE
    LZMAStrength = 20
    LPPMDmem = 16
    LPPMDsize = 16
    NumberOfFiles = -1
    VolumeSize = 0
    OnListfile = SevenZip1Listfile
    OnAddfile = SevenZip1Addfile
    OnExtractfile = SevenZip1Extractfile
    OnProgress = SevenZip1Progress
    OnPreProgress = SevenZip1PreProgress
    Left = 746
    Top = 356
  end
  object cdsAllRole: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsAllRoleAfterScroll
    Left = 165
    Top = 204
  end
  object dsAllRole: TDataSource
    DataSet = cdsAllRole
    Left = 93
    Top = 252
  end
end
