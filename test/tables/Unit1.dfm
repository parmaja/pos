object Form1: TForm1
  Left = 270
  Top = 118
  Caption = 'Form1'
  ClientHeight = 290
  ClientWidth = 613
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    613
    290)
  PixelsPerInch = 96
  TextHeight = 13
  object Stuffs: TposStuffs
    Left = 15
    Top = 1
    Width = 296
    Height = 269
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    ParentColor = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clNavy
    Margin = 5
    Padding = 2
    TabStop = False
    Caption = 'Stuffs'
    ItemHeight = 64
  end
  object POSGrid1: TposGrid
    Left = 325
    Top = 16
    Width = 177
    Height = 199
  end
end
