object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form'
  ClientHeight = 588
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object labelParametry: TLabel
    Left = 24
    Top = 8
    Width = 89
    Height = 18
    Caption = #1055#1072#1088#1077#1084#1077#1090#1088#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelPlainText: TLabel
    Left = 312
    Top = 8
    Width = 133
    Height = 18
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelCipherText: TLabel
    Left = 24
    Top = 248
    Width = 104
    Height = 18
    Caption = #1064#1080#1092#1088#1086#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDecipherText: TLabel
    Left = 24
    Top = 400
    Width = 203
    Height = 18
    Caption = #1044#1077#1096#1080#1092#1088#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object panelParametry: TPanel
    Left = 24
    Top = 32
    Width = 241
    Height = 193
    TabOrder = 0
    object labelP: TLabel
      Left = 16
      Top = 19
      Width = 80
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' P :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelQ: TLabel
      Left = 16
      Top = 75
      Width = 83
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' Q :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelB: TLabel
      Left = 16
      Top = 131
      Width = 81
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' B :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object editQ: TEdit
      Left = 16
      Top = 99
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object editP: TEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object editB: TEdit
      Left = 16
      Top = 155
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object bitbtnP: TBitBtn
      Left = 143
      Top = 44
      Width = 82
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bitbtnPClick
    end
    object bitbtnQ: TBitBtn
      Left = 143
      Top = 100
      Width = 82
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bitbtnQClick
    end
    object bitbtnB: TBitBtn
      Left = 143
      Top = 155
      Width = 82
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bitbtnBClick
    end
  end
  object memoPlainText: TMemo
    Left = 312
    Top = 32
    Width = 449
    Height = 169
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object bitbtnDownload: TBitBtn
    Left = 632
    Top = 200
    Width = 129
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 2
    OnClick = bitbtnDownloadClick
  end
  object bitbtnReset: TBitBtn
    Left = 352
    Top = 559
    Width = 106
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = bitbtnResetClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
      FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
      00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B8FB00FFFB
      00FFFB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FF6464B89898EE9898EE6464B8FB00FFFB00FF6464B89898EE9898EE6464
      B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86060E36060E39C9CF164
      64B86464B89C9CF16060E36060E36464B8FB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FF6464B86666E86666E8A1A1F3A1A1F36666E86666E86464B8FB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86D6DED6D
      6DED6D6DED6D6DED6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FFFB00FF6464B87373F37373F37373F37373F36464B8FB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B8B0B0FB7979F879
      79F87979F87979F8B0B0FB6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FF6464B8B3B3FD7E7EFC7E7EFC6464B86464B87E7EFC7E7EFCB3B3FD6464
      B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B88181FF8181FF6464B8FB
      00FFFB00FF6464B88181FF8181FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FF6464B86464B8FB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
      00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
      00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
    Margin = 4
  end
  object memoCipherText: TMemo
    Left = 24
    Top = 272
    Width = 737
    Height = 98
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object bitbtnCipherText: TBitBtn
    Left = 664
    Top = 368
    Width = 97
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 5
    OnClick = bitbtnCipherTextClick
  end
  object bitbtnDecipherText: TBitBtn
    Left = 664
    Top = 536
    Width = 97
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 6
    OnClick = bitbtnDecipherTextClick
  end
  object memoDecipherText: TMemo
    Left = 24
    Top = 424
    Width = 737
    Height = 113
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object OpenDialog: TOpenDialog
    Left = 768
    Top = 1
  end
end
