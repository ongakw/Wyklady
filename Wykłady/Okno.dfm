object Okno_Form: TOkno_Form
  Left = 0
  Top = 0
  Caption = 'Okno'
  ClientHeight = 337
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Góra_Panel: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 40
    Align = alTop
    TabOrder = 0
    object Kotek_Button: TButton
      Left = 10
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Kotek'
      TabOrder = 1
      OnClick = Kotek_ButtonClick
    end
    object Czas_Zmiana_Button: TButton
      Left = 115
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Czas zmiana'
      TabOrder = 0
      OnClick = Czas_Zmiana_ButtonClick
    end
  end
  object Log_Memo: TMemo
    Left = 0
    Top = 40
    Width = 634
    Height = 297
    Align = alClient
    Lines.Strings = (
      'Log_Memo')
    TabOrder = 1
  end
end
