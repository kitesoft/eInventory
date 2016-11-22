object frmSystemConfiguration: TfrmSystemConfiguration
  Left = 0
  Top = 125
  Width = 1024
  Height = 563
  Caption = 'frmSystemConfiguration'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnAllClients: TRzPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 536
    Align = alClient
    BorderOuter = fsPopup
    TabOrder = 0
    object rzTopPanel: TRzPanel
      Left = 1
      Top = 29
      Width = 1014
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
      Width = 1014
      Height = 28
      Align = alTop
      BorderOuter = fsNone
      Color = 5832793
      TabOrder = 1
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 226
        Height = 16
        Caption = #3605#3633#3657#3591#3588#3656#3634#3619#3632#3610#3610' ( System Configuration )'
        Font.Charset = THAI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 33
      Width = 1014
      Height = 502
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = #3607#3633#3656#3623#3652#3611' - General '
        object RzLabel5: TRzLabel
          Left = 0
          Top = 1
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' '#3619#3627#3633#3626#3610#3619#3636#3625#3633#3607
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel6: TRzLabel
          Left = 0
          Top = 25
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' '#3594#3639#3656#3629#3610#3619#3636#3625#3633#3607
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel9: TRzLabel
          Left = 0
          Top = 145
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' '#3607#3637#3656#3629#3618#3641#3656
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel13: TRzLabel
          Left = 0
          Top = 49
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' '#3648#3610#3629#3619#3660#3650#3607#3619'.'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel1: TRzLabel
          Left = 0
          Top = 73
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' Fax.'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel2: TRzLabel
          Left = 0
          Top = 97
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' Postal Code.'
          Color = clSilver
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel3: TRzLabel
          Left = 0
          Top = 121
          Width = 124
          Height = 23
          AutoSize = False
          Caption = ' '#3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
          Color = clSilver
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzDBEdit17: TRzDBEdit
          Left = 126
          Top = 1
          Width = 243
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPCOD'
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
        object RzDBEdit1: TRzDBEdit
          Left = 126
          Top = 25
          Width = 243
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPNAM'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 1
        end
        object RzDBEdit3: TRzDBEdit
          Left = 126
          Top = 145
          Width = 488
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPAD1'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 2
        end
        object RzDBEdit6: TRzDBEdit
          Left = 126
          Top = 49
          Width = 488
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPPHO'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 3
        end
        object RzDBEdit2: TRzDBEdit
          Left = 126
          Top = 73
          Width = 488
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPFAX'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 4
        end
        object RzDBEdit4: TRzDBEdit
          Left = 126
          Top = 97
          Width = 488
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPPOS'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 5
        end
        object RzDBMemo1: TRzDBMemo
          Left = 126
          Top = 168
          Width = 488
          Height = 121
          DataField = 'CMPADR'
          DataSource = dsCompany
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          FrameVisible = True
        end
        object btnSave: TRzBitBtn
          Left = 531
          Top = 294
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
          TabOrder = 7
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
        object RzDBEdit5: TRzDBEdit
          Left = 126
          Top = 121
          Width = 488
          Height = 22
          DataSource = dsCompany
          DataField = 'CMPRF0'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 8
        end
      end
      object TabSheet2: TTabSheet
        Caption = #3626#3633#3597#3597#3634#3629#3609#3640#3597#3634#3605#3636' - Licenses'
        ImageIndex = 1
      end
    end
  end
  object cdsCompany: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 101
    Top = 381
  end
  object dsCompany: TDataSource
    DataSet = cdsCompany
    Left = 157
    Top = 389
  end
end
