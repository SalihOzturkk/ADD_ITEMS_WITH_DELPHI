object Form1: TForm1
  Left = 353
  Top = 169
  Width = 667
  Height = 589
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 328
    Width = 3
    Height = 13
  end
  object ListBox1: TListBox
    Left = 32
    Top = 16
    Width = 169
    Height = 297
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 432
    Top = 16
    Width = 169
    Height = 297
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 232
    Top = 56
    Width = 169
    Height = 73
    Caption = 'EKLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 200
    Width = 169
    Height = 73
    Caption = 'T'#220'M'#220'N'#220' EKLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 304
    Top = 152
  end
end
