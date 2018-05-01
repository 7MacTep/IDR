object FMain_11011981: TFMain_11011981
  Left = 203
  Top = 77
  Width = 1033
  Height = 780
  Caption = 'Interactive Delphi Reconstructor'
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterH1: TSplitter
    Left = 0
    Top = 576
    Width = 1025
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    Beveled = True
    Color = clGray
    MinSize = 100
    ParentColor = False
  end
  object SplitterV1: TSplitter
    Left = 250
    Top = 0
    Width = 3
    Height = 576
    Cursor = crHSplit
    AutoSnap = False
    Beveled = True
    Color = clGray
    MinSize = 3
    ParentColor = False
  end
  object pcWorkArea: TPageControl
    Left = 253
    Top = 0
    Width = 772
    Height = 576
    ActivePage = tsCodeView
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    OnChange = pcWorkAreaChange
    object tsCodeView: TTabSheet
      Caption = 'CodeViewer (F6)'
      object lbCode: TListBox
        Left = 0
        Top = 25
        Width = 654
        Height = 523
        Cursor = crIBeam
        Style = lbOwnerDrawFixed
        AutoComplete = False
        Align = alClient
        Anchors = []
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        MultiSelect = True
        ParentFont = False
        ParentShowHint = False
        PopupMenu = pmCode
        ShowHint = False
        TabOrder = 0
        OnClick = lbCodeClick
        OnDblClick = lbCodeDblClick
        OnDrawItem = lbCodeDrawItem
        OnKeyDown = lbCodeKeyDown
        OnMouseMove = lbCodeMouseMove
      end
      object CodePanel: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 25
        Align = alTop
        PopupMenu = pmCodePanel
        TabOrder = 1
        object lProcName: TLabel
          Left = 192
          Top = 6
          Width = 59
          Height = 13
          Caption = 'ProcName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bEP: TButton
          Left = 2
          Top = 2
          Width = 35
          Height = 22
          Hint = 'Go to Program Entry Point'
          Caption = 'EP'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bEPClick
        end
        object bCodePrev: TButton
          Left = 40
          Top = 2
          Width = 35
          Height = 22
          Hint = 'Previous Subroutine'
          Caption = '<-'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCodePrevClick
        end
        object ShowCXrefs: TPanel
          Left = 652
          Top = 1
          Width = 111
          Height = 23
          Align = alRight
          BevelOuter = bvLowered
          Caption = 'XRefs'
          TabOrder = 2
          OnClick = ShowCXrefsClick
        end
        object bCodeNext: TButton
          Left = 79
          Top = 2
          Width = 35
          Height = 22
          Hint = 'Next Subroutine'
          Caption = '->'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bCodeNextClick
        end
        object bDecompile: TButton
          Left = 118
          Top = 2
          Width = 35
          Height = 22
          Hint = 'Push me :-)'
          Caption = 'Src'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bDecompileClick
        end
        object cbMultipleSelection: TCheckBox
          Left = 170
          Top = 7
          Width = 13
          Height = 13
          Hint = 'Multiple Selection'
          TabOrder = 5
          Visible = False
          OnClick = cbMultipleSelectionClick
        end
      end
      object lbCXrefs: TListBox
        Left = 654
        Top = 25
        Width = 110
        Height = 523
        Style = lbOwnerDrawFixed
        Align = alRight
        Anchors = []
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        OnDblClick = lbXrefsDblClick
        OnDrawItem = lbXrefsDrawItem
        OnKeyDown = lbXrefsKeyDown
        OnMouseMove = lbXrefsMouseMove
      end
    end
    object tsClassView: TTabSheet
      Caption = 'ClassViewer (F7)'
      ImageIndex = 1
      object tvClassesFull: TTreeView
        Left = 0
        Top = 40
        Width = 764
        Height = 508
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        HideSelection = False
        Indent = 19
        ParentFont = False
        PopupMenu = pmVMTs
        ReadOnly = True
        TabOrder = 0
        ToolTips = False
        OnClick = tvClassesFullClick
        OnDblClick = tvClassesDblClick
        OnMouseMove = tvClassesFullMouseMove
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 40
        Align = alTop
        TabOrder = 1
        object rgViewerMode: TRadioGroup
          Left = 1
          Top = 1
          Width = 185
          Height = 38
          Align = alLeft
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Tree'
            'Branch')
          TabOrder = 0
          OnClick = rgViewerModeClick
        end
      end
      object tvClassesShort: TTreeView
        Left = 0
        Top = 40
        Width = 764
        Height = 508
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        HideSelection = False
        Indent = 22
        ParentFont = False
        PopupMenu = pmVMTs
        ReadOnly = True
        TabOrder = 2
        ToolTips = False
        OnClick = tvClassesShortClick
        OnDblClick = tvClassesDblClick
        OnKeyDown = tvClassesShortKeyDown
        OnMouseMove = tvClassesShortMouseMove
      end
    end
    object tsStrings: TTabSheet
      Caption = 'Strings (F8)'
      ImageIndex = 2
      object lbStrings: TListBox
        Left = 0
        Top = 25
        Width = 654
        Height = 523
        Style = lbOwnerDrawFixed
        AutoComplete = False
        Align = alClient
        Anchors = []
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        MultiSelect = True
        ParentFont = False
        PopupMenu = pmStrings
        TabOrder = 0
        OnClick = lbStringsClick
        OnDblClick = lbStringsDblClick
        OnDrawItem = lbStringsDrawItem
        OnMouseMove = lbStringsMouseMove
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 25
        Align = alTop
        TabOrder = 1
        object ShowSXrefs: TPanel
          Left = 652
          Top = 1
          Width = 111
          Height = 23
          Align = alRight
          BevelOuter = bvLowered
          Caption = 'XRefs'
          TabOrder = 0
          OnClick = ShowSXrefsClick
        end
      end
      object lbSXrefs: TListBox
        Left = 654
        Top = 25
        Width = 110
        Height = 523
        Style = lbOwnerDrawFixed
        Align = alRight
        Anchors = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        OnDblClick = lbXrefsDblClick
        OnDrawItem = lbXrefsDrawItem
        OnKeyDown = lbXrefsKeyDown
        OnMouseMove = lbXrefsMouseMove
      end
    end
    object tsItems: TTabSheet
      Caption = 'Items'
      ImageIndex = 3
      TabVisible = False
      object sgItems: TStringGrid
        Left = 0
        Top = 0
        Width = 657
        Height = 363
        Align = alClient
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        TabOrder = 0
        ColWidths = (
          64
          64
          64
          538
          21)
      end
    end
    object tsNames: TTabSheet
      Caption = 'Names (F9)'
      ImageIndex = 4
      object lbNames: TListBox
        Left = 0
        Top = 25
        Width = 654
        Height = 523
        AutoComplete = False
        Align = alClient
        Anchors = []
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        PopupMenu = pmNames
        TabOrder = 0
        OnClick = lbNamesClick
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 25
        Align = alTop
        TabOrder = 1
        object ShowNXrefs: TPanel
          Left = 652
          Top = 1
          Width = 111
          Height = 23
          Align = alRight
          BevelOuter = bvLowered
          Caption = 'XRefs'
          TabOrder = 0
          OnClick = ShowSXrefsClick
        end
      end
      object lbNXrefs: TListBox
        Left = 654
        Top = 25
        Width = 110
        Height = 523
        Style = lbOwnerDrawFixed
        Align = alRight
        Anchors = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        OnDblClick = lbXrefsDblClick
        OnDrawItem = lbXrefsDrawItem
        OnKeyDown = lbXrefsKeyDown
        OnMouseMove = lbXrefsMouseMove
      end
    end
    object tsSourceCode: TTabSheet
      Caption = 'SourceCode (F10)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      object lbSourceCode: TListBox
        Left = 0
        Top = 0
        Width = 764
        Height = 544
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        IntegralHeight = True
        ItemHeight = 15
        ParentFont = False
        PopupMenu = pmSourceCode
        TabOrder = 0
        OnClick = lbSourceCodeClick
        OnDrawItem = lbSourceCodeDrawItem
        OnMouseMove = lbSourceCodeMouseMove
      end
    end
  end
  object pcInfo: TPageControl
    Left = 0
    Top = 0
    Width = 250
    Height = 576
    ActivePage = tsUnits
    Align = alLeft
    TabIndex = 0
    TabOrder = 0
    OnChange = pcInfoChange
    object tsUnits: TTabSheet
      Caption = 'Units (F2)'
      object lbUnits: TListBox
        Left = 0
        Top = 0
        Width = 242
        Height = 548
        Style = lbOwnerDrawFixed
        AutoComplete = False
        Align = alClient
        Color = clWhite
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        PopupMenu = pmUnits
        ShowHint = False
        TabOrder = 0
        OnClick = lbUnitsClick
        OnDblClick = lbUnitsDblClick
        OnDrawItem = lbUnitsDrawItem
        OnKeyDown = lbUnitsKeyDown
        OnMouseMove = lbUnitsMouseMove
      end
    end
    object tsRTTIs: TTabSheet
      Caption = 'Types (F4)'
      ImageIndex = 1
      object lbRTTIs: TListBox
        Left = 0
        Top = 0
        Width = 242
        Height = 548
        AutoComplete = False
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        PopupMenu = pmRTTIs
        TabOrder = 0
        OnClick = lbRTTIsClick
        OnDblClick = lbRTTIsDblClick
        OnKeyDown = lbRTTIsKeyDown
        OnMouseMove = lbRTTIsMouseMove
      end
    end
    object tsForms: TTabSheet
      Caption = 'Forms (F5)'
      ImageIndex = 3
      object Splitter1: TSplitter
        Left = 0
        Top = 374
        Width = 242
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        Color = clGray
        MinSize = 3
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 242
        Height = 40
        Align = alTop
        TabOrder = 0
        object rgViewFormAs: TRadioGroup
          Left = 1
          Top = 1
          Width = 240
          Height = 38
          Align = alClient
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Text'
            'Form')
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
      end
      object lbForms: TListBox
        Left = 0
        Top = 40
        Width = 242
        Height = 334
        AutoComplete = False
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = lbFormsClick
        OnDblClick = lbFormsDblClick
        OnKeyDown = lbFormsKeyDown
        OnMouseMove = lbFormsMouseMove
      end
      object Panel4: TPanel
        Left = 0
        Top = 378
        Width = 242
        Height = 170
        Align = alBottom
        TabOrder = 2
        object lbAliases: TListBox
          Left = 1
          Top = 1
          Width = 240
          Height = 75
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 15
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Sorted = True
          TabOrder = 0
          OnDblClick = lbAliasesDblClick
        end
        object pnlAliases: TPanel
          Left = 1
          Top = 76
          Width = 240
          Height = 93
          Align = alBottom
          TabOrder = 1
          Visible = False
          object lClassName: TLabel
            Left = 7
            Top = 5
            Width = 35
            Height = 15
            Caption = 'Type='
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object cbAliases: TComboBox
            Left = 8
            Top = 31
            Width = 202
            Height = 23
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ItemHeight = 15
            ParentFont = False
            Sorted = True
            TabOrder = 0
          end
          object bApplyAlias: TButton
            Left = 53
            Top = 63
            Width = 52
            Height = 25
            Caption = 'OK'
            Default = True
            TabOrder = 1
            OnClick = bApplyAliasClick
          end
          object bCancelAlias: TButton
            Left = 144
            Top = 63
            Width = 52
            Height = 25
            Cancel = True
            Caption = 'Cancel'
            TabOrder = 2
            OnClick = bCancelAliasClick
          end
        end
      end
    end
  end
  object lbUnitItems: TListBox
    Left = 0
    Top = 580
    Width = 1025
    Height = 146
    TabStop = False
    Style = lbOwnerDrawFixed
    AutoComplete = False
    Align = alBottom
    Color = clWhite
    ExtendedSelect = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    PopupMenu = pmUnitItems
    TabOrder = 2
    OnClick = lbUnitItemsClick
    OnDblClick = lbUnitItemsDblClick
    OnDrawItem = lbUnitItemsDrawItem
    OnKeyDown = lbUnitItemsKeyDown
    OnMouseMove = lbUnitItemsMouseMove
  end
  object MainMenu: TMainMenu
    AutoHotkeys = maManual
    Left = 640
    Top = 72
    object miFile: TMenuItem
      Caption = '&File'
      object miLoadFile: TMenuItem
        Caption = 'Open File'
        object miAutodetectVersion: TMenuItem
          Bitmap.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00078D
            BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
            BE00078DBE00078DBE00078DBE00078DBE00FF00FF00FF00FF00078DBE0025A1
            D10072C7E70085D7FA0065CDF80065CDF80065CDF80065CDF80065CDF80065CD
            F80065CDF80065CDF80039AAD400078DBE00FF00FF00FF00FF00078DBE004CBC
            E70039AAD400A7E6FB0069D5F50069D5F50069D5F50069D5F50076DCF90065CD
            F80076DCF90069D5F50045B7DB0084D7EB00078DBE00FF00FF00078DBE0076DC
            F900078DBE00A7E6FB0076DCF90076DCF90076DCF90076DCF90076DCF90076DC
            F90076DCF90076DCF90045B7DB00A7E6FB00078DBE00FF00FF00078DBE0076DC
            F9001788C6009ADFF30092E5FB0086E7FC0086E5FC0086E7FC0086E5FC007AE3
            FA0086E5FC0086E7FC0045A5DB00B6FBFD00078CB600FF00FF00078DBE007AE3
            FA0045A5DB0069C6E000A7E4FB0092E7FB0086E5FC0092E7FB0086E5FC0092E7
            FB0086E5FC000C85180045A5DB00B6FBFD0069C4E000078DBE00078DBE0086E7
            FC0076CCF900229CC600FDECFA00C7FAFE00C7E8FE00C7FAFE00C7E8FE00C7FA
            FE000C85180039BB58000C851800D6FCFD00D6ECFD00078DBE00078DBE0098F4
            FD0092E5FB001798C600078DBE00078DBE00078DBE00078DBE00078DBE000C85
            180052C97F0061EC950043C869000C851800078DBE00078DBE00078DBE0098F4
            FD0098E4FD0098F4FD0098E4FD0098F4FD0098E4FD0098F4FD000C85180043C8
            690057E0860057E2860061EC950043C869000C851800FF00FF00078DBE00FDFC
            FA00A5E9FE00A5FBFE00A5E9FE0098F4FD00A5E9FE000C8518000C8518000C85
            18000C85180057E2860043C869000C8518000C8518000C851800FF00FF00078D
            BE00FDECFA00A5FBFE00A5E9FE00A5FBFE00078CB60045B7DB0045A5DB0045B7
            DB000C8518004EDD790039A958000C851800FF00FF00FF00FF00FF00FF00FF00
            FF00078DBE00078DBE00078DBE00078DBE00FF00FF00FF00FF00FF00FF00FF00
            FF000C85180040D065000C851800FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C85
            18002BB846002BB846000C851800FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C85
            180021B538000C851800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C8518000C8518000C85
            18000C851800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000C8518000C8518000C8518000C851800FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Caption = 'Autodetect Version'
          ShortCut = 16449
          OnClick = miAutodetectVersionClick
        end
        object miDelphi2: TMenuItem
          Caption = 'Delphi2'
          Enabled = False
          OnClick = miDelphi2Click
        end
        object miDelphi3: TMenuItem
          Caption = 'Delphi3'
          Enabled = False
          OnClick = miDelphi3Click
        end
        object miDelphi4: TMenuItem
          Caption = 'Delphi4'
          Enabled = False
          OnClick = miDelphi4Click
        end
        object miDelphi5: TMenuItem
          Caption = 'Delphi5'
          Enabled = False
          OnClick = miDelphi5Click
        end
        object miDelphi6: TMenuItem
          Caption = 'Delphi6'
          Enabled = False
          OnClick = miDelphi6Click
        end
        object miDelphi7: TMenuItem
          Caption = 'Delphi7'
          Enabled = False
          OnClick = miDelphi7Click
        end
        object miDelphi2005: TMenuItem
          Caption = 'Delphi2005'
          Enabled = False
          OnClick = miDelphi2005Click
        end
        object miDelphi2006: TMenuItem
          Caption = 'Delphi2006'
          Enabled = False
          OnClick = miDelphi2006Click
        end
        object miDelphi2007: TMenuItem
          Caption = 'Delphi2007'
          Enabled = False
          OnClick = miDelphi2007Click
        end
        object miDelphi2009: TMenuItem
          Caption = 'Delphi2009'
          Enabled = False
          OnClick = miDelphi2009Click
        end
        object miDelphi2010: TMenuItem
          Caption = 'Delphi2010'
          Enabled = False
          OnClick = miDelphi2010Click
        end
        object miDelphiXE1: TMenuItem
          Caption = 'DelphiXE1'
          Enabled = False
          OnClick = miDelphiXE1Click
        end
        object miDelphiXE2: TMenuItem
          Caption = 'DelphiXE2'
          Enabled = False
          OnClick = miDelphiXE2Click
        end
        object miDelphiXE3: TMenuItem
          Caption = 'DelphiXE3'
          Enabled = False
          OnClick = miDelphiXE3Click
        end
        object miDelphiXE4: TMenuItem
          Caption = 'DelphiXE4'
          Enabled = False
          OnClick = miDelphiXE4Click
        end
      end
      object miOpenProject: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000865
          97FF096293FF0A5F8EFF0A5F8EFF0C5B87FF0C5B87FF0C5B87FF0C5B87FF0C5B
          87FF0C5B87FF0C5B87FF0C5B87FF0C5B87FF0000000000000000066BA0FF8CE1
          FDFF79CEF0FF72C5E4FF6DBAD7FF6AB7D4FF6AB7D4FF6AB7D4FF6AB7D4FF63B1
          D4FF63B1D4FF5DAAD2FF559FC7FF5097BDFF0C5B87FF00000000056DA5FFBCEF
          FEFF88DCF9FF84DEFDFF84DEFDFF84DEFDFF84DEFDFF84DEFDFF7ED9FCFF7ED9
          FCFF77D3FCFF73CFFCFF6FCCFBFF549FC8FF0C5B87FF000000000471AAFFBEF1
          FEFF94E4FDFF89E2FDFF89E2FDFF89E2FDFF89E2FDFF89E2FDFF82DCFDFF7ED9
          FCFF7ED9FCFF76D2FCFF76D2FCFF5BAAD2FF0C5B87FF000000000274AFFFC0F3
          FEFF9AE8FDFF8EE7FDFF8EE7FDFF8EE7FDFF8EE7FDFF89E3FDFF89E3FDFF82DC
          FDFF7ED9FCFF79D5FCFF74D1FCFF5EAED5FF0C5B87FF000000000176B3FFC2F5
          FEFF9EECFEFF93EBFEFF93EBFEFF93EBFEFF93EBFEFF8DE6FDFF8DE6FDFF85DF
          FDFF80DBFDFF7CD7FCFF77D3FCFF61AED5FF0C5B87FF00000000007AB8FFC4F7
          FEFFA4EFFEFF98EFFEFF98EFFEFF98EFFEFF98EFFEFF91E9FEFF8CE5FDFF87E1
          FDFF82DDFDFF7DD8FCFF78D4FCFF62B1D7FF0C5B87FF00000000007AB9FFC5F8
          FFFFADF2FEFF9CF3FEFF9CF3FEFF9CF3FEFF98EFFEFF93EBFEFF8EE7FDFF89E2
          FDFF84DEFDFF7ED9FCFF79D5FCFF69BCE4FF0C5B87FF00000000007AB9FFC7FA
          FFFFB3F4FEFFB3F4FEFFB1FAFFFFAAF6FFFFA6F2FEFFA1EEFEFF9CEAFEFF97E6
          FDFF92E2FDFF8DDDFCFF81D6FAFF71C7F0FF0C5B87FF00000000007AB9FFC5F8
          FFFFC5F8FFFFC5F8FFFFC5F8FFFFC5F8FFFFC0F3FEFFC0F3FEFFBCEFFEFFBCEF
          FEFFB8EBFDFFB8EBFDFFB8EBFDFF7FD4FBFF0B5D8AFF00000000007AB9FF9DF2
          FEFF9DF2FEFF9DF2FEFF9DF2FEFF98EDFEFF98EDFEFF0373ADFF0470A9FF056D
          A4FF066AA0FF066AA0FF086597FF096293FF000000000000000000000000007A
          B9FF9AEFFEFF9AEFFEFF9AEFFEFF96EBFEFF0178B6FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007AB9FF007AB9FF007AB9FF007AB9FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = 'Open Project'
        ShortCut = 16463
        OnClick = miOpenProjectClick
      end
      object miMRF: TMenuItem
        Caption = 'Recent Files'
        object miExe1: TMenuItem
          Visible = False
          OnClick = miExe1Click
        end
        object miExe2: TMenuItem
          Visible = False
          OnClick = miExe2Click
        end
        object miExe3: TMenuItem
          Visible = False
          OnClick = miExe3Click
        end
        object miExe4: TMenuItem
          Visible = False
          OnClick = miExe4Click
        end
        object miExe5: TMenuItem
          Visible = False
          OnClick = miExe5Click
        end
        object miExe6: TMenuItem
          Visible = False
          OnClick = miExe6Click
        end
        object miExe7: TMenuItem
          Visible = False
          OnClick = miExe7Click
        end
        object miExe8: TMenuItem
          Visible = False
          OnClick = miExe8Click
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object miIdp1: TMenuItem
          Visible = False
          OnClick = miIdp1Click
        end
        object miIdp2: TMenuItem
          Visible = False
          OnClick = miIdp2Click
        end
        object miIdp3: TMenuItem
          Visible = False
          OnClick = miIdp3Click
        end
        object miIdp4: TMenuItem
          Visible = False
          OnClick = miIdp4Click
        end
        object miIdp5: TMenuItem
          Visible = False
          OnClick = miIdp5Click
        end
        object miIdp6: TMenuItem
          Visible = False
          OnClick = miIdp6Click
        end
        object miIdp7: TMenuItem
          Visible = False
          OnClick = miIdp7Click
        end
        object miIdp8: TMenuItem
          Visible = False
          OnClick = miIdp8Click
        end
      end
      object miSaveProject: TMenuItem
        Caption = 'Save Project'
        ShortCut = 16467
        OnClick = miSaveProjectClick
      end
      object miSaveDelphiProject: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000404
          04FF040404FF040404FF040404FF040404FF040404FF040404FF040404FF0404
          04FF040404FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00048181FF04FF
          FFFFC0C0C0FF04FFFFFFC0C0C0FF04FFFFFFC0C0C0FF04FFFFFFFFFFFFFF04FF
          FFFF040404FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000481
          81FF04FFFFFF868686FF868686FF04FFFFFF868686FF868686FF04FFFFFF0404
          04FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9A685FF8686
          86FFC0C0C0FF868686FFC0C0C0FFC0C0C0FF868686FF868686FFC0C0C0FF0404
          04FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFFF00FF00D9A685FF0481
          81FF04FFFFFF868686FF868686FF04FFFFFF868686FF868686FF04FFFFFF0404
          04FFFFD6ADFFFFD6ADFFFFD6ADFFFFD6ADFFD9A685FFFF00FF00D9A685FF8686
          86FF868686FF868686FF868686FFC0C0C0FF868686FF868686FF868686FF0404
          04FFFFD6ADFFFFD6ADFFFFD6ADFFFFD6ADFFD9A685FFFF00FF00868686FFC0C0
          C0FFC0C0C0FF04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFFFF0481
          81FF868686FFFFD6ADFFFFD6ADFFFFD6ADFFD9A685FFFF00FF00D9A685FF0404
          04FF868686FFFFFFFFFFC0C0C0FF04FFFFFF04FFFFFF04FFFFFF040404FF0481
          81FFC0C0C0FFFFD6ADFFFFD6ADFFFFD6ADFFD9A685FFFF00FF00D9A685FFFFFF
          FFFF868686FF868686FF868686FFC0C0C0FF048181FF048181FFC0C0C0FFC0C0
          C0FFFFE7C6FFFFDEB5FFFFD6ADFFFFD6ADFFD9A685FFFF00FF00D9A685FFFFFF
          FFFFFFFFFFFFC0C0C0FF868686FF868686FFC0C0C0FFC0C0C0FFFFFFF7FFFFF7
          E7FFFFEFD6FFFFE7C6FFFFDEB5FFFFD6ADFFD9A685FFFF00FF00D9A685FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F7FFFFF7E7FFFFEFD6FFFFE7C6FFFFDEB5FFD9A685FFFF00FF00D9A685FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF7FFFFF7E7FFFFEFD6FFFFE7C6FFD9A685FFFF00FF00D9A685FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF7FFFFF7E7FFFFEFD6FFD9A685FFFF00FF00D9A685FFD9A6
          85FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFD9A6
          85FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFFF00FF00FF00FF00D9A6
          85FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFD9A685FFD9A6
          85FFD9A685FFD9A685FFD9A685FFD9A685FFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Caption = 'Save Delphi Project'
        OnClick = miSaveDelphiProjectClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000030303026F6F
          6F93B1B7CEEFB3B8CFEFB4B9CFEFB4B9CFEFB4B9CFEFB4B9CFEFB3B9CFEFB2B8
          D0EFB1B8D0EFB1B7D0EFB1B7D0EFB1B5CFEF6F6F6F9303030302707072965A72
          D1FF0528B3FF1032B7FF1536B7FF1435B6FF1336B8FF1135BAFF0D34BDFF0931
          BFFF042FBFFF042BBEFF0426BFFF041DB5FF516AC3FF70707296BFC9EDFC0630
          D3FF264BDBFF3053DCFF2C50DCFF2F53DDFF3358DEFF2E57DFFF2955E1FF2252
          E2FF1549E3FF073FE2FF0940E3FF0539DDFF041CB3FFBCC4E0FCB3BBDBEF143E
          DEFF3357E2FF4162E4FF637EE9FF4768E6FF395FE5FF3B64E6FF3462E8FF2357
          E8FF285DEAFF3E6EEDFF124CEAFF073EE4FF0425BDFFB1B7CFEFB5BCDCEF1E46
          DFFF375AE2FF6781E9FFFDFDFFFFBFCAF6FF4066E5FF3C65E6FF3462E8FF285B
          E9FFB3C6F8FFFBFCFFFF3A6BEEFF043CE3FF042ABFFFB1B7D0EFB6BEDCEF284D
          E0FF4565E4FF5774E6FFBFC9F6FFFFFFFFFFB8C6F5FF3B64E6FF3260E7FFB0C2
          F6FFFFFFFFFFAABFF7FF2055EAFF1046E3FF052FBFFFB2B8CFEFB7BFDCEF3154
          E1FF526FE6FF526FE6FF506DE6FFB9C5F5FFFFFFFFFFA8BAF4FFA7B9F4FFFFFF
          FFFFA1B7F6FF1A51E8FF164CE7FF1D4EE3FF0B33BFFFB4B9D0EFB9C0DCEF3A5C
          E3FF5875E7FF5C76E8FF5470E7FF4A6AE5FFAEBCF3FFFFFFFFFFFFFFFFFFA1B4
          F4FF1F50E5FF1C4FE5FF2252E7FF2351E2FF1238BEFFB4BACFEFBAC2DCEF4263
          E4FF5F79E8FF6079E8FF5571E6FF4B6AE5FFAEBCF4FFFFFFFFFFFFFFFFFFA1B4
          F3FF214EE3FF1E4DE3FF2651E5FF2953E0FF173ABDFFB5BACFEFBCC2DCEF4D6B
          E5FF6881E8FF5F7AE7FF5771E7FFBAC4F5FFFFFFFFFFA7B6F2FFA6B5F2FFFFFF
          FFFFA8B9F3FF204AE1FF224CE2FF2F55DFFF1B3DBCFFB5BACFEFBDC3DCEF5471
          E6FF6E84EAFF6E82E9FFC3CCF7FFFFFFFFFFB9C4F4FF3D5DE3FF3457E2FFB1BE
          F4FFFFFFFFFFAFBDF4FF3559E3FF2D52DEFF1D3DBBFFB5BACFEFBFC3DCEF5D79
          E8FF758BEBFF869BEEFFFDFDFFFFC5CDF7FF4E69E5FF4664E4FF3E5EE3FF3456
          E2FFB9C4F5FFFCFCFFFF5574E7FF2A4EDDFF1E3EBBFFB5BACFEFBFC4DCEF6B81
          EAFF8EA2EFFF8195EDFF879CEEFF6D81E9FF5C77E7FF5B75E7FF5672E6FF4967
          E4FF506DE5FF6580E8FF4062E4FF3558DFFF1A3BBAFFB4BACFEFD2D9F3FC778A
          EBFFA0B0F1FF8A9FEEFF7489EAFF7186EAFF6F83E9FF6A81E9FF6781E9FF647E
          E8FF5975E7FF4B69E4FF4868E5FF385AE0FF1133B7FFC0C7E1FC717273969CAD
          F1FF7388EBFF6781E9FF5975E7FF526FE6FF4E6DE5FF4A69E5FF4867E4FF4565
          E4FF3E5FE3FF395CE3FF2D52E2FF1A40D7FF627BD3FF70707296030303026F6F
          7093BFC4DCEFBEC3DCEFBDC3DCEFBBC2DCEFBBC2DCEFBAC2DCEFBAC1DCEFBAC1
          DCEFB8C0DCEFB9C0DCEFB7BFDCEFB4BBDAEF6F6F709303030302}
        Caption = 'E&xit'
        OnClick = miExitClick
      end
    end
    object miTools: TMenuItem
      Caption = 'Too&ls'
      object miProcessDumper: TMenuItem
        Caption = 'Process &Dumper'
        OnClick = miProcessDumperClick
      end
      object miMapGenerator: TMenuItem
        Caption = '&MAP Generator'
        OnClick = miMapGeneratorClick
      end
      object miCommentsGenerator: TMenuItem
        Caption = '&Comments Generator'
        OnClick = miCommentsGeneratorClick
      end
      object miIDCGenerator: TMenuItem
        Caption = '&IDC Generator'
        OnClick = miIDCGeneratorClick
      end
      object miLister: TMenuItem
        Caption = 'Lister'
        OnClick = miListerClick
      end
      object miClassTreeBuilder: TMenuItem
        Caption = 'Class Tree &Builder'
        OnClick = miClassTreeBuilderClick
      end
      object miKBTypeInfo: TMenuItem
        Caption = 'KB TypeInfo &Viewer'
        OnClick = miKBTypeInfoClick
      end
      object miCtdPassword: TMenuItem
        Caption = 'Citadel Password &Finder'
        OnClick = miCtdPasswordClick
      end
      object miHex2Double: TMenuItem
        Caption = '&Hex->Double'
        OnClick = miHex2DoubleClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object CMD1: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF003535C6FF3535C6FF3535A5FF3535
          A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00353DFFFF353DFFFF353DFFFF3535E7FF3535
          E7FF3535A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00353DFFFF353DFFFF353DFFFF353DFFFF353DFFFF3535
          E7FF3535E7FF3535A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00353DFFFF6767FFFF353DFFFF353DFFFF353DFFFF353D
          FFFF3535E7FF3535A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF006767FFFF6767FFFF353DFFFF353DFFFF353DFFFF353D
          FFFF353DFFFF3535A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF006767FFFF9C9CFFFF6767FFFF353DFFFF353DFFFF353D
          FFFF353DFFFF3535A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF006767FFFF9C9CFFFF6767FFFF353DFFFF353D
          FFFF3535C6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF006767FFFF353DFFFF353DFFFF353D
          FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Caption = 'CMD'
        ShortCut = 32817
        OnClick = CMD1Click
      end
      object Notepad1: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF002F95C9FF2F95C9FF0C89B2FF0C89
          B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0004C7FFFF04C7FFFF04C7FFFF35B6F8FF35B6
          F8FF0C89B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0004C7FFFF04C7FFFF04C7FFFF04C7FFFF04C7FFFF35B6
          F8FF35B6F8FF0C89B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0004C7FFFF04DFFFFF04C7FFFF04C7FFFF04C7FFFF04C7
          FFFF35B6F8FF0C89B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0004DFFFFF04DFFFFF04C7FFFF04C7FFFF04C7FFFF04C7
          FFFF04C7FFFF0C89B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0004DFFFFF04EBFFFF04DFFFFF04C7FFFF04C7FFFF04C7
          FFFF04C7FFFF0C89B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0004DFFFFF04EBFFFF04DFFFFF04C7FFFF04C7
          FFFF2F95C9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0004DFFFFF04C7FFFF04C7FFFF04C7
          FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Caption = 'Notepad'
        ShortCut = 32818
        OnClick = Notepad1Click
      end
      object Calc1: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00069C14FF069C14FF048104FF0481
          04FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0006B41FFF06B41FFF06B41FFF069C1AFF069C
          1AFF048104FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0006B41FFF06B41FFF06B41FFF06B41FFF06B41FFF069C
          1AFF069C1AFF048104FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0006B41FFF07CA20FF06B41FFF06B41FFF06B41FFF06B4
          1FFF069C1AFF048104FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0007CA20FF07CA20FF06B41FFF06B41FFF06B41FFF06B4
          1FFF06B41FFF048104FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0007CA20FF04FF04FF07CA20FF06B41FFF06B41FFF06B4
          1FFF06B41FFF048104FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0007CA20FF04FF04FF07CA20FF06B41FFF06B4
          1FFF069C14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0007CA20FF06B41FFF06B41FFF06B4
          1FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Caption = 'Calculator'
        ShortCut = 32819
        OnClick = Calc1Click
      end
    end
    object miTabs: TMenuItem
      Caption = '&Tabs'
      object Units1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Units'
        ShortCut = 113
        OnClick = Units1Click
      end
      object RTTI1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Types'
        ShortCut = 115
        OnClick = RTTI1Click
      end
      object Forms1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Forms'
        ShortCut = 116
        OnClick = Forms1Click
      end
      object CodeViewer1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Code Viewer'
        ShortCut = 117
        OnClick = CodeViewer1Click
      end
      object ClassViewer1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Class Viewer'
        ShortCut = 118
        OnClick = ClassViewer1Click
      end
      object Strings1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Strings'
        ShortCut = 119
        OnClick = Strings1Click
      end
      object Names1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Names'
        ShortCut = 120
        OnClick = Names1Click
      end
      object SourceCode1: TMenuItem
        Caption = 'SourceCode'
        ShortCut = 121
        OnClick = SourceCode1Click
      end
    end
    object miPlugins: TMenuItem
      Caption = 'Plu&gins'
      OnClick = miPluginsClick
    end
    object miInformation: TMenuItem
      Caption = '&Help'
      object miAbout: TMenuItem
        AutoHotkeys = maManual
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF007381B900112988007381B900FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00132B8B0046A5FD00132B8B007482
          BB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00152E8F0046A5FD0046A5FD00152E
          8F007584BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF001831930046A5FD0046A5FD0046A5
          FD00183193007786BF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CDD3
          E8007192BE1229419D001C3797121C3597001C37971246A5FD0046B7FD1246A5
          FD0046B7FD121C35970029539D127180BE00CDD3E812FF00FF00CED3E9122850
          B100377ED912449FF70046B7FD1246A5FD0046B7FD1246A5FD0046B7FD1246A5
          FD0046B7FD1246A5FD00449FF712377CD9002852B112CED3E9007497C4123C80
          DB004BBAFD124BA8FD004CBAFD124BA8FD003D5BC612406ED500407ED5123D59
          C6004CBAFD124CA9FD004CBAFD124BA9FD003C92DB127485C400335BAB1250A7
          F80053BFFD1253ADFD0053BFFD1253ADFD0053BFFD123D59C6003D5BC61252AD
          FE0053BFFE1253ADFD0053BFFD1253AEFD004FB7F812334BAB002A44AB005CB3
          FE005CA0FD005CB2FE005CA0FE005CB3FE005CA0FE003D59C6003D49C6005CB2
          FE005CA0FD005CB2FE005CA1FD005CB3FE005CA1FD002A44AB002D48B00066B9
          FE0066A9FE0066B9FE0066A9FE0066B9FD003D49C6003D59C6003D49C60066B9
          FE0066A9FE0066B8FE0066A8FD0066B8FE0066A9FE002D48B0003049B50071BF
          FF0070ADFE0070C0FE0070ADFF0071BFFE0053ADFD00406ED5003D49C60070BF
          FE0070ADFF0070BFFE0071ADFE0070BFFE0070C0FE00304BB500344DB9007AC5
          FF007BC4FE007AC5FE007AC5FF007AC5FF007AC5FE007AC6FF007AC5FE007AC6
          FF007AC4FF007AC5FE007AC5FF007AC5FE007BC5FF00344FB9003752BD0083CB
          FE00A6DBFF0083CBFF0083CBFF0083CBFF006EA1E8003D59C6003D59C60083CB
          FE0083CBFE0083CBFE0083CBFF00A6DBFF007FC4FB00435CC1008394D8006CA2
          E800D5EEFF00A6DBFF008AD0FF008BCFFF006EA1E8003D59C6003D59C6008AD0
          FF008ACFFF008BD0FF00A6DBFF00D5EEFF006CA2E7008394D800D4DAF2004E72
          D10070A5E900D5EEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D5EEFF0070A5E9004E72D100D4DAF200FF00FF00D4DB
          F2008597DB004863C9003D59C6003D59C6003D59C6003D59C6003D59C6003D59
          C6003D59C6003D59C6004863C9008597DB00D4DBF200FF00FF00}
        Caption = '&About IDR...'
        OnClick = miAboutClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miHelp: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Help Topics'
        ShortCut = 112
        OnClick = miHelpClick
      end
      object miLegend: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000404
          04FF040404FF040404FF040404FF040404FF040404FF040404FF040404FF0404
          04FF040404FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00048181FF04FF
          FFFFC0C0C0FF04FFFFFFC0C0C0FF04FFFFFFC0C0C0FF04FFFFFFFFFFFFFF04FF
          FFFF040404FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000481
          81FF04FFFFFF868686FF868686FF04FFFFFF868686FF868686FF04FFFFFF0404
          04FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008686
          86FFC0C0C0FF868686FFC0C0C0FFC0C0C0FF868686FF868686FFC0C0C0FF0404
          04FFA54E14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000481
          81FF04FFFFFF868686FF868686FF04FFFFFF868686FF868686FF04FFFFFF0404
          04FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF008686
          86FF868686FF868686FF868686FFC0C0C0FF868686FF868686FF868686FF0404
          04FFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00FF00868686FFC0C0
          C0FFC0C0C0FF04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFFFF0481
          81FFFFFFFFFFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00FF000404
          04FF868686FFFFFFFFFFC0C0C0FF04FFFFFF04FFFFFF04FFFFFF040404FFC0C0
          C0FFAD6735FFAD6735FFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00
          FF00868686FF868686FF868686FFC0C0C0FF048181FF048181FFAD6735FFFFFF
          FFFFAD6735FFAD6735FFAD6735FFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00
          FF00A54E14FFC0C0C0FF868686FF868686FFC0C0C0FFAD6735FFAD6735FFFFFF
          FFFFAD6735FFAD6735FFAD6735FFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00
          FF00FF00FF00A54E14FFFFFFFFFFC0C0C0FFAD6735FFAD6735FFFFFFFFFFFFFF
          FFFFAD6735FFAD6735FFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00A54E14FFFFFFFFFFAD6735FFAD6735FFAD6735FFAD67
          35FFAD6735FFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00A54E14FFFFFFFFFFAD6735FFF7E7DEFFFFFF
          FFFFAD6735FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00A54E14FFFFFFFFFFAD6735FFAD67
          35FFFFFFFFFFA54E14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A54E14FFFFFFFFFFFFFF
          FFFFA54E14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A54E14FFA54E
          14FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Caption = 'Legend'
        OnClick = miLegendClick
      end
      object miSettings: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000000000000000
          000000000000000000000000000000000000773E3EFF6A3737FF713939FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000925D5DFFAA7777FF824B4BFF0000
          0000000000006F3737FF391E1EFF000000000000000000000000000000000000
          00008E5353FF8E5757FF834D4DFF915151FFA47070FFD3ADADFF986767FF7739
          39FF824848FFC29090FF865050FF000000000000000000000000000000000000
          0000986464FFD2AFAFFFA47272FFAC7979FFDBABABFFDBBBBBFFC19898FFAC79
          79FFDEADADFFDAB1B1FFA37272FF000000000000000000000000000000000000
          0000A77878FFE3C8C8FFDEC1C1FFDAB6B6FFE0C2C2FFE0C4C4FFE0C3C3FFD6B3
          B3FFDAB6B6FFD9B4B4FF805151FF000000000000000000000000000000000000
          0000925959FFC8A7A7FFE3CACAFFE1C6C6FFE2C7C7FFE0C4C4FFDFC2C2FFE1C6
          C6FFDFC2C2FFD7B2B2FF996565FF9B5A5AFF935C5CFF00000000A66F6FFFAF79
          79FFB07D7DFFC6A2A2FFE2C8C8FFE4CDCDFFE4CBCBFFDFC2C2FFDFBFBFFFDFC2
          C2FFDFC2C2FFDFC1C1FFC99F9FFFDCAFAFFFAC7B7BFF743E3EFF956060FFDBBC
          BCFFE4CBCBFFE8D3D3FFE3C9C9FFE7D2D2FFCAA4A4FFCA9191FFE6A3A3FFE3B8
          B8FFDFC2C2FFE1C5C5FFDBB9B9FFDAB6B6FFB38686FF764646FF9A6666FFDFC8
          C8FFEDDCDCFFE9D5D5FFE6D0D0FFECD9D9FF996666FF0000000000000000D19A
          9AFFE1C4C4FFE0C4C4FFDEBEBEFFA37272FF824B4BFF00000000AD7878FFB65E
          5EFFB98F8FFFEDDDDDFFE5CCCCFFEDDDDDFF9E6E6EFF8B5353FF9F6767FFD0A6
          A6FFE2C8C8FFE0C4C4FFDCBCBCFF936161FF904747FF0000000000000000C695
          95FFBB8989FFEBD7D7FFE4CBCBFFEEDFDFFFE5D1D1FFD7B3B3FFEAC7C7FFE8D2
          D2FFE3CBCBFFE0C3C3FFDFC2C2FFCDA8A8FF9A5858FF0000000000000000C086
          86FFE6D1D1FFF3E9E9FFF1E4E4FFE2C7C7FFECDBDBFFECDBDBFFEAD6D6FFE7D1
          D1FFE0C3C3FFDFC3C3FFD7B7B7FFD6B5B5FF905B5BFF0000000000000000CF92
          92FFD2AFAFFFE2CACAFFD9B5B5FFEBD9D9FFE7D1D1FFE4CACAFFE3C9C9FFE2C8
          C8FFE7D0D0FFA36767FF984B4BFF965F5FFF926161FF00000000000000000000
          0000CF9494FFCF9494FF00000000D4ABABFFF0E4E4FFE0C8C8FFCFA9A9FFE1C8
          C8FFE8D2D2FFA97474FF00000000000000000000000000000000000000000000
          0000000000000000000000000000D6AAAAFFE8D6D6FFC79494FF00000000B779
          79FFC8A1A1FFAD7676FF00000000000000000000000000000000000000000000
          0000000000000000000000000000C88D8DFFBB8686FFC48E8EFF00000000B871
          71FFB27C7CFF0000000000000000000000000000000000000000}
        Caption = 'Settings'
        object miacFontAll: TMenuItem
          Action = acFontAll
          Bitmap.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000B8B7B8FFB6B5B6FFB4B4B4FFB3B2B3FFB0B0B1FFAFAEAFFFACACADFFABAA
            ABFFA9A8AAFFA7A6A8FFA5A4A6FFA3A3A4FF0000000000000000000000000000
            0000BAB9BAFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
            F8FFF8F8F8FFF8F8F8FFF7F7F7FFA5A4A6FF0000000000000000000000000000
            0000BCBBBBFFFBFBFBFFF6F6F6FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2
            F2FFF1F1F1FFF1F1F1FFF8F8F8FFA7A6A8FF0000000000000000000000000000
            0000BDBDBDFFFBFBFBFFF6F6F6FFF6F6F6FFF5F5F5FFF4F4F4FFD7B58BFFAF63
            03FFD8BB99FFF1F1F1FFF8F8F8FFA9A8AAFF0000000000000000000000000000
            0000BFBEBFFFFBFBFBFFF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF4F4F4FFB364
            03FFF3F3F3FFF2F2F2FFF8F8F8FFABAAABFF0000000000000000000000000000
            0000C1C0C0FFFBFBFBFFF7F7F7FFC9C9C9FF777777FFBBBBBBFFF5F5F5FFB766
            02FFF4F4F4FFF3F3F3FFF9F9F9FFACACADFF0000000000000000000000000000
            0000C3C2C2FFFBFBFBFFF7F7F7FFF7F7F7FF7E7E7EFFF6F6F6FFF6F6F6FFBB68
            02FFF4F4F4FFF4F4F4FFF9F9F9FFAFAEAFFF0000000000000000000000000000
            0000C4C3C3FFFBFBFBFFF7F7F7FFF7F7F7FF858585FFDFB37CFFF6F6F6FFBE6A
            01FFF5F5F5FFD5AD7BFFFAFAFAFFB0B0B1FF0000000000000000000000000000
            0000C6C5C5FFFBFBFBFFF7F7F7FFF7F7F7FF8B8B8BFFCA7000FFC66E01FFC26C
            01FFBE6A01FFBB6802FFFAFAFAFFB3B2B3FF0000000000000000000000000000
            0000C8C7C7FFFBFBFBFFBCBCBCFFF7F7F7FF929292FFF7F7F7FFB7B7B7FFF7F7
            F7FFF6F6F6FFF6F6F6FFFAFAFAFFB4B4B4FF0000000000000000000000000000
            0000CAC9C8FFFBFBFBFF999999FF999999FF989898FF929292FF8B8B8BFFF7F7
            F7FFF7F7F7FFF6F6F6FFFBFBFBFFB6B5B6FF0000000000000000000000000000
            0000CBCACAFFFBFBFBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFFBFBFBFFB8B7B8FF0000000000000000000000000000
            0000CDCCCBFFFBFBFBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFD1D1D1FFAFAFAFFFAFAFAFFFBAB9BAFF0000000000000000000000000000
            0000CFCECDFFFBFBFBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFD1D1D1FFEAEAEAFFDDDDDDFFBEBEBEFF0000000000000000000000000000
            0000D0CFCFFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
            FBFFD1D1D1FFDEDDDDFFC2C1C1FFBDBDBDFF0000000000000000000000000000
            0000D2D1D0FFD0CFCFFFCFCECDFFCDCCCBFFCBCACAFFCAC9C8FFC8C7C7FFC6C5
            C5FFC4C3C3FFC5C4C4FFC1C0C0FF000000000000000000000000}
          Caption = 'Fonts'
        end
        object ShellIntegration1: TMenuItem
          Caption = 'Shell Integration'
          OnClick = ShellIntegration1Click
        end
      end
    end
  end
  object OpenDlg: TOpenDialog
    Left = 688
    Top = 72
  end
  object pmCode: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmCodePopup
    Left = 352
    Top = 96
    object miGoTo: TMenuItem
      Caption = 'GoTo Address'
      Enabled = False
      OnClick = miGoToClick
    end
    object miExploreAdr: TMenuItem
      Caption = 'Explore Address'
      Enabled = False
      OnClick = miExploreAdrClick
    end
    object miName: TMenuItem
      Caption = 'Name Position'
      Enabled = False
      OnClick = miNameClick
    end
    object miViewProto: TMenuItem
      Caption = 'View Prototype'
      Enabled = False
      OnClick = miViewProtoClick
    end
    object miEditFunctionC: TMenuItem
      Caption = 'Edit Prototype'
      Enabled = False
      OnClick = miEditFunctionCClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object CopyLinesC1: TMenuItem
      Caption = 'Copy Lines'
      OnClick = CopyLinesC1Click
    end
    object miCopyAddressCode: TMenuItem
      Caption = 'Copy Address'
      OnClick = miCopyAddressCodeClick
    end
    object miCopyCode: TMenuItem
      Caption = 'Copy All to Clipboard'
      OnClick = miCopyCodeClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object miXRefs: TMenuItem
      Caption = 'XRefs'
      Enabled = False
    end
    object miSwitchFlag: TMenuItem
      Caption = 'Switch flag'
      Enabled = False
      object miSwitchSkipFlag: TMenuItem
        Caption = 'cfSkip'
        OnClick = miSwitchSkipFlagClick
      end
      object miSwitchFrameFlag: TMenuItem
        Caption = 'cfFrame'
        OnClick = miSwitchFrameFlagClick
      end
      object cfTry1: TMenuItem
        Caption = 'cfTry'
        OnClick = cfTry1Click
      end
    end
    object miFuzzyScanKB: TMenuItem
      Caption = 'Fuzzy scan KB'
      Enabled = False
      OnClick = miFuzzyScanKBClick
    end
  end
  object SaveDlg: TSaveDialog
    Left = 632
    Top = 120
  end
  object pmUnits: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmUnitsPopup
    Left = 24
    Top = 96
    object miRenameUnit: TMenuItem
      Caption = 'Rename Unit'
      Enabled = False
      OnClick = miRenameUnitClick
    end
    object miSearchUnit: TMenuItem
      Caption = 'Search Unit'
      Enabled = False
      OnClick = miSearchUnitClick
    end
    object miSortUnits: TMenuItem
      Caption = 'Sort Units by'
      Enabled = False
      object miSortUnitsByAdr: TMenuItem
        Caption = 'Address'
        Checked = True
        OnClick = miSortUnitsByAdrClick
      end
      object miSortUnitsByOrd: TMenuItem
        Caption = 'Initialization Order'
        OnClick = miSortUnitsByOrdClick
      end
      object miSortUnitsByNam: TMenuItem
        Caption = 'Name'
        OnClick = miSortUnitsByNamClick
      end
    end
    object miUnitDumper: TMenuItem
      Caption = 'Unit Dumper'
      Enabled = False
      Visible = False
      OnClick = miUnitDumperClick
    end
    object miCopyList: TMenuItem
      Caption = 'Save Units List'
      Enabled = False
      OnClick = miCopyListClick
    end
  end
  object pmRTTIs: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmRTTIsPopup
    Left = 64
    Top = 96
    object miSearchRTTI: TMenuItem
      Caption = 'Search Type'
      Enabled = False
      OnClick = miSearchRTTIClick
    end
    object miSortRTTI: TMenuItem
      Caption = 'Sort Types by'
      Enabled = False
      object miSortRTTIsByAdr: TMenuItem
        Caption = 'Address'
        Checked = True
        OnClick = miSortRTTIsByAdrClick
      end
      object miSortRTTIsByKnd: TMenuItem
        Caption = 'Type Kind'
        OnClick = miSortRTTIsByKndClick
      end
      object miSortRTTIsByNam: TMenuItem
        Caption = 'Name'
        OnClick = miSortRTTIsByNamClick
      end
    end
    object Appearance2: TMenuItem
      Caption = 'Appearance'
      object Showbar2: TMenuItem
        Action = acShowBar
      end
      object Showhorizontalscroll2: TMenuItem
        Action = acShowHoriz
      end
      object Defaultcolumns2: TMenuItem
        Action = acDefCol
      end
      object Fontthis2: TMenuItem
        Caption = 'Font (this)'
      end
      object Fontall2: TMenuItem
        Action = acFontAll
      end
      object Colorsthis2: TMenuItem
        Action = acColorThis
      end
      object Colorsall2: TMenuItem
        Action = acColorAll
      end
    end
  end
  object pmVMTs: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmVMTsPopup
    Left = 384
    Top = 96
    object miViewClass: TMenuItem
      Caption = 'View Class'
      Enabled = False
      OnClick = miViewClassClick
    end
    object miSearchVMT: TMenuItem
      Caption = 'Search'
      Enabled = False
      OnClick = miSearchVMTClick
    end
    object miCollapseAll: TMenuItem
      Caption = 'Collapse All'
      Enabled = False
      OnClick = miCollapseAllClick
    end
    object miEditClass: TMenuItem
      Caption = 'Edit'
      Enabled = False
      OnClick = miEditClassClick
    end
  end
  object pmUnitItems: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmUnitItemsPopup
    Left = 544
    Top = 96
    object miSearchItem: TMenuItem
      Caption = 'Search Item'
      Enabled = False
      OnClick = miSearchItemClick
    end
    object miEditFunctionI: TMenuItem
      Caption = 'Edit Prototype'
      Enabled = False
      OnClick = miEditFunctionIClick
    end
    object miCopyAddressI: TMenuItem
      Caption = 'Copy Address'
      Enabled = False
      OnClick = miCopyAddressIClick
    end
    object miViewAll: TMenuItem
      Caption = 'View All'
      Enabled = False
      OnClick = miViewAllClick
    end
  end
  object pmStrings: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmStringsPopup
    Left = 424
    Top = 96
    object miSearchString: TMenuItem
      Caption = 'Search'
      OnClick = miSearchStringClick
    end
    object CopyLines1: TMenuItem
      Caption = 'Copy Lines'
      OnClick = CopyLines1Click
    end
    object miCopyStrings: TMenuItem
      Caption = 'Copy All To Clipboard'
      OnClick = miCopyStringsClick
    end
  end
  object pmCodePanel: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmCodePanelPopup
    Left = 672
    Top = 120
    object miEmptyHistory: TMenuItem
      Caption = 'Empty History'
      OnClick = miEmptyHistoryClick
    end
  end
  object alMain: TActionList
    Left = 736
    Top = 72
    object acOnTop: TAction
      Category = 'Appearance'
      Caption = 'Always on top'
    end
    object acShowBar: TAction
      Category = 'Appearance'
      Caption = 'Show bar'
    end
    object acShowHoriz: TAction
      Category = 'Appearance'
      Caption = 'Show horizontal scroll'
    end
    object acDefCol: TAction
      Category = 'Appearance'
      Caption = 'Default columns'
    end
    object acColorThis: TAction
      Category = 'Appearance'
      Caption = 'Colors (this)'
    end
    object acFontAll: TAction
      Category = 'Appearance'
      Caption = 'Font (all)'
      OnExecute = acFontAllExecute
    end
    object acColorAll: TAction
      Category = 'Appearance'
      Caption = 'Colors (all)'
    end
  end
  object FontsDlg: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 712
    Top = 112
  end
  object pmSourceCode: TPopupMenu
    OnPopup = pmSourceCodePopup
    Left = 504
    Top = 96
    object miCopySource2Clipboard: TMenuItem
      Caption = 'Copy to Clipboard'
      OnClick = miCopySource2ClipboardClick
    end
    object miSetlvartype: TMenuItem
      Caption = 'Set lvar type'
      OnClick = miSetlvartypeClick
    end
  end
  object pmNames: TPopupMenu
    Left = 464
    Top = 96
    object miCopytoClipboardNames: TMenuItem
      Caption = 'Copy to Clipboard'
      OnClick = miCopytoClipboardNamesClick
    end
  end
end
