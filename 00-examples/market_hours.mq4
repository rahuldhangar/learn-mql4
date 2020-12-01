#property 		indicator_separate_window
#property		indicator_buffers 4
#property		indicator_color1 Lime
#property		indicator_width1 3
#property		indicator_color2 Red
#property		indicator_width2 3
#property		indicator_color3 Blue
#property		indicator_width3 3
#property		indicator_color4 Yellow
#property		indicator_width4 3
#property 		indicator_maximum 9
#property 		indicator_minimum 0

extern int		LondonOpen		= 10;
extern int		LondonClose		= 18;
extern int		NewYorkOpen		= 15;
extern int		NewYorkClose	= 0;
extern int		SydneyOpen		= 0;
extern int		SydneyClose		= 8;
extern int		TokyoOpen		= 2;
extern int		TokyoClose		= 10;

// Buffers
double dLondonBuffer[];
double dNewYorkBuffer[];
double dSydneyBuffer[];
double dTokyoBuffer[];

int init() {

	IndicatorShortName("");
	
	SetIndexBuffer(0,dLondonBuffer);
	SetIndexLabel(0,"London");
	SetIndexBuffer(1,dNewYorkBuffer);
	SetIndexLabel(1,"New York");
	SetIndexBuffer(2,dSydneyBuffer);
	SetIndexLabel(2,"Sydney");
	SetIndexBuffer(3,dTokyoBuffer);
	SetIndexLabel(3,"Tokyo");
	
	return(0);
}

int start() {

	// Determine number of bars to iterate over
	int iBarsToCalc = Bars - IndicatorCounted();
	if (iBarsToCalc < Bars) iBarsToCalc++;
	
	// Iterate over bars
	for (int i=iBarsToCalc-1;i>=0;i--) {
		
		// Set London Line
		if (isMarketOpen(LondonOpen, LondonClose, Time[i]))
			dLondonBuffer[i] = 8;
		else
			dLondonBuffer[i] = EMPTY_VALUE;
		
		// Set NewYork Line
		if (isMarketOpen(NewYorkOpen, NewYorkClose, Time[i]))
			dNewYorkBuffer[i] = 6;
		else
			dNewYorkBuffer[i] = EMPTY_VALUE;		
			
		// Set Sydney Line
		if (isMarketOpen(SydneyOpen, SydneyClose, Time[i]))
			dSydneyBuffer[i] = 4;
		else
			dSydneyBuffer[i] = EMPTY_VALUE;	
				
		// Set Tokyo Line
		if (isMarketOpen(TokyoOpen, TokyoClose, Time[i]))
			dTokyoBuffer[i] = 2;
		else
			dTokyoBuffer[i] = EMPTY_VALUE;	

	}

}

bool isMarketOpen(int iOpenHour, int iCloseHour, datetime timestamp) {

	int iBarHour = TimeHour(timestamp);
	
	if (iOpenHour < iCloseHour && (iBarHour >= iOpenHour && iBarHour < iCloseHour))
		return(true);
	if (iOpenHour > iCloseHour && (iBarHour >= iOpenHour || iBarHour < iCloseHour))
		return(true);
		
	return(false);
}

