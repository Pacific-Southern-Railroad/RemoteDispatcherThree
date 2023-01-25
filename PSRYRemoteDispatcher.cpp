//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PSRYRemoteDispatcher.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRemoteDispatcher *RemoteDispatcher;
//---------------------------------------------------------------------------
__fastcall TRemoteDispatcher::TRemoteDispatcher(TComponent* Owner)
   : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TRemoteDispatcher::FormActivate(TObject *Sender)
{
//Load tile bitmaps

	LoadTile("blank.bmp");		//0
	LoadTile("crossingX.bmp");	//1
	LoadTile("trackH.bmp");		//2
	LoadTile("trackV.bmp");		//3
	LoadTile("blockHR.bmp");	//4
	LoadTile("blockHL.bmp");	//5
	LoadTile("diagonalDU.bmp");	//6
	LoadTile("diagonalUD.bmp");	//7
	LoadTile("angleDL.bmp");	//8
	LoadTile("angleDR.bmp");	//9
	LoadTile("angleUL.bmp");	//10
	LoadTile("angleUR.bmp");	//11
	LoadTile("angleVUR.bmp");	//12
	LoadTile("angleVUL.bmp");	//13
	LoadTile("angleVDR.bmp");	//14
	LoadTile("angleVDL.bmp");	//15
	LoadTile("hsignalR.bmp");	//16
	LoadTile("hsignalL.bmp");	//17
	LoadTile("dsignalR.bmp");	//18
	LoadTile("dsignalL.bmp");	//19
	LoadTile("switchMKR.bmp");	//20
	LoadTile("trackRHL.bmp");	//21
	LoadTile("trackRHR.bmp");	//22
	LoadTile("stopR.bmp");		//23
	LoadTile("buttonUP.bmp");  	//24
	LoadTile("buttonDN.bmp");  	//25
	LoadTile("hSwUW.bmp");		//26
	LoadTile("hSwUR.bmp");		//27
	LoadTile("hSwDW.bmp");		//28
	LoadTile("hSwDR.bmp");		//29
	LoadTile("blank.bmp");		//30
	LoadTile("trackYD.bmp");	//31
	LoadTile("trackRH.bmp");	//32
	LoadTile("trackRV.bmp");	//33
	LoadTile("blockRHR.bmp");	//34
	LoadTile("blockRHL.bmp");	//35
	LoadTile("diagonalRDU.bmp");	//36
	LoadTile("diagonalRUD.bmp");	//37
	LoadTile("angleRDL.bmp");	//38
	LoadTile("angleRDR.bmp");	//39
	LoadTile("angleRUL.bmp");	//40
	LoadTile("angleRUR.bmp");	//41
	LoadTile("angleRVUR.bmp");	//42
	LoadTile("angleRVUL.bmp");	//43
	LoadTile("angleRVDR.bmp"); 	//44
	LoadTile("angleRVDL.bmp");	//45
	LoadTile("hsignalRG.bmp");	//46
	LoadTile("hsignalLG.bmp");	//47
	LoadTile("dsignalRY.bmp");	//48
	LoadTile("dsignalLY.bmp");	//49
	LoadTile("trackGHL.bmp");	//50
	LoadTile("trackGHR.bmp");	//51
	LoadTile("trackYD.bmp");    //52
	LoadTile("blank.bmp");      //53
	LoadTile("blank.bmp");      //54
	LoadTile("blank.bmp");      //55
	LoadTile("hsignalRW.bmp");  //56
	LoadTile("hsignalLW.bmp");	//57
	LoadTile("dsignalRW.bmp");	//58
	LoadTile("dsignalLW.bmp");	//59
	LoadTile("blank.bmp");      //60
	LoadTile("trackRYD.bmp");   //61
	LoadTile("trackGH.bmp");	//62
	LoadTile("trackGV.bmp");	//63
	LoadTile("blockGHR.bmp");	//64
	LoadTile("blockGHL.bmp");	//65
	LoadTile("diagonalGDU.bmp");	//66
	LoadTile("diagonalGUD.bmp");	//67
	LoadTile("angleGDL.bmp");	//68
	LoadTile("angleGDR.bmp");	//69
	LoadTile("angleGUL.bmp");  	//70
	LoadTile("angleGUR.bmp");  	//71
	LoadTile("angleGVUR.bmp");	//72
	LoadTile("angleGVUL.bmp");	//73
	LoadTile("angleGVDR.bmp");	//74
	LoadTile("angleGVDL.bmp");	//75
	LoadTile("hsignalRC.bmp");	//76
	LoadTile("hsignalLC.bmp");	//77
	LoadTile("fleetL.bmp");		//78
	LoadTile("fleetR.bmp");		//79
	LoadTile("stopA.bmp");		//80
	LoadTile("stopL.bmp");		//81
	LoadTile("indicatorR.bmp");	//82
	LoadTile("indicatorG.bmp");	//83
	LoadTile("indicatorOut.bmp");	//84
	LoadTile("resetL.bmp");		//85
	LoadTile("resetR.bmp");		//86
	for(int i=0; i<4; i++)		//87-90
	{
		LoadTile("blank.bmp");
	}
	LoadTile("trackGYD.bmp");   //91

//Load USS Machine images

	LoadShortLevers("LvrShBL.bmp");	//0
	LoadShortLevers("LvrShBM.bmp");	//1
	LoadShortLevers("LvrShBR.bmp");	//2
	LoadShortLevers("LvrShTL.bmp");	//3
	LoadShortLevers("LvrShTR.bmp");	//4

	LoadLongLevers("LvrLgBL.bmp");	//0
	LoadLongLevers("LvrLgBM.bmp");	//1
	LoadLongLevers("LvrLgBR.bmp");	//2
	LoadLongLevers("LvrLgTL.bmp");	//3
	LoadLongLevers("LvrLgTR.bmp");	//4

	LoadUSSLamps("USSLampOut.bmp");     //0
	LoadUSSLamps("USSLampS.bmp");		//1
	LoadUSSLamps("USSLampL.bmp");		//2
	LoadUSSLamps("USSLampR.bmp");		//3
	LoadUSSLamps("USSButtonUp.bmp");	//4
	LoadUSSLamps("USSButtonDn.bmp");	//5
	LoadUSSLamps("USSLampK.bmp");		//6
	LoadUSSLamps("USSLampF.bmp");		//7
	LoadUSSLamps("USSLampGreen.bmp");	//8

//Load cab signals

	LoadCabSignals("ClearSignal.bmp");   		//0
	LoadCabSignals("ApproachMediumSignal.bmp"); //1
	LoadCabSignals("ApproachSignal.bmp");    	//2
	LoadCabSignals("StopSignal.bmp");    		//3
	LoadCabSignals("PRRClear.bmp");         	//4
	LoadCabSignals("PRRApproachMedium.bmp");    //5
	LoadCabSignals("PRRApproach.bmp");          //6
	LoadCabSignals("PRRRestricting.bmp");       //7


//Load diagram bitmaps

	ImageHydeYardPort->Picture->LoadFromFile("../Bitmaps/Diagrams/HydeYardPort2021.bmp");
	ImageHydeYardPort->Canvas->Font->Color = clRed;
	ImageLathamKrulish->Picture->LoadFromFile("../Bitmaps/Diagrams/LathamKrulish2019.bmp");
	ImageLathamKrulish->Canvas->Font->Color = clRed;
	ImageNassauCliff->Picture->LoadFromFile("../Bitmaps/Diagrams/NassauCliff2019.bmp");
	ImageNassauCliff->Canvas->Font->Color = clRed;

//Load IP address

	IPAddress->Lines->LoadFromFile("../TextFiles/IP Address.txt");

	N = 0;
	Errors = WatchdogDisconnects = ReconnectAttempts = 0;
	Frag = "";
	Train->SetFocus();

//Clear Loco list

	LocoList->Clear();

	LocoDir = "For";

//Origins for track diagrams to correct for offset of tile arrays

	int HyYdPtDiaXOrigin = -20;
	int	HyYdPtDiaYOrigin = 20;
	int LaKrDiaXOrigin = 0;
	int LaKrDiaYOrigin = 20;
	int NaCfDiaXOrigin = 0;
	int NaCfDiaYOrigin = 20;

//Origins for USS panels

	int	LaKrXOrigin = 46;
	int	LaKrYOrigin = 514;
	int	NaCfXOrigin = 113;
	int	NaCfYOrigin = 514;

	Connected = false;

//End of constructor
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ClientSocketRead(TObject *Sender,
	  TCustomWinSocket *Socket)
{
	WatchdogSet = false;
	String Test;
	if(NoInitialMessage)
	{
		NoInitialMessage = false;

		ImageHydeYardPort->Picture->LoadFromFile("../Bitmaps/Diagrams/HydeYardPort2021.bmp");
		ImageHydeYardPort->Canvas->Font->Color = clRed;
		ImageLathamKrulish->Picture->LoadFromFile("../Bitmaps/Diagrams/LathamKrulish2019.bmp");
		ImageLathamKrulish->Canvas->Font->Color = clRed;
		ImageNassauCliff->Picture->LoadFromFile("../Bitmaps/Diagrams/NassauCliff2019.bmp");
		ImageNassauCliff->Canvas->Font->Color = clRed;
	}

	ReceiveBuffer->Lines->Text = Socket->ReceiveText();
	int C = ReceiveBuffer->Lines->Count;
	int i = 0;

	if(Frag != "")                      //if fragment left from last packet
	{
		String N = ReceiveBuffer->Lines->Strings[0];
		Message = Frag + N;              //add remainder of packet
		i = 1;
		Test = Message.SubString(40, 2);
		if(Test == "##")
			Process(Message);
		else
		{
			Message.Trim();            //get rid of spaces
			if(Message != "")
			Errors++;               //if some text still there
		}
	}
	for(i = 0; i < C; i++)
	{
		Message = ReceiveBuffer->Lines->Strings[i];
        TestBuffer->Lines->Add(Message);
		Test = Message.SubString(40, 2);
		if(Test == "##")
		{
			Process(Message);
			Frag = "";
		}
		else
			Frag = Message;
	}
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::FormClose(TObject *Sender, TCloseAction &Action)
{
	IPAddress->Lines->SaveToFile("../TextFiles/IP Address.txt");
	DisconnectClick(this);
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ConnectClick(TObject *Sender)

{
/*	String Name = IPAddress->Lines->Text;	//initialized from file
	String Address;
	hostent* HostEntity;
	wchar_t* WChars = Name.c_str();      	//pointer to String data
	char Chars[20];                         //character buffer
	int Length = Name.Length();

	for(int i = 0; i < Length; i++)  //convert data to characters
	{
		Chars[i] = (char)WChars[i];
	}

	HostEntity = gethostbyname(Chars);      //get IP address
	Address = inet_ntoa(*(in_addr*)HostEntity->h_addr_list[0]);
	ClientSocket->Address = Address;
*/

	ClientSocket->Address = IPAddress->Lines->Text;
	NoInitialMessage = true;
	ClientSocket->Active = true;
	Train->SetFocus();
}

//---------------------------------------------------------------------------
void __fastcall TRemoteDispatcher::WatchdogTimer(TObject *Sender)
{
	if(WatchdogSet)
	{
		ClientSocket->Active = false;
		WatchdogDisconnects++;
		if(ReconnectAttempts < 3)
		{
			ConnectClick(this);
			ReconnectAttempts ++;
		}
	else
		DisconnectClick(this);
	}

	WatchdogSet = true;
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DisconnectClick(TObject *Sender)
{
    Connected = false;
	Status->Text = "Disconnected";
    ClientSocket->Active = false;
	Watchdog->Enabled = false;
	ReconnectAttempts = 0;
}
//---------------------------------------------------------------------------

void TRemoteDispatcher::LoadTile(String Name)      //Load tiles into image list
{
	Tiles->FileLoad(rtBitmap,("../Bitmaps/BlackScreenTiles\\" + Name), clWhite);

}
//---------------------------------------------------------------------------

//load cab signal images

void TRemoteDispatcher::LoadCabSignals(String Name)
{
	CabSignals->FileLoad(rtBitmap,("../Bitmaps/BlackScreenTiles\\" + Name), clWhite);
}
//------------------------------------------------------------------------------


//load USS machine images

void TRemoteDispatcher::LoadShortLevers(String Name)
{
	ShortLevers->FileLoad(rtBitmap, ("../Bitmaps/USSTiles\\" + Name), clWhite);
}
//------------------------------------------------------------------------------

void TRemoteDispatcher::LoadLongLevers(String Name)
{
	LongLevers->FileLoad(rtBitmap, ("../Bitmaps/USSTiles\\" + Name), clWhite);
}
//------------------------------------------------------------------------------

void TRemoteDispatcher::LoadUSSLamps(String Name)
{
	USSLamps->FileLoad(rtBitmap, ("../Bitmaps/USSTiles\\" + Name), clWhite);
}

//------------------------------------------------------------------------------

//Processing messages from dispatcher

void TRemoteDispatcher::Process(String Message)
{
	String Type, M;
	String ImageName;
	String ID;
	int XOrigin, YOrigin, TXOrigin, TYOrigin;

	Type = Message.SubString(1, 8).TrimRight();
	M = Message.SubString(10, 10).TrimRight();

	if(Type == "Locos")              //Initialize LocoList
	{
		String Loco = Message.SubString(10, 4).TrimRight();
		LocoList->Items->Add(Loco);
	}
	else if(Type == "Tile" || Type == "TrainID" || Type == "USSsh" ||
		Type == "USSlg" || Type == "USSlmp" || Type == "USSbn")
	{
    	ImageName = Message.SubString(10, 8).TrimRight();
		if(ImageName == "HyYdPt")
		{
			pImage = ImageHydeYardPort;    //Set pointer to image
			XOrigin = 12;
			YOrigin = 4;
			TXOrigin = -20;
			TYOrigin = 20;
		}
		else if(ImageName == "LaKr")
		{
			pImage = ImageLathamKrulish;
			XOrigin = 0;
			YOrigin = 4;
			TXOrigin = 0;
			TYOrigin = 20;
		}
		else if(ImageName == "NaCf")
		{
			pImage = ImageNassauCliff;
			XOrigin = 0;
			YOrigin = 4;
			TXOrigin = 0;
			TYOrigin = 20;
		}
		Col = X = StrToInt(Message.SubString(20, 4).TrimRight());
		Row = Y = StrToInt(Message.SubString(25, 4 ).TrimRight());

		if(Type == "Tile")                     //Tile for track diagram
		{
			Tile = StrToInt(Message.SubString(30, 4).TrimRight());       //Draw tile
			Tiles->Draw(pImage->Canvas, XOrigin + Col*HtWd, YOrigin + Row*HtWd, Tile, true);
		}
		else if(Type == "TrainID")
		{
			ID = Message.SubString(30, 8).TrimRight();                   //Write train ID
			pImage->Canvas->TextOut(TXOrigin +2 + Col*HtWd, TYOrigin + Row*HtWd, ID);
		}
		else if(Type == "USSsh")
		{
			USSTile = StrToInt(Message.SubString(30, 4).TrimRight());       //Draw USS tile
			ShortLevers->Draw(pImage->Canvas, X, Y, USSTile, true);
		}
		else if(Type == "USSlg")
		{
			USSTile = StrToInt(Message.SubString(30, 4).TrimRight());
			LongLevers->Draw(pImage->Canvas, X, Y, USSTile, true);
		}
		else if(Type == "USSlmp")
		{
			USSTile = StrToInt(Message.SubString(30, 4).TrimRight());
			USSLamps->Draw(pImage->Canvas, X, Y, USSTile, true);
		}
		pImage->Invalidate();
	}
	else if(Type == "CktBkr")
	{
		String Text = Message.SubString(10, 28).TrimRight();       //Circuit breaker status
		if(Text == "All OK")
		{
			DCCBreakers->Color = clGreen;
			DCCBreakers->Text = "      All OK";
		}
		else if(Text == "DCCPowerOff")
		{
			DCCBreakers->Color = clNavy;
			DCCBreakers->Text = "   DCC Power Off";
		}
		else
		{
			DCCBreakers->Color = clRed;
            DCCBreakers->Text = Text;
		}
	}
	else if(Type == "PSClock")
	{                                      //Time
		String NewTime = Message.SubString(10, 6).TrimRight();
		String Color = Message.SubString(30, 8).TrimRight();
			if(Color == "Silver")
				PSTime->Color = clSilver;
			else
				PSTime->Color = clWindow;
		PSTime->Text = NewTime;
	}
	else if(Type == "SelLoco")
	{
		SelectedTrain->Text = Message.SubString(10, 6).TrimRight();
		SelectedLoco->Text = Message.SubString(20, 6).TrimRight();
		BlockID->Text = Message.SubString(30, 6).TrimRight();
	}
	else if(Type == "CabSig")
	{
		Aspect = Message.SubString(10, 10).TrimRight();
		SetSignal();
	}
	else if(Type == "CfmDel")
	{
		int N = Application->MessageBox(L"You are about to delete the selected loco", L"Pacific Southern", MB_OKCANCEL);
		if(N == 1)
			WriteServer("CfmDel", "", 0, 0, "");
	}
	else if(Type == "NoAdd")
	{
		String X = Message.SubString(10, 8).TrimRight();
		if(X == "BlAssgn")
			Application->MessageBox(L"Block already assigned!", L"Pacific Southern", MB_OK);
		else if(X == "LoAssgn")
			Application->MessageBox(L"Loco already assigned!", L"Pacific Southern", MB_OK);
	}

	else if(Type == "ClrLst")                  //Loco list
		ActiveList->Clear();
	else if(Type == "ListA")
		MessageA = Message.SubString(10, 30);
	else if(Type == "ListB")
	{
		String X;
		X = MessageA + Message.SubString(10, 30).TrimRight();
		ActiveList->Items->Add(X);
		MessageA = "";
	}

	else if(Type == "cbActive")              //Active list
		cbActive->Checked = StrToBool(M);
	else if(Type == "cbATC")
		cbATC->Checked = StrToBool(M);
	else if(Type == "cbRTC")
		cbRTC->Checked = StrToBool(M);
	else if(Type == "ShowLst")
		ActiveList->Visible = StrToBool(M);
	else if(Type == "ATCVis")                    //ATC controls
		ATCControls->Visible = StrToBool(M);
	else if(Type == "KillVis")
		KillATC->Visible = StrToBool(M);
	else if(Type == "StSpCap")
		StartStopBtn->Caption = Message.SubString(10, 10).TrimRight();
	else if(Type == "HdltCap")
		HeadlightBtn->Caption = Message.SubString(10, 25).TrimRight();
	else if(Type == "TrkSpd")
		TrackSpeed->Text = Message.SubString(10, 10).TrimRight(); //Selected loco
	else if(Type == "SigSpd")
		SigSpeed->Text = Message.SubString(10, 10).TrimRight();
	else if(Type == "MonEn")
		MonitorBtn->Enabled = StrToBool(M);
	else if(Type == "ATCEn")
		ATCBtn->Enabled = StrToBool(M);
	else if(Type == "OffEn")
        OffBtn->Enabled = StrToBool(M);
	else if(Type == "DisCtrl")                      //control of Latham signals 4
		DispatcherCtrl->Checked = StrToBool(M);
	else if(Type == "PtCtrl")
		PortCtrl->Checked = StrToBool(M);
	else if(Type == "Sig4P")
		PortCtrl->Enabled = StrToBool(M);
	else if(Type == "Sig4D")
		DispatcherCtrl->Enabled = StrToBool(M);

	else if(Type == "NaAll")                        //Nassau control
		rbNassau->Checked = StrToBool(M);
	else if(Type == "DMain")
		rbDispatcherMain->Checked = StrToBool(M);
	else if(Type == "DAll")
		rbDispatcherAll->Checked = StrToBool(M);
	else if(Type == "NaEn")
		rbNassau->Enabled = StrToBool(M);
	else if(Type == "NaMnEn")
		rbDispatcherAll->Enabled = StrToBool(M);
	else if(Type == "NaAllEn")
		rbDispatcherAll->Enabled = StrToBool(M);


	else if(Type == "HyFltOn")                     //Hyde fleet
		HydeFleetOn->Checked = StrToBool(M);

	else if(Type == "OSLOn")                       //OSS Locks
		rbOSSLocksOn->Checked = StrToBool(M);
	else if(Type == "OSLOff")
		rbOSSLocksOff->Checked = StrToBool(M);

	else if(Type == "Cliff")                        //Cliff control
		rbCliff->Checked = StrToBool(M);
	else if(Type == "DBaCl")
		rbBankCliveden->Checked = StrToBool(M);
	else if(Type == "DBaClCf")
		DispatcherAll->Checked = StrToBool(M);
	else if(Type == "CfEn")
		rbCliff->Enabled = StrToBool(M);
	else if(Type == "BaClEn")
		rbBankCliveden->Enabled = StrToBool(M);
	else if(Type == "AllEn")
		DispatcherAll->Enabled = StrToBool(M);

	else if(Type == "C13AutoC")                   //Cliff auto routes
		rbC13Auto->Checked = StrToBool(M);
	else if(Type == "C31AutoC")
		rbC31Auto->Checked = StrToBool(M);
	else if(Type == "C13AutoE")
		rbC13Auto->Enabled = StrToBool(M);
	else if(Type == "C31AutoE")
		rbC31Auto->Enabled = StrToBool(M);

	else if(Type == "rbYard")                   //Yard control
		rbYard->Checked = StrToBool(M);
	else if(Type == "rbYDis")
		rbYDispatcher->Checked = StrToBool(M);

	else if(Type == "YdFlt")                   //Fleets
		YardFleetOn->Checked = StrToBool(M);
	else if(Type == "PtFlt")
		PortFleetOn->Checked = StrToBool(M);
	else if(Type == "ClFlt")
		CliffFleetOn->Checked = StrToBool(M);

	else if(Type == "HyInOn")                  //Dell, Shore, Hyde & Nassau routing
		HydeOn->Checked = StrToBool(M);
	else if(Type == "HyInOff")
		HydeOff->Checked = StrToBool(M);

	else if(Type == "DSROn")
		DSROn->Checked = StrToBool(M);
	else if(Type == "DSROff")
		DSROff->Checked = StrToBool(M);
	else if(Type == "H30Incl")
		H30Incl->Checked = StrToBool(M);
	else if(Type == "F11Incl")
		F11Incl->Checked = StrToBool(M);
	else if(Type == "P32Incl")
		P32Incl->Checked = StrToBool(M);


	else if(Type == "NaOn")
		NaOn->Checked = StrToBool(M);
	else if(Type == "NaOff")
		NaOff->Checked = StrToBool(M);

	else if(Type == "YYYY" && !Connected)       //Handshake with server
	{
		Status->Text = "Server Busy";
        ClientSocket->Active = false;
	}
	else if(Type == "XXXX")
	{
		Connected = true;
		Status->Text = "Connected";
		Watchdog->Enabled = true;
	}

	else if(Type == "LocoBlk")             //LocoBlock list
	{
		LocoBlk->Text = Message.SubString(10, 26).Trim();
    }
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::CycleTimerTimer(TObject *Sender)
{
	if(DispatcherAll->Checked && ImageNassauCliff->Visible)
	{
		CliffFleetOn->Visible = true;
		CliffLabel->Visible = true;
	}
	else
	{
		CliffFleetOn->Visible = false;
		CliffLabel->Visible = false;
	}
	if(rbBankCliveden->Checked && ImageNassauCliff->Visible)
	{
		rbC13Auto->Visible = true;
		rbC31Auto->Visible = true;
		NormalBtn->Visible = true;
	}
	else if(DispatcherAll->Checked && ImageNassauCliff->Visible)
	{
		rbC13Auto->Visible = true;
		rbC31Auto->Visible = true;
		NormalBtn->Visible = true;
	}
	else
	{
		rbC13Auto->Visible = false;
		rbC31Auto->Visible = false;
		NormalBtn->Visible = false;
	}

	if((rbDispatcherAll->Checked || rbDispatcherMain->Checked) && ImageNassauCliff->Visible)
		NassauRoutes->Visible = true;
	else
	{
		NassauRoutes->Visible = false;
		NaOff->Checked = true;
	}

	if(DSROn->Checked)
	{
		H30Incl->Enabled = true;
		F11Incl->Enabled = true;
		P32Incl->Enabled = true;
	}
	else
	{
		H30Incl->Enabled = false;
		F11Incl->Enabled = false;
		P32Incl->Enabled = false;
		H30Incl->Checked = false;
		F11Incl->Checked = false;
		P32Incl->Checked = false;
	}
}
//---------------------------------------------------------------------------

//Train ID functions

void __fastcall TRemoteDispatcher::TrainClick(TObject *Sender)
{
	Train->Text = "";
	Train->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ImageHydeYardPortMouseDown(TObject *Sender,
	  TMouseButton Button, TShiftState Shift, int X, int Y)
{
	if(Button == mbLeft && ClientSocket->Active && Train->Text != "")
	{
		WriteServer("rdID", "HyYdPt", X, Y, Train->Text);
		Train->Text = "";
		Train->SetFocus();
	}
	else if(Button == mbLeft && ClientSocket->Active && LocoList->Text != "")
	{
		WriteServer("rdLoco", "HyYdPt", X, Y, LocoList->Text + LocoDir);
		LocoList->ItemIndex = -1;
		Train->SetFocus();
	}
	else if(Button == mbLeft && ClientSocket->Active && Train->Text == "")
	{
		WriteServer("rdLClk", "HyYdPt", X, Y, "");
		Train->SetFocus();
	}
	else if(Button == mbRight && ClientSocket->Active)
	{
		WriteServer("rdRClk", "HyYdPt", X, Y, "");
		Train->SetFocus();
	}
}
//---------------------------------------------------------------------------

//Responding to mouse

void __fastcall TRemoteDispatcher::ImageLathamKrulishMouseDown(TObject *Sender,
	  TMouseButton Button, TShiftState Shift, int X, int Y)
{
	if(Button == mbLeft && ClientSocket->Active && Train->Text != "")
	{
		WriteServer("rdID", "LaKr", X, Y, Train->Text);
		Train->Text = "";
		Train->SetFocus();
	}
	else if(Button == mbLeft && ClientSocket->Active && LocoList->Text != "")
	{
		WriteServer("rdLoco", "LaKr", X, Y, LocoList->Text + LocoDir);
		LocoList->ItemIndex = -1;
		Train->SetFocus();
	}
	else if(Button == mbLeft && ClientSocket->Active && Train->Text == "")
	{
		WriteServer("rdLClk", "LaKr", X, Y, "");
		Train->SetFocus();
	}
	else if(Button == mbRight && ClientSocket->Active)
	{
		WriteServer("rdRClk", "LaKr", X, Y, "");
		Train->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ImageNassauCliffMouseDown(TObject *Sender,
	  TMouseButton Button, TShiftState Shift, int X, int Y)
{
	if(Button == mbLeft && ClientSocket->Active && Train->Text != "")
	{
		WriteServer("rdID", "NaCf", X, Y, Train->Text);
		Train->Text = "";
		Train->SetFocus();
	}
	else if(Button == mbLeft && ClientSocket->Active && LocoList->Text != "")
	{
		WriteServer("rdLoco", "NaCf", X, Y, LocoList->Text + LocoDir);
		LocoList->ItemIndex = -1;
		Train->SetFocus();
	}
	else if(Button == mbLeft && ClientSocket->Active && Train->Text == "")
	{
		WriteServer("rdLClk", "NaCf", X, Y, "");
		Train->SetFocus();
	}
	else if(Button == mbRight && ClientSocket->Active)
	{
		WriteServer("rdRClk", "NaCf", X, Y, "");
		Train->SetFocus();
	}

}
//---------------------------------------------------------------------------

void TRemoteDispatcher::WriteServer(String Type, String ImageName, int Col, int Row, String Train)
{
	String Message = AnsiString::StringOfChar(' ', 45);
	Message.Insert(Type, 1);
	Message.Insert(ImageName, 10);
	Message.Insert(Col, 20);
	Message.Insert(Row, 25);
	Message.Insert(Train, 30);
	Message.Insert("##", 40);
	Message = Message.TrimRight();

	ClientSocket->Socket->SendText(Message);
}
//---------------------------------------------------------------------------

void TRemoteDispatcher::SetSignal()
{
	if(!PRRAspects)
	{
		if(Aspect == "Clear")
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 0, true);
		else if(Aspect == "AppMed")
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 1, true);
		else if(Aspect == "Approach")
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 2, true);
		else
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 3, true);  //Stop
	}
	else
	{
		if(Aspect == "Clear")
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 4, true);
		else if(Aspect == "AppMed")
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 5, true);
		else if(Aspect == "Approach")
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 6, true);
		else
			CabSignals->Draw(CabSignal->Canvas, 0, 0, 7, true);  //Restricting
	}
	CabSignal->Repaint();
}
//---------------------------------------------------------------------------

String TRemoteDispatcher::BoolToStr(bool X)
{
	if(X)
		return "True";
	else
		return "False";
}
//---------------------------------------------------------------------------

bool TRemoteDispatcher::StrToBool(String X)
{
	if(X == "True")
		return true;
	else if(X == "False")
		return false;
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::CabSignalClick(TObject *Sender)
{
	PRRAspects = !PRRAspects;
	SetSignal();
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ImageHydeYardPortMouseUp(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
		WriteServer("MouseUp", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ImageLathamKrulishMouseUp(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
		WriteServer("MouseUp", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ImageNassauCliffMouseUp(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
		WriteServer("MouseUp", "", 0, 0, "");
}
//---------------------------------------------------------------------------

//Screen swaps




void __fastcall TRemoteDispatcher::LoadIDsClick(TObject *Sender)
{
	WriteServer("LoadIDs", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ClearIDsClick(TObject *Sender)
{
	WriteServer("ClearIDs", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::SaveIDsClick(TObject *Sender)
{
	WriteServer("SaveIDs", "", 0, 0, "");

}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbForwardClick(TObject *Sender)
{
    LocoDir = "For";
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbReverseClick(TObject *Sender)
{
	LocoDir = "Rev";
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::TestBufferClick(TObject *Sender)
{
	TestBuffer->Lines->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DeleteIDClick(TObject *Sender)
{
	WriteServer("DeleteID", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DeleteLocoClick(TObject *Sender)
{
    WriteServer("DelLoco", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::OffBtnClick(TObject *Sender)
{
	WriteServer("OffBtn", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::OnListClick(TObject *Sender)
{
	WriteServer("OnList", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::OffListClick(TObject *Sender)
{
	WriteServer("OffList", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::cbActiveClick(TObject *Sender)
{
	WriteServer("cbActive", BoolToStr(cbActive->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::cbATCClick(TObject *Sender)
{
	if(cbATC->Checked)
		WriteServer("cbATC", "True", 0, 0, "");
	else
		WriteServer("cbATC", "False", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::cbRTCClick(TObject *Sender)
{
	if(cbRTC->Checked)
		WriteServer("cbRTC", "True", 0, 0, "");
	else
		WriteServer("cbRTC", "False", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ShowListClick(TObject *Sender)
{
	if(ActiveList->Visible)
	{
		ActiveList->Visible = false;
		WriteServer("ShowLst", "False", 0, 0, "");
	}
	else
	{
		ActiveList->Visible = true;
		WriteServer("ShowLst", "True", 0, 0, "");
	}
    Train->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::KillATCClick(TObject *Sender)
{
	WriteServer("KillATC", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::StartStopBtnClick(TObject *Sender)
{
	WriteServer("StStp", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DirectionBtnClick(TObject *Sender)
{
	WriteServer("ATCDir", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ATCOffButtonClick(TObject *Sender)
{
	WriteServer("ATCOff", "", 0, 0, "");
	SelectedTrain->Text = "";
	SelectedLoco->Text = "";
	BlockID->Text = "";
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::HeadlightBtnClick(TObject *Sender)
{
	WriteServer("HdLght", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::HeadlightBtnMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	WriteServer("HornDn", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::HeadlightBtnMouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	WriteServer("HornUp", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DispatcherCtrlClick(TObject *Sender) //Signals 4R and 4l
{
	WriteServer("DisCtrl", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::PortCtrlClick(TObject *Sender)
{
	WriteServer("PtCtrl", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbNassauClick(TObject *Sender)
{
	WriteServer("NaAll", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbDispatcherMainClick(TObject *Sender)
{
	WriteServer("DMain", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbDispatcherAllClick(TObject *Sender)
{
	WriteServer("DAll", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbOSSLocksOnClick(TObject *Sender)
{
	WriteServer("OSLOn", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbOSSLocksOffClick(TObject *Sender)
{
	WriteServer("OSLOff", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbCliffClick(TObject *Sender)
{
	WriteServer("Cliff", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbBankClivedenClick(TObject *Sender)
{
	WriteServer("DBaCl", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DispatcherAllClick(TObject *Sender)
{
	WriteServer("DBaClCf", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbC13AutoClick(TObject *Sender)
{
	WriteServer("C13AutoC", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbC31AutoClick(TObject *Sender)
{
	WriteServer("C31AutoC", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::NormalBtnClick(TObject *Sender)
{
	WriteServer("Normal", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::HydeFleetOnClick(TObject *Sender)
{
	WriteServer("HyFltOn", BoolToStr(HydeFleetOn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbYardClick(TObject *Sender)
{
	WriteServer("rbYard", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::rbYDispatcherClick(TObject *Sender)
{
	WriteServer("rbYDis", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::YardFleetOnClick(TObject *Sender)
{
	WriteServer("YdFltOn",BoolToStr(YardFleetOn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::PortFleetOnClick(TObject *Sender)
{
	WriteServer("PtFltOn",BoolToStr(PortFleetOn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::CliffFleetOnClick(TObject *Sender)
{
	WriteServer("CfFltOn",BoolToStr(CliffFleetOn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::HydeOnClick(TObject *Sender)
{
	WriteServer("HyOn",BoolToStr(HydeOn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::HydeOffClick(TObject *Sender)
{
	WriteServer("HyOff",BoolToStr(HydeOff->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::H30InclClick(TObject *Sender)
{
	WriteServer("H30Incl",BoolToStr(H30Incl->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DSROnClick(TObject *Sender)
{
	WriteServer("DSROn",BoolToStr(DSROn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::DSROffClick(TObject *Sender)
{
	WriteServer("DSROff",BoolToStr(DSROff->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::NaOnClick(TObject *Sender)
{
	WriteServer("NaOn",BoolToStr(NaOn->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::NaOffClick(TObject *Sender)
{
	WriteServer("NaOff",BoolToStr(NaOff->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ResetClick(TObject *Sender)
{
	WriteServer("Reset", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::MonitorBtnClick(TObject *Sender)
{
	WriteServer("MonOn", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::ATCBtnClick(TObject *Sender)
{
	WriteServer("ATCOn", "", 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::F11InclClick(TObject *Sender)
{
	WriteServer("F11Incl",BoolToStr(F11Incl->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

void __fastcall TRemoteDispatcher::P32InclClick(TObject *Sender)
{
	WriteServer("P32Incl",BoolToStr(P32Incl->Checked), 0, 0, "");
}
//---------------------------------------------------------------------------

