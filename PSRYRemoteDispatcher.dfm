object RemoteDispatcher: TRemoteDispatcher
  Left = -8
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Remote Dispatcher Three'
  ClientHeight = 1016
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
    Top = 936
    Width = 7680
    Height = 80
    Align = alBottom
    TabOrder = 0
    object CliffLabel: TLabel
      Left = 7088
      Top = 21
      Width = 85
      Height = 13
      Caption = ' Signals 2, 4, 6 , 8'
      Visible = False
    end
    object IPAddress: TMemo
      Left = 16
      Top = 26
      Width = 134
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object LASigs4: TPanel
      Left = 2720
      Top = 0
      Width = 120
      Height = 75
      BevelOuter = bvNone
      TabOrder = 1
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
      Left = 5408
      Top = 0
      Width = 115
      Height = 75
      BevelOuter = bvNone
      TabOrder = 2
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
      Left = 3256
      Top = 0
      Width = 89
      Height = 75
      BevelOuter = bvNone
      TabOrder = 3
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
      Left = 6434
      Top = 0
      Width = 177
      Height = 75
      BevelOuter = bvNone
      TabOrder = 4
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
      Left = 6671
      Top = 0
      Width = 106
      Height = 75
      BevelOuter = bvNone
      TabOrder = 5
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
      TabOrder = 6
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
      Left = 432
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Hyde Fleet On'
      TabOrder = 7
      OnClick = HydeFleetOnClick
    end
    object YardFleetOn: TCheckBox
      Left = 2054
      Top = 17
      Width = 97
      Height = 17
      Caption = 'YardFleetOn'
      TabOrder = 8
      OnClick = YardFleetOnClick
    end
    object PortFleetOn: TCheckBox
      Left = 2054
      Top = 47
      Width = 97
      Height = 17
      Caption = 'PortFleetOn'
      TabOrder = 9
      OnClick = PortFleetOnClick
    end
    object CliffFleetOn: TCheckBox
      Left = 7088
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Cliff Fleet On'
      TabOrder = 10
      OnClick = CliffFleetOnClick
    end
    object HydeInRoutes: TPanel
      Left = 543
      Top = 0
      Width = 131
      Height = 75
      BevelOuter = bvNone
      TabOrder = 11
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
      Left = 3659
      Top = 0
      Width = 137
      Height = 75
      BevelOuter = bvNone
      TabOrder = 12
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
        Top = 27
        Width = 97
        Height = 17
        Caption = 'H30'
        TabOrder = 2
        OnClick = H30InclClick
      end
    end
    object NassauRoutes: TPanel
      Left = 5536
      Top = 0
      Width = 120
      Height = 75
      BevelOuter = bvNone
      TabOrder = 13
      object Label11: TLabel
        Left = 32
        Top = 6
        Width = 76
        Height = 13
        Caption = 'Nassau Routing'
      end
      object NaOn: TRadioButton
        Left = 40
        Top = 32
        Width = 50
        Height = 17
        Caption = 'On'
        TabOrder = 0
        OnClick = NaOnClick
      end
      object NaOff: TRadioButton
        Left = 40
        Top = 55
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
  object PanelX: TPanel
    Left = 0
    Top = 106
    Width = 7680
    Height = 830
    Align = alClient
    TabOrder = 1
    object ImageHydeYardPort: TImage
      Left = 0
      Top = 0
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
      Left = 3468
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 7680
    Height = 106
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 352
      Top = 25
      Width = 67
      Height = 13
      Caption = 'DCC Breakers'
    end
    object Label3: TLabel
      Left = 120
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
      Left = 3851
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Selected Loco'
    end
    object CabSignal: TImage
      Left = 4072
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
    object Status: TEdit
      Left = 164
      Top = 15
      Width = 129
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
      Left = 24
      Top = 13
      Width = 73
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = ConnectClick
    end
    object Disconnect: TButton
      Left = 24
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = DisconnectClick
    end
    object DCCBreakers: TEdit
      Left = 352
      Top = 44
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
      Left = 176
      Top = 43
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
      Left = 3296
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Load IDs'
      TabOrder = 6
      OnClick = LoadIDsClick
    end
    object SaveIDs: TButton
      Left = 3296
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Save IDs'
      TabOrder = 7
      OnClick = SaveIDsClick
    end
    object ClearIDs: TButton
      Left = 3296
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
      Top = 76
      Width = 75
      Height = 25
      Caption = 'Kill all ATC'
      TabOrder = 11
      Visible = False
      OnClick = KillATCClick
    end
    object cbActive: TCheckBox
      Left = 3584
      Top = 50
      Width = 57
      Height = 28
      Caption = 'Active'
      TabOrder = 12
      OnClick = cbActiveClick
    end
    object cbATC: TCheckBox
      Left = 3639
      Top = 55
      Width = 42
      Height = 17
      Caption = 'ATC'
      TabOrder = 13
      OnClick = cbATCClick
    end
    object cbRTC: TCheckBox
      Left = 3695
      Top = 55
      Width = 46
      Height = 17
      Caption = 'RTC'
      TabOrder = 14
      OnClick = cbRTCClick
    end
    object ShowList: TButton
      Left = 3624
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Show List'
      TabOrder = 15
      OnClick = ShowListClick
    end
    object SelectedTrain: TEdit
      Left = 3776
      Top = 27
      Width = 49
      Height = 21
      TabOrder = 16
    end
    object SelectedLoco: TEdit
      Left = 3776
      Top = 54
      Width = 49
      Height = 21
      TabOrder = 17
    end
    object BlockID: TEdit
      Left = 3776
      Top = 81
      Width = 49
      Height = 21
      TabOrder = 18
    end
    object DeleteID: TButton
      Left = 3851
      Top = 27
      Width = 62
      Height = 21
      Caption = 'Delete ID'
      TabOrder = 19
      OnClick = DeleteIDClick
    end
    object DeleteLoco: TButton
      Left = 3851
      Top = 54
      Width = 65
      Height = 21
      Caption = 'Delete Loco'
      TabOrder = 20
      OnClick = DeleteLocoClick
    end
    object ATCOn: TButton
      Left = 3894
      Top = 78
      Width = 65
      Height = 22
      Caption = 'ATC On'
      TabOrder = 21
      OnClick = ATCOnClick
    end
    object OnList: TButton
      Left = 3944
      Top = 26
      Width = 75
      Height = 22
      Caption = 'On List'
      TabOrder = 22
      OnClick = OnListClick
    end
    object OffList: TButton
      Left = 3944
      Top = 54
      Width = 75
      Height = 21
      Caption = 'Off List'
      TabOrder = 23
      OnClick = OffListClick
    end
    object ATCControls: TPanel
      Left = 4134
      Top = -1
      Width = 256
      Height = 106
      Color = clCream
      ParentBackground = False
      TabOrder = 24
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
      object DirectionBtn: TButton
        Left = 15
        Top = 54
        Width = 75
        Height = 17
        Caption = 'Direction'
        TabOrder = 1
        OnClick = DirectionBtnClick
      end
      object SpeedBox: TEdit
        Left = 104
        Top = 27
        Width = 41
        Height = 21
        TabOrder = 2
      end
      object Direction: TEdit
        Left = 104
        Top = 54
        Width = 41
        Height = 21
        TabOrder = 3
      end
      object HeadlightBtn: TButton
        Left = 160
        Top = 28
        Width = 75
        Height = 21
        Caption = 'Headlight'
        TabOrder = 4
        OnClick = HeadlightBtnClick
        OnMouseDown = HeadlightBtnMouseDown
        OnMouseUp = HeadlightBtnMouseUp
      end
      object HornBtn: TButton
        Left = 160
        Top = 55
        Width = 75
        Height = 20
        Caption = 'Horn'
        TabOrder = 5
      end
      object ATCOffButton: TButton
        Left = 87
        Top = 81
        Width = 75
        Height = 21
        Caption = 'ATC Off'
        TabOrder = 6
        OnClick = ATCOffButtonClick
      end
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
    OnConnect = ClientSocketConnect
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
