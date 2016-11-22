object frmMasterCustomer: TfrmMasterCustomer
  Left = 380
  Top = 141
  Width = 1088
  Height = 563
  Caption = 'frmMasterCustomer'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
        Width = 126
        Height = 16
        Caption = #3621#3641#3585#3588#3657#3634' ( Customers )'
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
      ActivePage = TabList
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 2
      object TabList: TTabSheet
        Caption = #3619#3634#3618#3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
        object Splitter1: TSplitter
          Left = 0
          Top = 38
          Width = 1070
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object pnMiddle: TRzPanel
          Left = 0
          Top = 77
          Width = 1070
          Height = 391
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object pgWarehouseProduct: TRzPageControl
            Left = 0
            Top = 0
            Width = 1070
            Height = 391
            ActivePage = TabWarehouseProducts
            Align = alClient
            TabIndex = 0
            TabOrder = 0
            TabOrientation = toBottom
            TabStyle = tsRoundCorners
            FixedDimension = 22
            object TabWarehouseProducts: TRzTabSheet
              Caption = #3619#3634#3618#3585#3634#3619#3621#3641#3585#3588#3657#3634#3607#3633#3657#3591#3627#3617#3604
              object grdAllCustomer: TcxGrid
                Left = 0
                Top = 0
                Width = 1068
                Height = 364
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView1: TcxGridDBTableView
                  OnDblClick = cxGridDBTableView1DblClick
                  DataController.DataSource = dsCustomers
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                  object cxGridDBColumn1: TcxGridDBColumn
                    Caption = 'Item'
                    DataBinding.FieldName = 'CSHSEQ'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 44
                  end
                  object cxGridDBTableView1Column11: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
                    DataBinding.FieldName = 'CSHCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 120
                  end
                  object cxGridDBColumn2: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629
                    DataBinding.FieldName = 'CSHNAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 438
                  end
                  object cxGridDBColumn3: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3612#3641#3657#3605#3636#3604#3605#3656#3629
                    DataBinding.FieldName = 'CSHCON'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 236
                  end
                  object cxGridDBTableView1Column7: TcxGridDBColumn
                    Caption = #3648#3610#3629#3650#3607#3619
                    DataBinding.FieldName = 'CSHPHO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 197
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    Caption = #3617#3639#3629#3606#3639#3629
                    DataBinding.FieldName = 'CSHMOB'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 129
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
          end
        end
        object pnTop: TRzPanel
          Left = 0
          Top = 0
          Width = 1070
          Height = 38
          Align = alTop
          BorderOuter = fsPopup
          TabOrder = 1
          object RzLabel17: TRzLabel
            Left = 196
            Top = 45
            Width = 95
            Height = 23
            AutoSize = False
            Caption = ' '#3588#3621#3633#3591
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            Visible = False
            BorderColor = clGray
          end
          object RzLabel16: TRzLabel
            Left = 556
            Top = 45
            Width = 118
            Height = 23
            AutoSize = False
            Caption = '  '#3627#3609#3656#3623#3618#3591#3634#3609#3607#3637#3656#3586#3629#3595#3639#3657#3629
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            Visible = False
            BorderColor = clGray
          end
          object RzLabel18: TRzLabel
            Left = 196
            Top = 69
            Width = 95
            Height = 23
            AutoSize = False
            Caption = ' '#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            Visible = False
            BorderColor = clGray
          end
          object RzLabel19: TRzLabel
            Left = 4
            Top = 6
            Width = 95
            Height = 23
            AutoSize = False
            Caption = ' '#3586#3657#3629#3588#3623#3634#3617#3588#3657#3609#3627#3634
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel20: TRzLabel
            Left = 556
            Top = 69
            Width = 118
            Height = 23
            AutoSize = False
            Caption = ' '#3611#3619#3632#3648#3616#3607#3585#3634#3619#3592#3633#3604#3595#3639#3657#3629
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            Visible = False
            BorderColor = clGray
          end
          object cmbWarehouse: TRzComboBox
            Left = 294
            Top = 44
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 0
            Visible = False
          end
          object cmbDepartments: TRzComboBox
            Left = 678
            Top = 44
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 1
            Visible = False
          end
          object cmbSuppliers: TRzComboBox
            Left = 294
            Top = 69
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
          end
          object btnRefreshA: TRzBitBtn
            Left = 748
            Top = 3
            Width = 120
            Height = 29
            Caption = #3588#3657#3609#3627#3634
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 3
            OnClick = btnRefreshAClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6DB0B0988A9C9C7E6D9C9C7E6DB0B0978AC0C0ACA1BFBFABA1AFAF96
              899A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
              66FFFFFFFFD8D88F43FAFAF3E8DFDFBD9DC4C47F52BABA6A34B8B86A3CCCCC95
              76F5F5E7D6F8F8EDDA979779670000000000000000000000000000000000A27F
              6FFFFFFFFFCACA6C12C0C07123D8D87400E8E88300D9D97200B7B75201BABA5D
              26D6D6A182FAFAF1E2989879680000000000000000000000000000000000A380
              70FFFFFFFFD6D67B19FEFEA62CFFFFA208DEDE7800C6C67C46F3F3DBC7FBFBF5
              EBFBFBF4E9FAFAF3E699997A6A0000000000000000000000000000000000A987
              78FFFFFFFFD7D77B20FFFFC56DFBFBA634C5C56E22FAFAF0E7FCFCF7EFFBFBF6
              EDFBFBF5EBFBFBF4E899997B6B0000000000000000000000000000000000AB89
              7AFFFFFFFFD4D47E29D8D88027D9D97D20D4D47719D3D37414D9D97E21D9D981
              28D4D47E28FBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
              7FFFFFFFFFFEFEFCFBFEFEFCFAFDFDFCFAFBFBF3EDC6C66E23FBFBA634FFFFC5
              6DD8D87C20FBFBF5EC9B9B7C6B0000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEF5F5E2D5C7C77E4ADEDE7800FFFFA208FEFEA6
              2CD7D77B1AFCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFD9D9A990BBBB5F2AB8B85201D9D97200E8E88300D8D87400C1C172
              24CBCB6C12FCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFBFBF6F4CFCF9D84BABA6E43BBBB6D39C6C68359E2E2C2A7FCFCF8
              F3D9D98F45F0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70B9B99B8DA7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
          object edSearch: TRzEdit
            Left = 102
            Top = 6
            Width = 643
            Height = 24
            FrameVisible = True
            TabOrder = 4
            OnChange = edSearchChange
          end
          object cmbPOType: TRzComboBox
            Left = 678
            Top = 69
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 5
            Visible = False
          end
        end
        object RzPanel3: TRzPanel
          Left = 0
          Top = 41
          Width = 1070
          Height = 36
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 2
          DesignSize = (
            1070
            36)
          object RzLabel2: TRzLabel
            Left = 8
            Top = 6
            Width = 353
            Height = 23
            AutoSize = False
            Caption = #3619#3634#3618#3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
            Font.Charset = THAI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object btnNewPO: TRzBitBtn
            Left = 936
            Top = 4
            Width = 128
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3648#3614#3636#3656#3617#3621#3641#3585#3588#3657#3634#3651#3627#3617#3656
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 0
            OnClick = btnNewPOClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6D9C9C7D6D9C9C7D6CBFBFABA1000075
              000000700000006D00BFBFABA100000000000000000000000000000000009B77
              66FFFFFFFFFAFAF4E9FAFAF4E9FAFAF4E9FAFAF3E8FAFAF3E7FCFCF8F100007D
              004444DD7700007200BDBDA99D0000000000000000000000000000000000A27F
              6FFFFFFFFFDDDDC2B5DDDDC2B5DCDCC2B5E9E9D6CD0000870000008500000081
              004848E17B00007A00000075000000700000000000000000000000000000A380
              70FFFFFFFFDBDBC3BBDBDBC3BADBDBC2B8EBEBDCD500008D005E5EF7915A5AF3
              8D5353EC864848E17B4545DE780000780000000000000000000000000000A987
              78FFFFFFFFDBDBC7C2DBDBC6C1DBDBC4BCEBEBDDD70000910000008D0000008B
              005A5AF38D000083000000810000007D0000000000000000000000000000AB89
              7AFFFFFFFFDBDBC7C3DBDBC7C2DBDBC5BEEBEBDED9EBEBDCD6EBEBDBD300008F
              005E5EF79100008900C8C8B7AE0000000000000000000000000000000000AF8E
              7FFFFFFFFFDCDCC5C0DCDCC5BFDBDBC4BDDBDBC2B9DBDBBFB4EBEBDBD3000093
              000000910000008D00BFBFABA10000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEFEFEFDFDFEFEFCFBFDFDFBF8FEFEFCFAFDFDFC
              F8FDFDFBF7FCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFDFDFCECCDFDFCDCBDEDECAC6DEDEC6C0DEDEC4BADEDEC1B4DEDEBE
              ADDEDEBEABFCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF8FCFCF9
              F4F9F9F4EEF0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70A7A78270A7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
          object btnDeletePO: TRzBitBtn
            Left = 461
            Top = 4
            Width = 80
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3621#3610
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 1
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000020482000A14
              AF86867EB8D4D4C8C32E2E2DB3252526B8B7B7ACC3A5A588799B9B7C6B9B9B7C
              6B9A9A7C6A99997B689B9B7C6B0000000000000000000000000002038E002C72
              FF151534D4212135C417174EFF15155CFF36363AC5FDFDF9F3FAFAF2E6FAFAF1
              E4F9F9EFE0F8F8EDDA9797796700000000000000000000000000000049001225
              C52C2C67FF25255DFF20205BFF14141FBAD3D3C9D8DFDFC3B5DCDCBBA9DCDCBA
              A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A79E
              C1101022BF2D2D66FF1C1C49F4747471C4ECECDDD6DBDBBDAFDADABBAADADAB8
              A5DCDCB9A5FAFAF3E699997A6A00000000000000000000000000000000002725
              A63F3F7DFF1C1C3FDD292961FF121223C4D2D2CADADEDEC4B8DBDBBCADDADABA
              A8DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000151C
              C039396DFF868683CC373738B42B2B6DFF29292ABDEEEEE2DCDBDBBDAFDBDBBA
              A9DCDCBCA9FBFBF5EA9A9A7C6B0000000000000000000000000000000000A59B
              CA424242C4F0F0E6E4CACAC3DA323231BBBDBDB8E5E7E7D4CCDBDBBDAFDBDBBA
              AADDDDBBA9FBFBF5EC9B9B7C6B0000000000000000000000000000000000BCA1
              94FFFFFFFFFEFEFEFEFEFEFEFEFFFFFEFEFEFEFDFCFDFDFBF8FDFDFAF6FCFCF9
              F3FCFCF7F0FCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFDFDFCECCDFDFCDCBDFDFCBC7DEDEC6C0DEDEC4BADEDEC1B4DEDEBE
              ADDEDEBEABFCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF8FCFCF9
              F4F9F9F4EEF0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70A7A78270A7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
          object btnHoldPO: TRzBitBtn
            Left = 352
            Top = 4
            Width = 109
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3649#3585#3657#3652#3586#3651#3610#3621#3591#3619#3633#3610
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6D9C9C7D6D9C9C7D6C9B9B7C6B9B9B7C
              6B9A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
              66FFFFFFFFFAFAF4E9FAFAF4E9EEEEE9DEE8E8E2D8F7F7F0E4FAFAF2E6FAFAF1
              E4F9F9EFE0F8F8EDDA979779670000000000000000000000000000000000A27F
              6FFFFFFFFFDDDDC2B5DDDDC2B5B5B5A9A4B1B1A19ADBDBC2B4DCDCBBA9DCDCBA
              A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A380
              70FFFFFFFFDBDBC3BBEAEADDD76F6F6D7192928B96C3C3CDB9E8E8D6CCDADAB8
              A5DCDCB9A5FAFAF3E699997A6A0000000000000000000000000000000000A987
              78FFFFFFFFDBDBC7C2E9E9DDDAA8A8BBCE3434B3562C2CB4447171B46FECECDB
              D2DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000AB89
              7AFFFFFFFFDBDBC7C3E6E6D7D49999D0A76666FF985A5AEC862E2EAD468787BE
              81EAEAD8CCFBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
              7FFFFFFFFFDCDCC5C0DEDEC9C3DBDBE4D65757E27F6A6AFF9D5555E17C2A2AA4
              3C9C9CC494FCFCF8F29B9B7C6B0000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEFEFEFDFDD1D1F8DC5454EE836868FF9B5050DC
              7724249E38B7B7DCB6B6B69F940000000000000000000000000000000000AF8F
              80FFFFFFFFDFDFCECCDFDFCDCBDEDECAC6E9E9D9D5ADADEAB95A5AF6886464FF
              974242DA693434873EC6C6BDB60000000000000000000000000000000000B190
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFD9191EFAC5555FC
              889A9AC1A4CDCDBBB66E6E6D8C0000010800000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFBFBFCFAA5A5C5
              A6FFFFFFFF787892F520203DDC0000026600000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9DEDED0
              C98C8C99DE424277FF2D2D4AD80101027700000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B393
              84C1C1B9D0313040BF00080C7E0000001400000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              709C473C37000000000000000000000000000000000000000000}
          end
          object btnNewCustomer: TRzBitBtn
            Left = 216
            Top = 4
            Width = 134
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3651#3610#3621#3591#3619#3633#3610#3651#3627#3617#3656' (PO)'
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 3
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000036706000E8E180B0B8A150A0A88140909851200004F
              0200000000000000000000000000000000000000000000000000000000000000
              00000000000000000000046A080051DA7B3A3ACF693939CD673232C25B010151
              0300000000000000000000000000000000000000000000000000000000000000
              00000000000000000000056808005CE0843E3ED46E3D3DD36D3434C55F020253
              0400000000000000000000000000000000000000000000000000000000000000
              0000000000000000000005630A0064E48A4141D7713F3FD56F3737C861020253
              050000000000000000000000000000000000000000000000000007770E00066E
              0D00066A0C0006680C0008810F0056E2824444DA744141D8723939CB64030371
              080003580500035705000256040001550300000000000000000021A72D6060E4
              874B4BDD794A4ADC784949DC774A4AE07A4646DD774444DB754040D6703B3BCD
              673939CB653636C8623333C45E0A0A841300000000000000000022A92F7676F0
              995E5EEA8A5A5AE8885656E6845353E4814E4EE17D4747DE784444DB754141D8
              723F3FD56F3D3DD36D3939CD670B0B871500000000000000000024AB307E7EF3
              9F6868EE916464ED8E6060EA8B5959E8865454E4824E4EE17D4646DD774444DA
              744141D7713E3ED46E3A3ACF690C0C891600000000000000000025AD329191F7
              AB8D8DF6A88B8BF5A68989F4A57A7AF09B5959E8865353E4814A4ADF7A5B5BE4
              866767E58C5E5EE1865353DB7C0F0F8D1A000000000000000000087E1100097B
              110008790F0008770F000B8A140089F4A56060EA8B5656E6844545D87207077C
              0D0005630A000568090005680900046608000000000000000000000000000000
              0000000000000000000008770F008BF5A66464ED8E5A5AE8884545D77105055C
              0900000000000000000000000000000000000000000000000000000000000000
              00000000000000000000097910008DF6A86868EE915E5EEA8A4646D87205055E
              0900000000000000000000000000000000000000000000000000000000000000
              00000000000000000000097A110091F7AB7F7FF39F7676F0995858DF7F060563
              0B00000000000000000000000000000000000000000000000000000000000000
              00000000000000000000097D120026AD332525AB322323A9302121A62E07066E
              0C00000000000000000000000000000000000000000000000000}
          end
          object btnRefresh: TRzBitBtn
            Left = 96
            Top = 3
            Width = 120
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = 'Refresh'
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 4
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6DB0B0988A9C9C7E6D9C9C7E6DB0B0978AC0C0ACA1BFBFABA1AFAF96
              899A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
              66FFFFFFFFD8D88F43FAFAF3E8DFDFBD9DC4C47F52BABA6A34B8B86A3CCCCC95
              76F5F5E7D6F8F8EDDA979779670000000000000000000000000000000000A27F
              6FFFFFFFFFCACA6C12C0C07123D8D87400E8E88300D9D97200B7B75201BABA5D
              26D6D6A182FAFAF1E2989879680000000000000000000000000000000000A380
              70FFFFFFFFD6D67B19FEFEA62CFFFFA208DEDE7800C6C67C46F3F3DBC7FBFBF5
              EBFBFBF4E9FAFAF3E699997A6A0000000000000000000000000000000000A987
              78FFFFFFFFD7D77B20FFFFC56DFBFBA634C5C56E22FAFAF0E7FCFCF7EFFBFBF6
              EDFBFBF5EBFBFBF4E899997B6B0000000000000000000000000000000000AB89
              7AFFFFFFFFD4D47E29D8D88027D9D97D20D4D47719D3D37414D9D97E21D9D981
              28D4D47E28FBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
              7FFFFFFFFFFEFEFCFBFEFEFCFAFDFDFCFAFBFBF3EDC6C66E23FBFBA634FFFFC5
              6DD8D87C20FBFBF5EC9B9B7C6B0000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEF5F5E2D5C7C77E4ADEDE7800FFFFA208FEFEA6
              2CD7D77B1AFCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFD9D9A990BBBB5F2AB8B85201D9D97200E8E88300D8D87400C1C172
              24CBCB6C12FCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFBFBF6F4CFCF9D84BABA6E43BBBB6D39C6C68359E2E2C2A7FCFCF8
              F3D9D98F45F0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70B9B99B8DA7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
        end
      end
      object TabData: TTabSheet
        Caption = #3586#3657#3629#3617#3641#3621#3621#3641#3585#3588#3657#3634
        ImageIndex = 1
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 1070
          Height = 468
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object RzPanel2: TRzPanel
            Left = 1
            Top = 1
            Width = 1068
            Height = 466
            Align = alClient
            BorderOuter = fsPopup
            TabOrder = 0
            object RzLabel5: TRzLabel
              Left = 4
              Top = 5
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
              Color = 6776679
              Font.Charset = THAI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel6: TRzLabel
              Left = 4
              Top = 30
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3594#3639#3656#3629#3610#3619#3636#3625#3633#3607' / '#3594#3639#3656#3629#3626#3585#3640#3621
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel9: TRzLabel
              Left = 4
              Top = 102
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3607#3637#3656#3605#3633#3657#3591' / '#3607#3637#3656#3629#3618#3641#3656
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel3: TRzLabel
              Left = 4
              Top = 54
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3594#3639#3656#3629#3612#3641#3657#3605#3636#3604#3605#3656#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel4: TRzLabel
              Left = 519
              Top = 52
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' '#3648#3610#3629#3619#3660#3650#3607#3619
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel8: TRzLabel
              Left = 519
              Top = 76
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' '#3617#3639#3629#3606#3639#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel14: TRzLabel
              Left = 519
              Top = 28
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' '#3605#3635#3649#3627#3609#3656#3591
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel1: TRzLabel
              Left = 4
              Top = 78
              Width = 185
              Height = 23
              AutoSize = False
              Caption = ' '#3627#3617#3634#3618#3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637#3629#3634#3585#3619
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel7: TRzLabel
              Left = 519
              Top = 100
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' Fax'
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel10: TRzLabel
              Left = 519
              Top = 124
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' EMail'
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzDBEdit17: TRzDBEdit
              Left = 130
              Top = 5
              Width = 196
              Height = 22
              DataSource = dsCustomers
              DataField = 'CSHCDE'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
            end
            object RzDBEdit9: TRzDBEdit
              Left = 650
              Top = 28
              Width = 370
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHPOS'
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
            object ckShowUnitCod: TCheckBox
              Left = 640
              Top = 216
              Width = 97
              Height = 17
              Caption = 'ckShowUnitCod'
              TabOrder = 2
              Visible = False
            end
            object btnSave: TRzBitBtn
              Left = 128
              Top = 265
              Width = 80
              Height = 29
              Caption = #3610#3633#3609#3607#3638#3585
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 3
              OnClick = btnSaveClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFA15A6292494E92494E92494E92494E92494E92
                494E92494E92494E92494E92494EA25959D89585B35683FF00FFFF00FF92494E
                FEBEA3FAB092E8977CFBF7F8FBF7F8FBF7F8FBF7F8FBF7F8FBF7F8F6A381FCB5
                97FEBEA392494EFF00FFFF00FF92494EFDB9A1F2A68CDB8A74FBF7F8D58673D7
                9A8EF1E6E7F1E6E7F1E6E7E79378F5AC93FDB9A192494EFF00FFFF00FF92494E
                FCB49EEA9B86CE7D6DFBF7F8C97A6CD2978EEDDFE1EDDFE1EDDFE1D8836FF0A4
                8EFCB49E92494EFF00FFFF00FF92494EFAAF9BE19180C26F65FBF7F8FBF7F8FB
                F7F8ECDDDFECDDDFECDDDFC97365EA9B89FAAF9B92494EFF00FFFF00FF92494E
                F9AC9BE8988AC97365C97365C97365C97365C97365C97365C97365C97365ED9D
                8DF9AA9992494EFF00FFFF00FF92494EF9AFA1F9AFA1F9AFA1F9AFA1F9AFA1F9
                AFA1F9AFA1F9AFA1F9AFA1F9AFA1DF9289F8A59692494EFF00FFFF00FF92494E
                F8B2A8F9AFA19F60659F60659F60659F60659F60659F60659F60659F6065DF92
                89F7A49892494EFF00FFFF00FF92494EF8B7AF9F6065FDFCFCFDFCFCFDFCFCFD
                FCFCFDFCFCFDFCFCFDFCFCFDFCFC9F6065F6A9A092494EFF00FFFF00FF92494E
                F8BCB79F6065FDFCFCE0B6BBE0B6BBE0B6BBE0B6BBE0B6BBE0B6BBF5ECEE9F60
                65F6A9A392494EFF00FFFF00FF92494EF8C2BF9F6065FDFCFCF1E6E7F1E6E7F1
                E6E7F1E6E7F1E6E7F1E6E7F1E6E79F6065F5A9A592494EFF00FFFF00FF92494E
                F8C8C69F6065FDFCFCE3BEC2E3BEC2E3BEC2E3BEC2E3BEC2E3BEC2EDDFE19F60
                65F5ACA992494EFF00FFFF00FFB36279F8C8C79F6065FDFCFCE8D3D6E8D3D6E8
                D3D6E8D3D6E8D3D6E8D3D6ECDDDF9F6065EAA2A2B35684FF00FFFF00FFD23FBA
                92494E92494E9F60659F60659F60659F60659F60659F60659F60659F60659249
                4E92494ED52ABBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object btnCancel: TRzBitBtn
              Left = 209
              Top = 265
              Width = 80
              Height = 29
              Caption = #3618#3585#3648#3621#3636#3585
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 4
              OnClick = btnCancelClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFBF00E55000BA1000A60000A10000A01000A45000BABF00E5FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFEF00F94000B50000AD0000B50000B200
                00B00000AD0000AB0000A90000A34000B3EF00F9FF00FFFF00FFFF00FFEF00F9
                3000B50000C20000C20000BF0000B00000A80000A70000AA0000B10000AF0000
                AC3000B0EF00F9FF00FFFF00FF4000B70000D00000D00000CD0000B07F00CCFF
                00FFFF00FFAF00DF4000B40000AE0000B60000B24000B4FF00FFBF00E50000C8
                0000E10000DD0000DA0000D61000B7CF00ECFF00FFFF00FFFF00FF6000BF0000
                B30000BD0000AFBF00E55000C50000F30000EF0000BB0000E80000E40000E010
                00BACF00ECFF00FFFF00FFFF00FF4000B60000C80000C55000BC1000C60000FE
                0000DE7F00CC1000C10000F20000EE0000EA1000BDCF00ECFF00FFFF00FFAF00
                DF0000C10000D11000B40000CC0000FF0000CCFF00FFCF00EC1000C50000FC00
                00F90000F51000C2CF00ECFF00FFFF00FF0000BD0000DE0000BA0000CC0000FF
                0000CCFF00FFFF00FFCF00EC1000C60000FF0000FF0000FE1000C6CF00ECFF00
                FF0000C40000EC0000C11000C60000FF0000DFAF00DFFF00FFFF00FFCF00EC10
                00C60000FF0000FF0000FF1000C67F00CC0000DE0000FB1000C35000C60000FF
                0000FF4000B9FF00FFFF00FFFF00FFCF00EC1000C60000FF0000FF0000FF0000
                C60000FF0000FF5000BFBF00E50000D90000FF0000DF7F00CCFF00FFFF00FFFF
                00FFCF00EC1000C60000FF0000FF0000FF0000FF0000D9BF00E5FF00FF4000B9
                0000F90000FF0000DF4000B9AF00DFFF00FFFF00FF7F00CC0000C60000FF0000
                FF0000F94000B9FF00FFFF00FFEF00F93000C00000F90000FF0000FF0000DF00
                00CC0000CC0000DF0000FF0000FF0000F93000C0EF00F9FF00FFFF00FFFF00FF
                EF00F94000B90000D90000FF0000FF0000FF0000FF0000FF0000FF0000D94000
                B9EF00F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBF00E55000BF1000C600
                00CC0000CC1000C65000C6BF00E5FF00FFFF00FFFF00FFFF00FF}
            end
            object DBCheckBox1: TDBCheckBox
              Left = 648
              Top = 152
              Width = 97
              Height = 17
              Caption = #3651#3594#3657#3591#3634#3609
              DataField = 'CSHACT'
              DataSource = dsCustomers
              TabOrder = 5
              ValueChecked = 'A'
              ValueUnchecked = 'I'
            end
            object RzDBEdit2: TRzDBEdit
              Left = 129
              Top = 29
              Width = 387
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHNAM'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 6
            end
            object RzDBEdit5: TRzDBEdit
              Left = 129
              Top = 53
              Width = 387
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHCON'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 7
            end
            object RzDBEdit7: TRzDBEdit
              Left = 650
              Top = 52
              Width = 370
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHPHO'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 8
            end
            object RzDBEdit8: TRzDBEdit
              Left = 650
              Top = 76
              Width = 370
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHMOB'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 9
            end
            object RzDBMemo1: TRzDBMemo
              Left = 130
              Top = 182
              Width = 386
              Height = 77
              DataField = 'CSHADR'
              DataSource = dsCustomers
              ScrollBars = ssVertical
              TabOrder = 10
              FrameVisible = True
            end
            object RzDBEdit1: TRzDBEdit
              Left = 192
              Top = 77
              Width = 324
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHTAX'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 11
            end
            object RzDBEdit3: TRzDBEdit
              Left = 129
              Top = 101
              Width = 387
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHAD1'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 12
            end
            object RzDBEdit4: TRzDBEdit
              Left = 129
              Top = 125
              Width = 387
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHAD2'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 13
            end
            object RzDBEdit10: TRzDBEdit
              Left = 129
              Top = 149
              Width = 387
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHAD3'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 14
            end
            object RzDBEdit6: TRzDBEdit
              Left = 650
              Top = 100
              Width = 370
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHFAX'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 15
            end
            object RzDBEdit11: TRzDBEdit
              Left = 650
              Top = 124
              Width = 370
              Height = 23
              DataSource = dsCustomers
              DataField = 'CSHMAI'
              AutoSize = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 16
            end
          end
        end
      end
    end
  end
  object cdsCustomers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 278
    Top = 320
  end
  object dsCustomers: TDataSource
    DataSet = cdsCustomers
    Left = 278
    Top = 392
  end
end
