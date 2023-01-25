object RemoteDispatcher: TRemoteDispatcher
  Left = -2568
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'PSRY Remote Dispatcher'
  ClientHeight = 1011
  ClientWidth = 7680
  Color = clBtnFace
  Constraints.MaxHeight = 1100
  Constraints.MaxWidth = 7700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BottomPanel: TPanel
    Left = 0
    Top = 931
    Width = 7680
    Height = 80
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 936
    object CliffLabel: TLabel
      Left = 7344
      Top = 21
      Width = 85
      Height = 13
      Caption = ' Signals 2, 4, 6 , 8'
      Visible = False
    end
    object LASigs4: TPanel
      Left = 2690
      Top = -2
      Width = 120
      Height = 75
      BevelOuter = bvNone
      TabOrder = 0
      object Label8: TLabel
        Left = 16
        Top = 8
        Width = 68
        Height = 13
        Caption = 'Signals 4L/4R'
      end
      object DispatcherCtrl: TRadioButton
        Left = 16
        Top = 27
        Width = 113
        Height = 17
        Caption = 'Dispatcher'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = DispatcherCtrlClick
      end
      object PortCtrl: TRadioButton
        Left = 16
        Top = 50
        Width = 113
        Height = 17
        Caption = 'Port'
        TabOrder = 1
        OnClick = PortCtrlClick
      end
    end
    object NassauDispatcher: TPanel
      Left = 5286
      Top = 0
      Width = 115
      Height = 75
      BevelOuter = bvNone
      TabOrder = 1
      object rbNassau: TRadioButton
        Left = 9
        Top = 6
        Width = 113
        Height = 17
        Caption = 'Nassau'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbNassauClick
      end
      object rbDispatcherMain: TRadioButton
        Left = 9
        Top = 31
        Width = 112
        Height = 17
        Caption = 'Dispatcher: Main'
        TabOrder = 1
        OnClick = rbDispatcherMainClick
      end
      object rbDispatcherAll: TRadioButton
        Left = 9
        Top = 54
        Width = 113
        Height = 17
        Caption = 'Dispatcher All'
        TabOrder = 2
        OnClick = rbDispatcherAllClick
      end
    end
    object OSSLocks: TPanel
      Left = 3443
      Top = 0
      Width = 89
      Height = 75
      BevelOuter = bvNone
      TabOrder = 2
      object Label9: TLabel
        Left = 8
        Top = 8
        Width = 54
        Height = 13
        Caption = 'OSS Locks'
      end
      object rbOSSLocksOn: TRadioButton
        Left = 8
        Top = 27
        Width = 113
        Height = 17
        Caption = 'On'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbOSSLocksOnClick
      end
      object rbOSSLocksOff: TRadioButton
        Left = 8
        Top = 50
        Width = 113
        Height = 17
        Caption = 'Off'
        TabOrder = 1
        OnClick = rbOSSLocksOffClick
      end
    end
    object BankClivedenCliff: TPanel
      Left = 6150
      Top = 6
      Width = 177
      Height = 75
      BevelOuter = bvNone
      TabOrder = 3
      object rbCliff: TRadioButton
        Left = 16
        Top = 2
        Width = 73
        Height = 17
        Caption = 'Cliff'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbCliffClick
      end
      object rbBankCliveden: TRadioButton
        Left = 16
        Top = 25
        Width = 153
        Height = 17
        Caption = 'Dispatcher: Bank/Cliveden'
        TabOrder = 1
        OnClick = rbBankClivedenClick
      end
      object DispatcherAll: TRadioButton
        Left = 16
        Top = 48
        Width = 113
        Height = 17
        Caption = 'Dispatcher: All'
        TabOrder = 2
        OnClick = DispatcherAllClick
      end
    end
    object AutoRoutes: TPanel
      Left = 6383
      Top = 6
      Width = 106
      Height = 75
      BevelOuter = bvNone
      TabOrder = 4
      object rbC13Auto: TRadioButton
        Left = 0
        Top = 2
        Width = 89
        Height = 17
        Caption = '<--C13 Auto-->'
        TabOrder = 0
        Visible = False
        OnClick = rbC13AutoClick
      end
      object rbC31Auto: TRadioButton
        Left = 1
        Top = 25
        Width = 80
        Height = 17
        Caption = '<--C31Auto'
        TabOrder = 1
        Visible = False
        OnClick = rbC31AutoClick
      end
      object NormalBtn: TButton
        Left = 8
        Top = 48
        Width = 65
        Height = 17
        Caption = 'Normal'
        TabOrder = 2
        Visible = False
        OnClick = NormalBtnClick
      end
    end
    object YardControl: TPanel
      Left = 1935
      Top = 1
      Width = 82
      Height = 75
      BevelOuter = bvNone
      TabOrder = 5
      object rbYard: TRadioButton
        Left = 0
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Yard'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbYardClick
      end
      object rbYDispatcher: TRadioButton
        Left = 0
        Top = 39
        Width = 113
        Height = 17
        Caption = 'Dispatcher'
        TabOrder = 1
        OnClick = rbYDispatcherClick
      end
    end
    object HydeFleetOn: TCheckBox
      Left = 496
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Hyde Fleet On'
      TabOrder = 6
      OnClick = HydeFleetOnClick
    end
    object YardFleetOn: TCheckBox
      Left = 2054
      Top = 17
      Width = 97
      Height = 17
      Caption = 'YardFleetOn'
      TabOrder = 7
      OnClick = YardFleetOnClick
    end
    object PortFleetOn: TCheckBox
      Left = 2054
      Top = 47
      Width = 97
      Height = 17
      Caption = 'PortFleetOn'
      TabOrder = 8
      OnClick = PortFleetOnClick
    end
    object CliffFleetOn: TCheckBox
      Left = 7344
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Cliff Fleet On'
      TabOrder = 9
      OnClick = CliffFleetOnClick
    end
    object HydeInRoutes: TPanel
      Left = 582
      Top = 0
      Width = 131
      Height = 75
      BevelOuter = bvNone
      TabOrder = 10
      object Label5: TLabel
        Left = 16
        Top = 6
        Width = 107
        Height = 13
        Caption = 'Hyde Inbound Routing'
      end
      object HydeOn: TRadioButton
        Left = 40
        Top = 25
        Width = 41
        Height = 17
        Caption = 'On'
        TabOrder = 0
        OnClick = HydeOnClick
      end
      object HydeOff: TRadioButton
        Left = 40
        Top = 48
        Width = 49
        Height = 17
        Caption = 'Off'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = HydeOffClick
      end
    end
    object DellShoreRoutes: TPanel
      Left = 3289
      Top = 0
      Width = 137
      Height = 75
      BevelOuter = bvNone
      TabOrder = 11
      object Label10: TLabel
        Left = 8
        Top = 6
        Width = 91
        Height = 13
        Caption = 'Dell/Shore Routing'
      end
      object DSROn: TRadioButton
        Left = 9
        Top = 27
        Width = 49
        Height = 17
        Caption = 'On'
        TabOrder = 0
        OnClick = DSROnClick
      end
      object DSROff: TRadioButton
        Left = 9
        Top = 50
        Width = 49
        Height = 17
        Caption = 'Off'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = DSROffClick
      end
      object H30Incl: TCheckBox
        Left = 64
        Top = 17
        Width = 97
        Height = 17
        Caption = 'H30'
        TabOrder = 2
        OnClick = H30InclClick
      end
      object F11Incl: TCheckBox
        Left = 80
        Top = 40
        Width = 50
        Height = 17
        Caption = 'F11'
        TabOrder = 3
        OnClick = F11InclClick
      end
      object P32Incl: TCheckBox
        Left = 88
        Top = 63
        Width = 50
        Height = 17
        Caption = 'P32'
        TabOrder = 4
        OnClick = P32InclClick
      end
    end
    object NassauRoutes: TPanel
      Left = 5494
      Top = 0
      Width = 105
      Height = 75
      BevelOuter = bvNone
      TabOrder = 12
      Visible = False
      object Label11: TLabel
        Left = 16
        Top = 8
        Width = 76
        Height = 13
        Caption = 'Nassau Routing'
      end
      object NaOn: TRadioButton
        Left = 32
        Top = 27
        Width = 50
        Height = 17
        Caption = 'On'
        TabOrder = 0
        OnClick = NaOnClick
      end
      object NaOff: TRadioButton
        Left = 32
        Top = 50
        Width = 50
        Height = 17
        Caption = 'Off'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = NaOffClick
      end
    end
  end
  object MainPanel: TPanel
    Left = 0
    Top = 106
    Width = 7680
    Height = 825
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 830
    object ImageHydeYardPort: TImage
      Left = 0
      Top = 6
      Width = 2101
      Height = 676
      AutoSize = True
      OnMouseDown = ImageHydeYardPortMouseDown
      OnMouseUp = ImageHydeYardPortMouseUp
    end
    object ImageLathamKrulish: TImage
      Left = 2560
      Top = 0
      Width = 1278
      Height = 129
      AutoSize = True
      OnMouseDown = ImageLathamKrulishMouseDown
      OnMouseUp = ImageLathamKrulishMouseUp
    end
    object ImageNassauCliff: TImage
      Left = 5120
      Top = 0
      Width = 1278
      Height = 153
      AutoSize = True
      OnMouseDown = ImageNassauCliffMouseDown
      OnMouseUp = ImageNassauCliffMouseUp
    end
    object ReceiveBuffer: TMemo
      Left = 393
      Top = 224
      Width = 281
      Height = 409
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
      Visible = False
      WordWrap = False
    end
    object ActiveList: TListBox
      Left = 1029
      Top = 288
      Width = 370
      Height = 169
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object TestBuffer: TMemo
      Left = 697
      Top = 240
      Width = 305
      Height = 365
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = TestBufferClick
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 7680
    Height = 106
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 2968
      Top = 8
      Width = 67
      Height = 13
      Caption = 'DCC Breakers'
    end
    object Label3: TLabel
      Left = 2672
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label4: TLabel
      Left = 3188
      Top = 18
      Width = 38
      Height = 13
      Caption = 'Train ID'
    end
    object Label1: TLabel
      Left = 3408
      Top = 18
      Width = 24
      Height = 13
      Caption = 'Loco'
    end
    object Label6: TLabel
      Left = 3883
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Selected Loco'
    end
    object CabSignal: TImage
      Left = 4077
      Top = 2
      Width = 20
      Height = 100
      Picture.Data = {
        07544269746D6170A6170000424DA61700000000000036000000280000001400
        0000640000000100180000000000701700000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000241CED241CED241CED241CED241CED241C
        ED00000000000000000000000000000000000000000000000000000000000000
        0000000000241CED241CED241CED241CED241CED241CED241CED241CED241CED
        241CED000000000000000000000000000000000000000000000000000000241C
        ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
        1CED000000000000000000000000000000000000000000241CED241CED241CED
        241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
        ED000000000000000000000000000000000000241CED241CED241CED241CED24
        1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED000000
        000000000000000000000000241CED241CED241CED241CED241CED241CED241C
        ED241CED241CED241CED241CED241CED241CED241CED241CED241CED00000000
        0000000000000000241CED241CED241CED241CED241CED241CED241CED241CED
        241CED241CED241CED241CED241CED241CED241CED241CED0000000000000000
        00000000241CED241CED241CED241CED241CED241CED241CED241CED241CED24
        1CED241CED241CED241CED241CED241CED241CED000000000000000000000000
        241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
        ED241CED241CED241CED241CED241CED000000000000000000000000241CED24
        1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
        241CED241CED241CED241CED000000000000000000000000241CED241CED241C
        ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
        1CED241CED241CED000000000000000000000000000000241CED241CED241CED
        241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
        ED000000000000000000000000000000000000241CED241CED241CED241CED24
        1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED000000
        000000000000000000000000000000000000241CED241CED241CED241CED241C
        ED241CED241CED241CED241CED241CED241CED241CED00000000000000000000
        0000000000000000000000000000000000241CED241CED241CED241CED241CED
        241CED241CED241CED241CED241CED0000000000000000000000000000000000
        00000000000000000000000000000000000000241CED241CED241CED241CED24
        1CED241CED000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000007F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000
        00000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000000000000000
        00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F0000000000000000000000000000000000000000000000000000
        007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00
        0000000000000000000000000000000000000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F00000000000000000000000000000000000000000000000000000000000000
        00000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F0000000000000000000000000000000000000000000000000000007F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000
        00000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000000000
        000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000007F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000
        00000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000000000000000000000
        00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F0000000000000000000000000000000000000000000000000000
        007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00
        0000000000000000000000000000000000000000000000000000000000000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F00000000000000000000000000000000000000000000000000000000000000
        00000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F0000000000000000000000000000000000000000000000000000007F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000
        00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000
        000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000000000000000
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000000000000000000000007F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
        0000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000000000000000
        00000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000000000000000000000
        000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000}
      OnClick = CabSignalClick
    end
    object Label12: TLabel
      Left = 3687
      Top = 8
      Width = 94
      Height = 13
      Caption = 'Block   Loco     FDir'
    end
    object Label13: TLabel
      Left = 4114
      Top = 8
      Width = 69
      Height = 13
      Caption = 'TTrack Speed'
    end
    object Label14: TLabel
      Left = 4114
      Top = 50
      Width = 63
      Height = 13
      Caption = 'Signal Apeed'
    end
    object Status: TEdit
      Left = 2700
      Top = 18
      Width = 117
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Connect: TButton
      Left = 2584
      Top = 13
      Width = 73
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = ConnectClick
    end
    object Disconnect: TButton
      Left = 2584
      Top = 46
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = DisconnectClick
    end
    object DCCBreakers: TEdit
      Left = 2968
      Top = 27
      Width = 201
      Height = 28
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Train: TEdit
      Left = 3188
      Top = 37
      Width = 85
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = TrainClick
    end
    object PSTime: TEdit
      Left = 2860
      Top = 35
      Width = 89
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '12:00'
    end
    object LoadIDs: TButton
      Left = 3297
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Load IDs'
      TabOrder = 6
      OnClick = LoadIDsClick
    end
    object SaveIDs: TButton
      Left = 3297
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Save IDs'
      TabOrder = 7
      OnClick = SaveIDsClick
    end
    object ClearIDs: TButton
      Left = 3297
      Top = 44
      Width = 75
      Height = 25
      Caption = 'Clear IDs'
      TabOrder = 8
      OnClick = ClearIDsClick
    end
    object LocoList: TComboBox
      Left = 3408
      Top = 37
      Width = 73
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DCCDirection: TPanel
      Left = 3487
      Top = 15
      Width = 82
      Height = 55
      BevelOuter = bvNone
      TabOrder = 10
      object rbForward: TRadioButton
        Left = 8
        Top = 10
        Width = 113
        Height = 17
        Caption = 'Forward'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbForwardClick
      end
      object rbReverse: TRadioButton
        Left = 8
        Top = 33
        Width = 113
        Height = 17
        Caption = 'Reverse'
        TabOrder = 1
        OnClick = rbReverseClick
      end
    end
    object KillATC: TButton
      Left = 3487
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Kill all ATC'
      TabOrder = 11
      Visible = False
      OnClick = KillATCClick
    end
    object cbActive: TCheckBox
      Left = 3684
      Top = 55
      Width = 57
      Height = 28
      Caption = 'Active'
      TabOrder = 12
      OnClick = cbActiveClick
    end
    object cbATC: TCheckBox
      Left = 3729
      Top = 55
      Width = 42
      Height = 17
      Caption = 'ATC'
      TabOrder = 13
      OnClick = cbATCClick
    end
    object cbRTC: TCheckBox
      Left = 3785
      Top = 55
      Width = 46
      Height = 17
      Caption = 'RTC'
      TabOrder = 14
      OnClick = cbRTCClick
    end
    object ShowList: TButton
      Left = 3624
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Show List'
      TabOrder = 15
      OnClick = ShowListClick
    end
    object SelectedTrain: TEdit
      Left = 3836
      Top = 27
      Width = 49
      Height = 21
      TabOrder = 16
    end
    object SelectedLoco: TEdit
      Left = 3836
      Top = 54
      Width = 49
      Height = 21
      TabOrder = 17
    end
    object BlockID: TEdit
      Left = 3836
      Top = 81
      Width = 49
      Height = 21
      TabOrder = 18
    end
    object DeleteID: TButton
      Left = 3751
      Top = 27
      Width = 62
      Height = 21
      Caption = 'Delete ID'
      TabOrder = 19
      OnClick = DeleteIDClick
    end
    object DeleteLoco: TButton
      Left = 3751
      Top = 54
      Width = 65
      Height = 21
      Caption = 'Delete Loco'
      TabOrder = 20
      OnClick = DeleteLocoClick
    end
    object OffBtn: TButton
      Left = 3944
      Top = 80
      Width = 103
      Height = 22
      Caption = 'Monitor/ATC Off'
      Enabled = False
      TabOrder = 21
      OnClick = OffBtnClick
    end
    object ATCControls: TPanel
      Left = 4200
      Top = -5
      Width = 201
      Height = 106
      Color = clCream
      ParentBackground = False
      TabOrder = 22
      Visible = False
      object Label7: TLabel
        Left = 88
        Top = 8
        Width = 59
        Height = 13
        Caption = 'ATC Contols'
      end
      object StartStopBtn: TButton
        Left = 16
        Top = 27
        Width = 75
        Height = 21
        Caption = 'Start'
        TabOrder = 0
        OnClick = StartStopBtnClick
      end
      object HeadlightBtn: TButton
        Left = 112
        Top = 28
        Width = 75
        Height = 21
        Caption = 'Headlight'
        TabOrder = 1
        OnClick = HeadlightBtnClick
        OnMouseDown = HeadlightBtnMouseDown
        OnMouseUp = HeadlightBtnMouseUp
      end
      object HornBtn: TButton
        Left = 112
        Top = 55
        Width = 75
        Height = 20
        Caption = 'Horn'
        TabOrder = 2
      end
      object rbFor: TRadioButton
        Left = 24
        Top = 57
        Width = 41
        Height = 17
        Caption = 'Forward'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
      object rbRev: TRadioButton
        Left = 24
        Top = 80
        Width = 57
        Height = 17
        Caption = 'Reverse'
        TabOrder = 4
      end
    end
    object IPAddress: TMemo
      Left = 2996
      Top = 61
      Width = 134
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object Reset: TButton
      Left = 2726
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 24
      OnClick = ResetClick
    end
    object LocoBlk: TEdit
      Left = 3684
      Top = 27
      Width = 115
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
    end
    object TrackSpeed: TEdit
      Left = 4114
      Top = 26
      Width = 56
      Height = 21
      TabOrder = 26
    end
    object SigSpeed: TEdit
      Left = 4114
      Top = 69
      Width = 56
      Height = 21
      TabOrder = 27
    end
    object MonitorBtn: TButton
      Left = 3948
      Top = 27
      Width = 84
      Height = 22
      Caption = 'Monitor On'
      TabOrder = 28
      OnClick = MonitorBtnClick
    end
    object ATCBtn: TButton
      Left = 3949
      Top = 55
      Width = 65
      Height = 22
      Caption = 'ATC On'
      TabOrder = 29
      OnClick = ATCBtnClick
    end
  end
  object Tiles: TImageList
    BkColor = clWhite
    Left = 192
    Top = 272
  end
  object ClientSocket: TClientSocket
    Active = False
    Address = '192.168.2.0'
    ClientType = ctNonBlocking
    Port = 5304
    OnRead = ClientSocketRead
    Left = 272
    Top = 272
  end
  object Watchdog: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = WatchdogTimer
    Left = 112
    Top = 272
  end
  object ShortLevers: TImageList
    BkColor = clWhite
    Height = 39
    Width = 44
    Left = 104
    Top = 338
  end
  object LongLevers: TImageList
    BkColor = clWhite
    Height = 36
    Width = 58
    Left = 184
    Top = 338
  end
  object USSLamps: TImageList
    Height = 18
    Width = 18
    Left = 272
    Top = 338
  end
  object CabSignals: TImageList
    Height = 100
    Width = 20
    Left = 96
    Top = 394
  end
  object CycleTimer: TTimer
    Interval = 400
    OnTimer = CycleTimerTimer
    Left = 184
    Top = 394
  end
end
