object Form1: TForm1
  Left = 243
  Top = 123
  BiDiMode = bdRightToLeft
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object posKeyboard1: TposKeyboard
    Left = 3
    Top = 31
    Width = 514
    Height = 163
    ParentFont = False
    ParentColor = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Color = 10248496
    Padding = 5
    TabStop = False
    Kind = keyNormal
    BorderColor = clDefault
    ButtonColor = 10248496
    PressedColor = clBlack
    CtrlFont.Charset = DEFAULT_CHARSET
    CtrlFont.Color = clWhite
    CtrlFont.Height = -11
    CtrlFont.Name = 'MS Sans Serif'
    CtrlFont.Style = []
    Caption = 'posKeyboard1'
    OnButtonPress = posKeyboard1ButtonPress
  end
  object Label1: TLabel
    Left = 61
    Top = 9
    Width = 3
    Height = 13
  end
end
