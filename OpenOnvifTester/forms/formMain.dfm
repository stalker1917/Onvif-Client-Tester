object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Test Onvif Server Alpha'
  ClientHeight = 746
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 232
    Top = 5
    Width = 57
    Height = 13
    Caption = #1047#1072#1087#1088#1086#1089' XML'
  end
  object Label8: TLabel
    Left = 32
    Top = 417
    Width = 54
    Height = 13
    Caption = #1054#1090#1074#1077#1090' XML'
  end
  object LabeledEdit1: TLabeledEdit
    Left = 32
    Top = 133
    Width = 121
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = #1043#1086#1076
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 32
    Top = 181
    Width = 121
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1077#1089#1103#1094
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 32
    Top = 229
    Width = 121
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1077#1085#1100
    TabOrder = 2
  end
  object LabeledEdit4: TLabeledEdit
    Left = 32
    Top = 325
    Width = 665
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1076#1088#1077#1089#1085#1072#1103' '#1089#1090#1088#1086#1082#1072
    TabOrder = 3
    Text = 'http://127.0.0.1'
  end
  object Memo1: TMemo
    Left = 224
    Top = 24
    Width = 473
    Height = 254
    TabOrder = 4
  end
  object Memo2: TMemo
    Left = 32
    Top = 436
    Width = 665
    Height = 254
    TabOrder = 5
  end
  object LabeledEdit5: TLabeledEdit
    Left = 32
    Top = 365
    Width = 665
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1086#1088#1090
    TabOrder = 6
    Text = '8080'
  end
  object Button3: TButton
    Left = 32
    Top = 22
    Width = 121
    Height = 25
    Caption = #1059#1079#1085#1072#1090#1100' '#1074#1088#1077#1084#1103
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 53
    Width = 121
    Height = 25
    Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 8
    OnClick = Button4Click
  end
end
