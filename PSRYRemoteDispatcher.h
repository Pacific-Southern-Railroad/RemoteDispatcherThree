//---------------------------------------------------------------------------

#ifndef ClientUnitH
#define ClientUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//#include <ScktComp.hpp>
#include <ImgList.hpp>
#include <Graphics.hpp>
#include <System.ImageList.hpp>
#include <System.Win.ScktComp.hpp>
#include <Vcl.Buttons.hpp>
//---------------------------------------------------------------------------
const int HtWd = 16;

class TRemoteDispatcher : public TForm
{
__published:	// IDE-managed Components
	TPanel *BottomPanel;
   TImage *ImageHydeYardPort;
   TImage *ImageLathamKrulish;
   TImage *ImageNassauCliff;
   TImageList *Tiles;
   TClientSocket *ClientSocket;
   TPanel *Panel3;
	TEdit *Status;
   TButton *Connect;
   TMemo *ReceiveBuffer;
	TButton *Disconnect;
	TEdit *DCCBreakers;
   TLabel *Label2;
   TLabel *Label3;
   TEdit *Train;
   TLabel *Label4;
	TEdit *PSTime;
	TMemo *IPAddress;
	TTimer *Watchdog;
	TImageList *ShortLevers;
	TImageList *LongLevers;
	TImageList *USSLamps;
	TButton *LoadIDs;
	TButton *SaveIDs;
	TButton *ClearIDs;
	TComboBox *LocoList;
	TLabel *Label1;
	TPanel *DCCDirection;
	TRadioButton *rbForward;
	TRadioButton *rbReverse;
	TButton *KillATC;
	TCheckBox *cbActive;
	TCheckBox *cbATC;
	TCheckBox *cbRTC;
	TButton *ShowList;
	TListBox *ActiveList;
	TLabel *Label6;
	TEdit *SelectedTrain;
	TEdit *SelectedLoco;
	TEdit *BlockID;
	TButton *DeleteID;
	TButton *DeleteLoco;
	TButton *ATCOn;
	TButton *OnList;
	TButton *OffList;
	TImage *CabSignal;
	TPanel *ATCControls;
	TLabel *Label7;
	TButton *StartStopBtn;
	TButton *DirectionBtn;
	TEdit *SpeedBox;
	TEdit *Direction;
	TButton *HeadlightBtn;
	TButton *HornBtn;
	TButton *ATCOffButton;
	TPanel *LASigs4;
	TRadioButton *DispatcherCtrl;
	TRadioButton *PortCtrl;
	TLabel *Label8;
	TPanel *NassauDispatcher;
	TRadioButton *rbNassau;
	TRadioButton *rbDispatcherMain;
	TRadioButton *rbDispatcherAll;
	TPanel *OSSLocks;
	TLabel *Label9;
	TRadioButton *rbOSSLocksOn;
	TRadioButton *rbOSSLocksOff;
	TPanel *BankClivedenCliff;
	TRadioButton *rbCliff;
	TRadioButton *rbBankCliveden;
	TRadioButton *DispatcherAll;
	TPanel *AutoRoutes;
	TRadioButton *rbC13Auto;
	TRadioButton *rbC31Auto;
	TPanel *YardControl;
	TRadioButton *rbYard;
	TRadioButton *rbYDispatcher;
	TLabel *CliffLabel;
	TImageList *CabSignals;
	TMemo *TestBuffer;
	TButton *NormalBtn;
	TCheckBox *HydeFleetOn;
	TCheckBox *YardFleetOn;
	TCheckBox *PortFleetOn;
	TCheckBox *CliffFleetOn;
	TTimer *CycleTimer;
	TPanel *HydeInRoutes;
	TLabel *Label5;
	TRadioButton *HydeOn;
	TRadioButton *HydeOff;
	TPanel *DellShoreRoutes;
	TLabel *Label10;
	TRadioButton *DSROn;
	TRadioButton *DSROff;
	TCheckBox *H30Incl;
	TPanel *NassauRoutes;
	TLabel *Label11;
	TRadioButton *NaOn;
	TRadioButton *NaOff;
   void __fastcall FormActivate(TObject *Sender);
   void __fastcall ClientSocketRead(TObject *Sender,
          TCustomWinSocket *Socket);
   void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
   void __fastcall ConnectClick(TObject *Sender);
   void __fastcall ClientSocketConnect(TObject *Sender,
          TCustomWinSocket *Socket);
   void __fastcall DisconnectClick(TObject *Sender);
   void __fastcall TrainClick(TObject *Sender);
   void __fastcall ImageHydeYardPortMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
   void __fastcall ImageLathamKrulishMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
   void __fastcall ImageNassauCliffMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
	void __fastcall WatchdogTimer(TObject *Sender);
	void __fastcall ImageLathamKrulishMouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
	void __fastcall ImageNassauCliffMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall ImageHydeYardPortMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall LoadIDsClick(TObject *Sender);
	void __fastcall ClearIDsClick(TObject *Sender);
	void __fastcall SaveIDsClick(TObject *Sender);
	void __fastcall rbForwardClick(TObject *Sender);
	void __fastcall rbReverseClick(TObject *Sender);
	void __fastcall CabSignalClick(TObject *Sender);
	void __fastcall TestBufferClick(TObject *Sender);
	void __fastcall DeleteIDClick(TObject *Sender);
	void __fastcall DeleteLocoClick(TObject *Sender);
	void __fastcall ATCOnClick(TObject *Sender);
	void __fastcall OnListClick(TObject *Sender);
	void __fastcall OffListClick(TObject *Sender);
	void __fastcall cbActiveClick(TObject *Sender);
	void __fastcall cbATCClick(TObject *Sender);
	void __fastcall cbRTCClick(TObject *Sender);
	void __fastcall ShowListClick(TObject *Sender);
	void __fastcall KillATCClick(TObject *Sender);
	void __fastcall StartStopBtnClick(TObject *Sender);
	void __fastcall DirectionBtnClick(TObject *Sender);
	void __fastcall ATCOffButtonClick(TObject *Sender);
	void __fastcall HeadlightBtnClick(TObject *Sender);
	void __fastcall HeadlightBtnMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall HeadlightBtnMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall DispatcherCtrlClick(TObject *Sender);
	void __fastcall rbNassauClick(TObject *Sender);
	void __fastcall rbDispatcherMainClick(TObject *Sender);
	void __fastcall rbDispatcherAllClick(TObject *Sender);
	void __fastcall PortCtrlClick(TObject *Sender);
	void __fastcall rbOSSLocksOnClick(TObject *Sender);
	void __fastcall rbOSSLocksOffClick(TObject *Sender);
	void __fastcall rbCliffClick(TObject *Sender);
	void __fastcall rbBankClivedenClick(TObject *Sender);
	void __fastcall DispatcherAllClick(TObject *Sender);
	void __fastcall rbC13AutoClick(TObject *Sender);
	void __fastcall rbC31AutoClick(TObject *Sender);
	void __fastcall NormalBtnClick(TObject *Sender);
	void __fastcall HydeFleetOnClick(TObject *Sender);
	void __fastcall rbYardClick(TObject *Sender);
	void __fastcall rbYDispatcherClick(TObject *Sender);
	void __fastcall CycleTimerTimer(TObject *Sender);
	void __fastcall YardFleetOnClick(TObject *Sender);
	void __fastcall PortFleetOnClick(TObject *Sender);
	void __fastcall CliffFleetOnClick(TObject *Sender);
	void __fastcall HydeOnClick(TObject *Sender);
	void __fastcall HydeOffClick(TObject *Sender);
	void __fastcall H30InclClick(TObject *Sender);
	void __fastcall DSROnClick(TObject *Sender);
	void __fastcall DSROffClick(TObject *Sender);
	void __fastcall NaOffClick(TObject *Sender);
	void __fastcall NaOnClick(TObject *Sender);



private:	// User declarations

	void LoadTile(String Name);
	void LoadShortLevers(String Name);
	void LoadLongLevers(String Name);
	void LoadUSSLamps(String Name);
	void LoadCabSignals(String Name);
	void SetSignal();
	String BoolToStr(bool X);
	bool StrToBool(String X);
	void Process(String Message);

	void WriteServer(String Type, String ImageName, int Col, int Row, String Train);

    bool Connected;
	String Message, Frag, MessageA;
	String LocoDir;
	String Aspect;
	bool PRRAspects;
	TImage * pImage;
	int Col, Row, Tile, USSTile, X, Y;
 //	int ButtonX, ButtonY;
	int N, Errors;
	bool WatchdogSet, NoInitialMessage;
	int WatchdogDisconnects, ReconnectAttempts;

public:		// User declarations
   __fastcall TRemoteDispatcher(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRemoteDispatcher *RemoteDispatcher;
//---------------------------------------------------------------------------
#endif
