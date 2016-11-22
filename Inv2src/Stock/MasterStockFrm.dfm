object frmMasterStock: TfrmMasterStock
  Left = 375
  Top = 107
  Width = 1088
  Height = 563
  Caption = 'frmMasterStock'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
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
        Width = 117
        Height = 16
        Caption = #3588#3621#3633#3591#3626#3636#3609#3588#3657#3634' ( Stock )'
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
      ActivePage = tabWarehouseData
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 2
      object tabWarehouseData: TTabSheet
        Caption = #3588#3621#3633#3591#3651#3627#3597#3656' ( Warehouse )'
        object Splitter1: TSplitter
          Left = 0
          Top = 137
          Width = 1070
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object grdWarehouses: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 137
          Align = alTop
          TabOrder = 0
          object grdWarehousesDBTableView1: TcxGridDBTableView
            OnDblClick = grdWarehousesDBTableView1DblClick
            DataController.DataSource = dsWarehouses
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OnCustomDrawColumnHeader = grdWarehousesDBTableView1CustomDrawColumnHeader
            object grdWarehousesDBTableView1Column1: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'WH0COD'
              Options.Editing = False
              Options.Focusing = False
              Width = 49
            end
            object grdWarehousesDBTableView1Column5: TcxGridDBColumn
              Caption = #3619#3627#3633#3626
              DataBinding.FieldName = 'WH0CDE'
              Options.Editing = False
              Options.Focusing = False
              Width = 116
            end
            object grdWarehousesDBTableView1Column2: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3588#3621#3633#3591
              DataBinding.FieldName = 'WH0NAM'
              Options.Editing = False
              Options.Focusing = False
              Width = 114
            end
            object grdWarehousesDBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'PRDBA1'
              Options.Editing = False
              Options.Focusing = False
              Width = 132
            end
            object grdWarehousesDBTableView1Column4: TcxGridDBColumn
              DataBinding.FieldName = 'PRDNAT'
              Options.Editing = False
              Options.Focusing = False
              Width = 139
            end
            object grdWarehousesDBTableView1Column6: TcxGridDBColumn
              DataBinding.FieldName = 'PRDNAE'
              Options.Editing = False
              Options.Focusing = False
              Width = 97
            end
            object grdWarehousesDBTableView1Column7: TcxGridDBColumn
              DataBinding.FieldName = 'PRDACT'
              Options.Editing = False
              Options.Focusing = False
              Width = 94
            end
          end
          object grdWarehousesLevel1: TcxGridLevel
            GridView = grdWarehousesDBTableView1
          end
        end
        object RzPanel1: TRzPanel
          Left = 0
          Top = 140
          Width = 1070
          Height = 328
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 1070
            Height = 36
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
            DesignSize = (
              1070
              36)
            object RzLabel2: TRzLabel
              Left = 8
              Top = 6
              Width = 489
              Height = 23
              AutoSize = False
              Caption = #3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591#3651#3627#3597#3656
              Font.Charset = THAI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object btnNewProd: TRzBitBtn
              Left = 668
              Top = 4
              Width = 80
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3648#3614#3636#3656#3617
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnClick = btnNewProdClick
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
            object btnDeleteProd: TRzBitBtn
              Left = 748
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
            end
            object btnEditProd: TRzBitBtn
              Left = 828
              Top = 4
              Width = 80
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3649#3585#3657#3652#3586
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
              OnClick = btnEditProdClick
            end
            object btnSaveProd: TRzBitBtn
              Left = 908
              Top = 4
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
              TabOrder = 3
              Visible = False
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
            object RzBitBtn4: TRzBitBtn
              Left = 988
              Top = 4
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
              TabOrder = 4
              Visible = False
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
            object btnShowStockCard: TRzBitBtn
              Left = 544
              Top = 4
              Width = 121
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3626#3605#3658#3629#3585#3585#3634#3619#3660#3604
              Color = 14531001
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 5
              Visible = False
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFE01ED3B17483B26E81E618DBFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF20CECB3578FCAA4A4F8
                CFCEF8B3AEC38A88B65290F806F5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFC636ADB48A8CF2D7D7FFE6E6FFDAD8FFB8B3FFB8B3EBA9A5B77E80CB32
                B5FF00FFFF00FFFF00FFFF00FFFF00FFD02DBCD1B2B2FFECECFFEBEBFFEAEAFF
                DDDBFFB8B3FFB8B3FFB8B3FFB8B3CA8F8DD02DBCFF00FFFF00FFFF00FFFF00FF
                D02DBCE5CFCFFFF0F0FFEFEFFFEEEEFFE0DEFFB8B3FFB8B3FFB8B3FFB8B3E5A4
                A0D02DBCFF00FFFF00FFFF00FFFF00FFD02DBCE5D2D2D7BCBCD7A8A8D7B4B4F2
                D1D0F2AEA9D7A3A1D7A9A9D79C99E5A4A0D02DBCFF00FFFF00FFFF00FFFF00FF
                BA429BC39D9DF8CECEFFD1D1F8C6C6C39392BD9797F2DCDCFFE2E2F8D0D0CA9A
                99B64695FF00FFFF00FFEC12E3B0688BD1AFAFFFE2E2FFDDDDD7ABABDEA09DFF
                C3BFFFE3E3D7B5B5D7BCBCFFE9E9FFDDDDDEB2B2AB6B7FEC12E3A25D79CAABAB
                F2DCDCE5C8C8D7A19FF8B3AEFFB8B3FFC5C1FFEAEAFFE8E8F8DEDED1B1B1E5CC
                CCF2D5D5CA9E9EA36078FF00FFEC12E3A36C74CA9290FFB8B3FFB8B3FFB8B3FF
                C7C3FFF1F1FFEFEFFFEDEDF8E2E2C39C9C9B646EEC12E3FF00FFFF00FFB0518D
                DEB6B6F8CBCBD7A4A3E5A4A0FFB8B3FFC8C5FFF8F8FFF6F6E5CECED7AEAEFFCE
                CED7A6A6B0508CFF00FFDB23CBB69191FFE9E9FFE0E0FFD7D7F2C2C2D19998F2
                BFBCF2EBEBD1B3B3F2D0D0FFDADAFFD6D6F8CACAB08080E01ED3FF00FFCB32B5
                B79195EBD4D4FFE6E6FFDDDDFFD4D4BD9090C3A3A3FFEBEBFFE7E7FFE2E2D7B0
                B0AD6A82E618DBFF00FFFF00FFFF00FFF806F5B65695C3A3A3F8E3E3D7B4B4C1
                42A4C244A7D7BDBDE5CCCCB2828AD02DBCFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFE618DBAB7084B56292FF00FFFF00FFC244A7BE48A1FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
          end
          object pgWarehouseProduct: TRzPageControl
            Left = 0
            Top = 36
            Width = 1070
            Height = 292
            ActivePage = TabWarehouseProducts
            Align = alClient
            Color = 16769476
            ParentColor = False
            TabIndex = 0
            TabOrder = 1
            TabOrientation = toBottom
            TabStyle = tsRoundCorners
            UseGradients = False
            FixedDimension = 22
            object TabWarehouseProducts: TRzTabSheet
              Color = 16769476
              Caption = #3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591
              object grdItems: TcxGrid
                Left = 0
                Top = 0
                Width = 1068
                Height = 265
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView1: TcxGridDBTableView
                  OnDblClick = cxGridDBTableView1DblClick
                  DataController.DataSource = dsWarehouseProds
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                      FieldName = 'STKQTY'
                      Column = grdItemsOnhandQTY
                    end
                    item
                      Format = '#,##0'
                      Kind = skCount
                      FieldName = 'SKYCOD'
                      Column = grdItemNO
                      DisplayText = #3592#3635#3609#3623#3609#3619#3634#3618#3585#3634#3619#3607#3633#3657#3591#3627#3617#3604' :'
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                  OnCustomDrawFooterCell = cxGridDBTableView1CustomDrawFooterCell
                  object grdItemNO: TcxGridDBColumn
                    Caption = '#'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.ReadOnly = True
                    OnGetDataText = grdItemNOGetDataText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 27
                  end
                  object cxGridDBColumn3: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STKPRD'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 54
                  end
                  object cxGridDBTableView1Column7: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626#3607#3633#3656#3623#3652#3611
                    DataBinding.FieldName = 'PRDCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 95
                  end
                  object cxGridDBTableView1Column8: TcxGridDBColumn
                    Caption = #3619#3634#3618#3585#3634#3619
                    DataBinding.FieldName = 'PRDNAT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 244
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STKUNI'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 52
                  end
                  object cxGridDBTableView1Column6: TcxGridDBColumn
                    Caption = #3627#3609#3656#3623#3618
                    DataBinding.FieldName = 'UNINAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STKPAC'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 50
                  end
                  object cxGridDBTableView1Column5: TcxGridDBColumn
                    Caption = #3586#3609#3634#3604#3610#3619#3619#3592#3640
                    DataBinding.FieldName = 'PACNAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object grdItemsOnhandQTY: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3588#3591#3588#3621#3633#3591
                    DataBinding.FieldName = 'STKQTY'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 78
                  end
                  object cxGridDBTableView1Column1: TcxGridDBColumn
                    Caption = 'Location'
                    DataBinding.FieldName = 'STKLOC'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 88
                  end
                  object cxGridDBTableView1Column3: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'WH0CDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 62
                  end
                  object cxGridDBTableView1Column4: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3588#3621#3633#3591
                    DataBinding.FieldName = 'WH0NAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
            object TabWarehouseProductLots: TRzTabSheet
              Color = 16769476
              Caption = #3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591' (Lot)'
              object grdItemLots: TcxGrid
                Left = 0
                Top = 0
                Width = 1068
                Height = 265
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView4: TcxGridDBTableView
                  DataController.DataSource = dsWarehouseLots
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0'
                      Kind = skCount
                      FieldName = 'STLCOD'
                      Column = grdItemLotsNo
                    end
                    item
                      Format = '#,##0'
                      Kind = skSum
                      FieldName = 'STLQTY'
                      Column = grdItemLotsQTY
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView4CustomDrawColumnHeader
                  OnCustomDrawFooterCell = cxGridDBTableView4CustomDrawFooterCell
                  object grdItemLotsNo: TcxGridDBColumn
                    Caption = '#'
                    DataBinding.FieldName = 'INSITM'
                    OnGetDataText = grdItemLotsNoGetDataText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 33
                  end
                  object cxGridDBColumn23: TcxGridDBColumn
                    Caption = 'Lot'
                    DataBinding.FieldName = 'STLLOT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 71
                  end
                  object cxGridDBColumn24: TcxGridDBColumn
                    Caption = 'Expire'
                    DataBinding.FieldName = 'STLEXP'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 90
                  end
                  object cxGridDBColumn25: TcxGridDBColumn
                    Caption = 'LOTPRD'
                    DataBinding.FieldName = 'STKPRD'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 54
                  end
                  object cxGridDBColumn26: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'PRDCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 95
                  end
                  object cxGridDBColumn27: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
                    DataBinding.FieldName = 'PRDNAT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 162
                  end
                  object cxGridDBColumn29: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STLUNI'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 52
                  end
                  object cxGridDBColumn30: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3627#3609#3656#3623#3618
                    DataBinding.FieldName = 'UNINAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn31: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STLPAC'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 50
                  end
                  object cxGridDBColumn32: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3586#3609#3634#3604#3610#3619#3619#3592#3640
                    DataBinding.FieldName = 'PACNAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn33: TcxGridDBColumn
                    DataBinding.FieldName = 'PACRAT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 55
                  end
                  object grdItemLotsQTY: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609
                    DataBinding.FieldName = 'STLQTY'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 69
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  GridView = cxGridDBTableView4
                end
              end
            end
          end
        end
      end
      object tabDepartmentData: TTabSheet
        Caption = #3588#3621#3633#3591#3618#3656#3629#3618' ( Sub Stock )'
        ImageIndex = 1
        object Splitter2: TSplitter
          Left = 0
          Top = 137
          Width = 1070
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 137
          Align = alTop
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            DataController.DataSource = dsSubStocks
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OnCustomDrawColumnHeader = cxGridDBTableView2CustomDrawColumnHeader
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'INSITM'
              OnGetDisplayText = cxGridDBColumn8GetDisplayText
              Options.Editing = False
              Options.Focusing = False
              Width = 49
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #3619#3627#3633#3626
              DataBinding.FieldName = 'WH1CDE'
              Options.Editing = False
              Options.Focusing = False
              Width = 114
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3588#3621#3633#3591
              DataBinding.FieldName = 'WH1NAM'
              Options.Editing = False
              Options.Focusing = False
              Width = 132
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'WH1ACT'
              Options.Editing = False
              Options.Focusing = False
              Width = 139
            end
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = 'PRDNAE'
              Options.Editing = False
              Options.Focusing = False
              Width = 97
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = 'PRDACT'
              Options.Editing = False
              Options.Focusing = False
              Width = 94
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object RzPanel2: TRzPanel
          Left = 0
          Top = 140
          Width = 1070
          Height = 328
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          object RzPanel4: TRzPanel
            Left = 0
            Top = 0
            Width = 1070
            Height = 36
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
            DesignSize = (
              1070
              36)
            object RzLabel1: TRzLabel
              Left = 8
              Top = 6
              Width = 654
              Height = 23
              AutoSize = False
              Caption = #3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591#3618#3656#3629#3618
              Font.Charset = THAI_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object RzBitBtn1: TRzBitBtn
              Left = 668
              Top = 6
              Width = 80
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3648#3614#3636#3656#3617
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 0
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
            object RzBitBtn3: TRzBitBtn
              Left = 748
              Top = 6
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
            end
            object RzBitBtn5: TRzBitBtn
              Left = 828
              Top = 6
              Width = 80
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3649#3585#3657#3652#3586
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
            end
            object RzBitBtn6: TRzBitBtn
              Left = 908
              Top = 6
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
              TabOrder = 3
              Visible = False
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
            object RzBitBtn7: TRzBitBtn
              Left = 988
              Top = 6
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
              TabOrder = 4
              Visible = False
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
          end
          object pgDepartmentProducts: TRzPageControl
            Left = 0
            Top = 36
            Width = 1070
            Height = 292
            ActivePage = RzTabSheet1
            Align = alClient
            Color = 12698111
            ParentColor = False
            TabIndex = 0
            TabOrder = 1
            TabOrientation = toBottom
            TabStyle = tsRoundCorners
            UseGradients = False
            FixedDimension = 22
            object RzTabSheet1: TRzTabSheet
              Color = 12698111
              Caption = #3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591
              object cxGrid1: TcxGrid
                Left = 0
                Top = 0
                Width = 1068
                Height = 265
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView3: TcxGridDBTableView
                  OnDblClick = cxGridDBTableView3DblClick
                  DataController.DataSource = dsSubStockProds
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                      FieldName = 'STKQTY'
                      Column = cxGridDBColumn19
                    end
                    item
                      Format = '#,##0'
                      Kind = skCount
                      FieldName = 'SKYCOD'
                      Column = cxGridDBColumn1
                      DisplayText = #3592#3635#3609#3623#3609#3619#3634#3618#3585#3634#3619#3607#3633#3657#3591#3627#3617#3604' :'
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                  OnCustomDrawFooterCell = cxGridDBTableView1CustomDrawFooterCell
                  object cxGridDBColumn1: TcxGridDBColumn
                    Caption = '#'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.ReadOnly = True
                    OnGetDataText = grdItemNOGetDataText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 27
                  end
                  object cxGridDBColumn2: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STKPRD'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 54
                  end
                  object cxGridDBColumn4: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626#3607#3633#3656#3623#3652#3611
                    DataBinding.FieldName = 'PRDCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 95
                  end
                  object cxGridDBColumn7: TcxGridDBColumn
                    Caption = #3619#3634#3618#3585#3634#3619
                    DataBinding.FieldName = 'PRDNAT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 244
                  end
                  object cxGridDBColumn15: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STKUNI'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 52
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    Caption = #3627#3609#3656#3623#3618
                    DataBinding.FieldName = 'UNINAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn17: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STKPAC'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 50
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    Caption = #3586#3609#3634#3604#3610#3619#3619#3592#3640
                    DataBinding.FieldName = 'PACNAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn19: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3588#3591#3588#3621#3633#3591
                    DataBinding.FieldName = 'STKQTY'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 78
                  end
                  object cxGridDBColumn20: TcxGridDBColumn
                    Caption = 'Location'
                    DataBinding.FieldName = 'STKLOC'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 88
                  end
                  object cxGridDBColumn21: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'WH1CDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 62
                  end
                  object cxGridDBColumn22: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3588#3621#3633#3591
                    DataBinding.FieldName = 'WH1NAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxGridDBTableView3
                end
              end
            end
            object TabDepartmentProductLots: TRzTabSheet
              Color = 12698111
              Caption = #3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591' (Lot)'
              object cxGrid2: TcxGrid
                Left = 0
                Top = 0
                Width = 1068
                Height = 265
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView5: TcxGridDBTableView
                  DataController.DataSource = dsSubStockLots
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0'
                      Kind = skCount
                      FieldName = 'STLCOD'
                      Column = cxGridDBColumn28
                    end
                    item
                      Format = '#,##0'
                      Kind = skSum
                      FieldName = 'STLQTY'
                      Column = cxGridDBColumn49
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView4CustomDrawColumnHeader
                  OnCustomDrawFooterCell = cxGridDBTableView4CustomDrawFooterCell
                  object cxGridDBColumn28: TcxGridDBColumn
                    Caption = '#'
                    DataBinding.FieldName = 'INSITM'
                    OnGetDataText = grdItemLotsNoGetDataText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 33
                  end
                  object cxGridDBColumn34: TcxGridDBColumn
                    Caption = 'Lot'
                    DataBinding.FieldName = 'STLLOT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 71
                  end
                  object cxGridDBColumn40: TcxGridDBColumn
                    Caption = 'Expire'
                    DataBinding.FieldName = 'STLEXP'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 90
                  end
                  object cxGridDBColumn41: TcxGridDBColumn
                    Caption = 'LOTPRD'
                    DataBinding.FieldName = 'STKPRD'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 54
                  end
                  object cxGridDBColumn42: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'PRDCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 95
                  end
                  object cxGridDBColumn43: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
                    DataBinding.FieldName = 'PRDNAT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 162
                  end
                  object cxGridDBColumn44: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STLUNI'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 52
                  end
                  object cxGridDBColumn45: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3627#3609#3656#3623#3618
                    DataBinding.FieldName = 'UNINAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn46: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'STLPAC'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 50
                  end
                  object cxGridDBColumn47: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3586#3609#3634#3604#3610#3619#3619#3592#3640
                    DataBinding.FieldName = 'PACNAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn48: TcxGridDBColumn
                    DataBinding.FieldName = 'PACRAT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 55
                  end
                  object cxGridDBColumn49: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609
                    DataBinding.FieldName = 'STLQTY'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 69
                  end
                end
                object cxGridLevel5: TcxGridLevel
                  GridView = cxGridDBTableView5
                end
              end
            end
          end
        end
      end
    end
  end
  object cdsWarehouses: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsWarehousesAfterScroll
    Left = 77
    Top = 363
  end
  object dsWarehouses: TDataSource
    DataSet = cdsWarehouses
    Left = 77
    Top = 403
  end
  object cdsSubStocks: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsSubStocksAfterScroll
    Left = 205
    Top = 371
  end
  object dsSubStocks: TDataSource
    DataSet = cdsSubStocks
    Left = 205
    Top = 411
  end
  object cdsWarehouseProds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 389
    Top = 379
  end
  object dsWarehouseProds: TDataSource
    DataSet = cdsWarehouseProds
    Left = 389
    Top = 419
  end
  object cdsSubStockProds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 533
    Top = 371
  end
  object dsSubStockProds: TDataSource
    DataSet = cdsSubStockProds
    Left = 533
    Top = 411
  end
  object cdsWarehouseLots: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 709
    Top = 291
  end
  object dsWarehouseLots: TDataSource
    DataSet = cdsWarehouseLots
    Left = 709
    Top = 331
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object cdsSubStockLots: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 725
    Top = 379
  end
  object dsSubStockLots: TDataSource
    DataSet = cdsSubStockLots
    Left = 725
    Top = 419
  end
end
