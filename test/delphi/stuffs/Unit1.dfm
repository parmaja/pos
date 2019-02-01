object Form1: TForm1
  Left = 270
  Height = 359
  Top = 118
  Width = 249
  Caption = 'Form1'
  ClientHeight = 359
  ClientWidth = 249
  Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  OnCreate = FormCreate
  LCLVersion = '0.9.29'
  object Shape1: TShape
    Left = 0
    Height = 359
    Top = 0
    Width = 249
    Align = alClient
    Brush.Color = clPurple
    OnChangeBounds = Shape1ChangeBounds
  end
  object Stuffs: TposStuffs
    Left = 17
    Height = 180
    Top = 16
    Width = 207
    Anchors = [akTop, akLeft, akRight, akBottom]
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    ParentFont = False
    ParentColor = False
    Font.CharSet = ARABIC_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Color = clNavy
    OnClick = StuffsClick
    Margin = 5
    Padding = 1
    TabStop = False
    Caption = 'Stuffs'
    ItemHeight = 64
  end
  object ListBox1: TListBox
    Left = 14
    Height = 97
    Top = 224
    Width = 223
    ItemHeight = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 15
    Height = 25
    Top = 328
    Width = 75
    Caption = 'Button1'
    OnClick = Button1Click
    TabOrder = 1
  end
end
