object frmConfig: TfrmConfig
  Left = 509
  Top = 147
  Width = 598
  Height = 219
  BorderIcons = [biSystemMenu]
  Caption = 'Configuration'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    590
    192)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 485
    Top = 9
    Width = 100
    Height = 26
    Caption = 'OK'
    TabOrder = 0
    OnClick = btnOKClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 173
    Width = 590
    Height = 19
    Panels = <
      item
        Text = ' (C) 2013,Siam Enterprise Software Dev Group'
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object gbGroup: TGroupBox
    Left = 0
    Top = 0
    Width = 480
    Height = 167
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 2
    object Label10: TLabel
      Left = 9
      Top = 14
      Width = 463
      Height = 21
      Hint = 'Configure database connection for normal Application Loader'
      AutoSize = False
      Caption = '  Default Database Connection'
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 8
      Top = 43
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Server IP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 68
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Database Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 93
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'User Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 118
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edServerIP: TEdit
      Left = 144
      Top = 40
      Width = 327
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object edDbName: TEdit
      Left = 144
      Top = 64
      Width = 327
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'inv2_db'
    end
    object edUserName: TEdit
      Left = 144
      Top = 88
      Width = 327
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'joni'
    end
    object edPassword: TEdit
      Left = 144
      Top = 112
      Width = 327
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
      Text = '123456'
    end
  end
  object btnTestConnection: TButton
    Left = 485
    Top = 34
    Width = 100
    Height = 26
    Caption = 'Test Connection'
    TabOrder = 3
    OnClick = btnTestConnectionClick
  end
end
