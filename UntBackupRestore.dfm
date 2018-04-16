object FrmBackupRestore: TFrmBackupRestore
  Left = 392
  Top = 192
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Backup/Restore'
  ClientHeight = 525
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pnlPnlBanco: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 527
    TabOrder = 0
    OnMouseMove = pnlPnlBancoMouseMove
    object lbl3: TLabel
      Left = 2
      Top = 12
      Width = 566
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Restaura'#231#227'o de Banco de Dados [Backup/Restore]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object shp2: TShape
      Left = 8
      Top = 38
      Width = 554
      Height = 1
    end
    object PnlPrincipal: TPageControl
      Left = 8
      Top = 48
      Width = 556
      Height = 475
      ActivePage = Restore
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PnlPrincipalChange
      OnMouseMove = PnlPrincipalMouseMove
      object Backup: TTabSheet
        Caption = 'Backup'
        DesignSize = (
          548
          443)
        object lbl2: TLabel
          Left = 2
          Top = 13
          Width = 91
          Height = 14
          Caption = 'Banco de Dados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object btnSpbBanco: TSpeedButton
          Left = 428
          Top = 26
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'Selecione o Diretorio do Banco de Dados'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF1696CB1F9FD11293CBFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB
            9AF3FB6CEAF830B1DC30B1DC30B1DC1FA0D31395CBFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF1696CB90E2F287FFFF7FFBFF81FAFF7DF4FF74
            EEFE69E3F830B1DC30B1DC23A5D5FF00FFFF00FFFF00FFFF00FFFF00FF1696CB
            72CBE696FEFF77F6FF78F3FF77F2FF76F2FF76F0FF77F0FF7DF3FF5AD3F2199A
            D0FF00FFFF00FFFF00FFFF00FF1696CB1696CB95EBF878F8FF78F3FF77F2FF75
            F0FF74EEFE72EDFE73EDFF5CD5F33CBBE3FF00FFFF00FFFF00FFFF00FF1696CB
            60DDF01696CB87FEFF74F4FF75F3FF73F0FF74EEFE72EDFE73EDFF57D3F25ED8
            F3189CCFFF00FFFF00FFFF00FF1696CB7AF7FC1696CB92E2F292EBF88EEDFA8A
            F4FF73EFFF70EDFE73EDFF55CFEF0159043EBFE3FF00FFFF00FFFF00FF1696CB
            86FEFF6CEEFA1696CB1696CB1696CB1696CB9AEEFA77F0FF6EEEFF01590441E0
            730159040F92CAFF00FFFF00FF1696CB82FBFF7EFAFF7DFAFF7DF8FF77F4FF51
            D4EF1696CB88DAF001590436CB5F2DC5511CB035015904FF00FFFF00FF1696CB
            83FCFF7BF8FF79F6FF78F3FF79F4FF7AF7FF6AEAFC1696CB1696CB0A73121CB0
            330A80131F9ACFFF00FFFF00FF1696CB8EFFFF7BFBFF79F7FF7AF6FF76E7F877
            E6F87DE9FB7EEDFC82F0FF04670A0C9A18036906FF00FFFF00FFFF00FF1392CA
            1696CB87F2FA88F4FC6CE3F61899CE1392CA1696CB1797CC1D9CCF04770A0589
            0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB1C99CE1898CCFF00FFFF
            00FFFF00FFFF00FF036F07058A0C036706FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF015603035E06046F0A037308025F05FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnSpbBancoClick
        end
        object TxtBanco: TText
          Left = 1
          Top = 28
          Width = 423
          Height = 20
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          CampoObrigatorio = False
          EnterToTab = True
          Direcionais = True
          ColorTextOnFocus = cl3DLight
          ColorTextNotFocus = clWhite
          ColorFontOnFocus = clBlack
          ColorFontNotFocus = clBlack
        end
        object btnBackup: TBitBtn
          Left = 459
          Top = 25
          Width = 87
          Height = 24
          Hint = 'Grava os dados e retorna ao c'#243'digo'
          Caption = '&Backup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnBackupClick
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000F0000000E0000000100
            04000000000070000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8880888F28888888888088F22288888888808F22222888888880F22222228888
            8880F222F22228888880F22FFF222288888088888FF2222888808888888F2222
            88808888888FF222288088888888FF2222808888888888FFFF80888888888888
            88808888888888888880}
        end
        object grpConfigBackup: TGroupBox
          Left = 2
          Top = 58
          Width = 544
          Height = 69
          Anchors = [akLeft, akTop, akRight]
          Caption = ' Configura'#231#245'es Avan'#231'adas '
          TabOrder = 2
          OnMouseMove = grpConfigBackupMouseMove
          object chkRecoLixo: TCheckBox
            Tag = 1
            Left = 8
            Top = 20
            Width = 97
            Height = 17
            Caption = 'Recolher lixo'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnMouseMove = chkRecoLixoMouseMove
          end
          object chkIgnoChec: TCheckBox
            Tag = 3
            Left = 140
            Top = 20
            Width = 145
            Height = 17
            Caption = 'Ignorar erros de checksum'
            TabOrder = 1
            OnMouseMove = chkIgnoChecMouseMove
          end
          object chkIgnoLimb: TCheckBox
            Tag = 4
            Left = 140
            Top = 43
            Width = 185
            Height = 17
            Caption = 'Ignorar transa'#231#245'es em limbo'
            TabOrder = 2
            OnMouseMove = chkIgnoLimbMouseMove
          end
          object chkTransp: TCheckBox
            Tag = 2
            Left = 8
            Top = 43
            Width = 95
            Height = 17
            Caption = 'Transport'#225'vel'
            Checked = True
            State = cbChecked
            TabOrder = 3
            OnMouseMove = chkTranspMouseMove
          end
          object chkDetalhes: TCheckBox
            Tag = 5
            Left = 376
            Top = 20
            Width = 105
            Height = 17
            Caption = 'Detalhamento'
            TabOrder = 4
            OnMouseMove = chkDetalhesMouseMove
          end
        end
        object MmBackup: TMemo
          Left = 2
          Top = 133
          Width = 544
          Height = 309
          Anchors = [akLeft, akTop, akRight, akBottom]
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 3
          Visible = False
          WordWrap = False
          OnMouseMove = MmBackupMouseMove
        end
      end
      object Restore: TTabSheet
        Caption = 'Restore'
        ImageIndex = 1
        DesignSize = (
          548
          443)
        object btnSpbArquivo: TSpeedButton
          Left = 428
          Top = 26
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'Selecione o Diretorio do Banco de Dados'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF1696CB1F9FD11293CBFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB
            9AF3FB6CEAF830B1DC30B1DC30B1DC1FA0D31395CBFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF1696CB90E2F287FFFF7FFBFF81FAFF7DF4FF74
            EEFE69E3F830B1DC30B1DC23A5D5FF00FFFF00FFFF00FFFF00FFFF00FF1696CB
            72CBE696FEFF77F6FF78F3FF77F2FF76F2FF76F0FF77F0FF7DF3FF5AD3F2199A
            D0FF00FFFF00FFFF00FFFF00FF1696CB1696CB95EBF878F8FF78F3FF77F2FF75
            F0FF74EEFE72EDFE73EDFF5CD5F33CBBE3FF00FFFF00FFFF00FFFF00FF1696CB
            60DDF01696CB87FEFF74F4FF75F3FF73F0FF74EEFE72EDFE73EDFF57D3F25ED8
            F3189CCFFF00FFFF00FFFF00FF1696CB7AF7FC1696CB92E2F292EBF88EEDFA8A
            F4FF73EFFF70EDFE73EDFF55CFEF0159043EBFE3FF00FFFF00FFFF00FF1696CB
            86FEFF6CEEFA1696CB1696CB1696CB1696CB9AEEFA77F0FF6EEEFF01590441E0
            730159040F92CAFF00FFFF00FF1696CB82FBFF7EFAFF7DFAFF7DF8FF77F4FF51
            D4EF1696CB88DAF001590436CB5F2DC5511CB035015904FF00FFFF00FF1696CB
            83FCFF7BF8FF79F6FF78F3FF79F4FF7AF7FF6AEAFC1696CB1696CB0A73121CB0
            330A80131F9ACFFF00FFFF00FF1696CB8EFFFF7BFBFF79F7FF7AF6FF76E7F877
            E6F87DE9FB7EEDFC82F0FF04670A0C9A18036906FF00FFFF00FFFF00FF1392CA
            1696CB87F2FA88F4FC6CE3F61899CE1392CA1696CB1797CC1D9CCF04770A0589
            0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB1C99CE1898CCFF00FFFF
            00FFFF00FFFF00FF036F07058A0C036706FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF015603035E06046F0A037308025F05FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnSpbArquivoClick
        end
        object lbl1: TLabel
          Left = 2
          Top = 13
          Width = 132
          Height = 14
          Caption = 'Arquivo de Restaura'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object btnRestaurar: TBitBtn
          Left = 459
          Top = 25
          Width = 87
          Height = 24
          Hint = 'Grava os dados e retorna ao c'#243'digo'
          Caption = '&Restaurar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnRestaurarClick
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000F0000000E0000000100
            04000000000070000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8880888F28888888888088F22288888888808F22222888888880F22222228888
            8880F222F22228888880F22FFF222288888088888FF2222888808888888F2222
            88808888888FF222288088888888FF2222808888888888FFFF80888888888888
            88808888888888888880}
        end
        object txtArqui: TText
          Left = 1
          Top = 28
          Width = 423
          Height = 20
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          CampoObrigatorio = False
          EnterToTab = True
          Direcionais = True
          ColorTextOnFocus = cl3DLight
          ColorTextNotFocus = clWhite
          ColorFontOnFocus = clBlack
          ColorFontNotFocus = clBlack
        end
        object grpConfigRestore: TGroupBox
          Left = 2
          Top = 58
          Width = 544
          Height = 69
          Anchors = [akLeft, akTop, akRight]
          Caption = ' Configura'#231#245'es Avan'#231'adas '
          TabOrder = 2
          OnMouseMove = grpConfigRestoreMouseMove
          object chkSemShadow: TCheckBox
            Left = 8
            Top = 43
            Width = 89
            Height = 17
            Caption = 'Sem shadow'
            TabOrder = 0
            OnMouseMove = chkSemShadowMouseMove
          end
          object chkDesativarIndices: TCheckBox
            Left = 8
            Top = 21
            Width = 115
            Height = 17
            Caption = 'Desativar '#237'ndices'
            TabOrder = 1
            OnMouseMove = chkDesativarIndicesMouseMove
          end
          object chkSemValidar: TCheckBox
            Left = 166
            Top = 21
            Width = 87
            Height = 17
            Caption = 'Sem validar'
            TabOrder = 2
            OnMouseMove = chkSemValidarMouseMove
          end
          object chkUmaTabela: TCheckBox
            Left = 166
            Top = 43
            Width = 127
            Height = 17
            Caption = 'Uma tabela por vez'
            TabOrder = 3
            OnMouseMove = chkUmaTabelaMouseMove
          end
          object chkSubstituir: TCheckBox
            Left = 344
            Top = 21
            Width = 141
            Height = 17
            Caption = 'Substituir base antiga'
            Checked = True
            State = cbChecked
            TabOrder = 4
            OnMouseMove = chkSubstituirMouseMove
          end
          object chkDetalhes1: TCheckBox
            Left = 344
            Top = 43
            Width = 105
            Height = 17
            Caption = 'Detalhamento'
            TabOrder = 5
            OnMouseMove = chkDetalhes1MouseMove
          end
        end
        object MmRestore: TMemo
          Left = 2
          Top = 133
          Width = 544
          Height = 310
          Anchors = [akLeft, akTop, akRight, akBottom]
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 3
          Visible = False
          WordWrap = False
          OnMouseMove = MmRestoreMouseMove
        end
      end
    end
  end
  object pnlToolTip: TPanel
    Left = 20
    Top = 216
    Width = 261
    Height = 65
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clGradientActiveCaption
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Visible = False
    object lblDescr: TLabel
      Left = 6
      Top = 7
      Width = 45
      Height = 14
      Alignment = taCenter
      Caption = 'lblDescr'
    end
  end
  object OpdBase1: TOpenDialog
    Filter = 
      'Arquivos de Base (*.GDB, *.FDB)|*.GDB;*.FDB|Arquivos GDB (*.GDB)' +
      '|*.GDB|Arquivos FDB (*.FDB)|*.FDB'
    Left = 12
    Top = 8
  end
  object OpdBase2: TOpenDialog
    Filter = 'Arquivos Backup (*.fbk)|*.FBK'
    Left = 43
    Top = 8
  end
  object dlgSaveSDArquBack: TSaveDialog
    DefaultExt = 'FBK'
    FileName = 'DADOS.FBK'
    Filter = 'Backup do Firebird(*.fbk)|*.fbk|Todos os arquivos(*.*)|*.*'
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofShowHelp, ofExtensionDifferent, ofPathMustExist, ofEnableSizing]
    Left = 532
    Top = 8
  end
  object IBBackupService1: TIBBackupService
    ServerName = 'localhost'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    Verbose = True
    BlockingFactor = 0
    Options = []
    Left = 500
    Top = 8
  end
  object IBRestoreService1: TIBRestoreService
    ServerName = 'localhost'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    PageBuffers = 0
    Left = 469
    Top = 8
  end
  object opdBase3: TOpenDialog
    Filter = 
      'Arquivos de Base (*.GDB, *.FDB)|*.GDB;*.FDB|Arquivos GDB (*.GDB)' +
      '|*.GDB|Arquivos FDB (*.FDB)|*.FDB'
    Left = 73
    Top = 8
  end
  object IBConfigService1: TIBConfigService
    TraceFlags = []
    Left = 438
    Top = 8
  end
end
