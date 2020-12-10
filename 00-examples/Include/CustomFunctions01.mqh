//+------------------------------------------------------------------+
//|                                            CustomFunctions01.mqh |
//|                                                    Rahul Dhangar |
//|                                         https://rahuldhangar.com |
//+------------------------------------------------------------------+
#property copyright "Rahul Dhangar"
#property link      "https://rahuldhangar.com"
#property strict

// Function to calculate pip value of current currency pair
double GetPipValue()
{
   if(_Digits >= 4)
   {
      return 0.0001;
   }
   else
   {
      return 0.01;
   }
}

// Function to calculate Take Profit
double CalculateTakeProfit(string orderType, int takeProfitPips)
{
   if(orderType == "Buy")
   {
      return Ask + takeProfitPips * GetPipValue();
   }
   else if(orderType == "Sell")
   {
      return Bid - takeProfitPips * GetPipValue();
   }
   return NULL;
}

// Function to calculate Stop Loss
double CalculateStopLoss(string orderType, int stopLossPips)
{
   if(orderType == "Buy")
   {
      return Ask - stopLossPips * GetPipValue();
   }
   else if(orderType == "Sell")
   {
      return Bid + stopLossPips * GetPipValue();
   }
   return NULL;
}

// Function to check if trading is allowed
bool IsTradingAllowed()
{
   if(!IsTradeAllowed())
   {
      Print("*** Expert Advisor is not allowed to trade. Enable AutoTrading.");
      return false;
   }
   else if(!IsTradeAllowed(Symbol(),TimeCurrent()))
   {
      Print("*** Trading not allowed for specific Symbol and Time.");
      return false;
   }
   
   // Print("SymbolInfoDouble: " + SymbolInfoDouble(NULL,SYMBOL_TRADE_CONTRACT_SIZE));
   // Print("MarketInfo: " + MarketInfo(NULL,MODE_MINLOT));
   
   return true;
}

double OptimalLotSize(double maxRiskPerc, int maxLossInPips)
{
   //double maxRiskPerc = 0.02;
   //double maxLossInPips = 40;
   double accEquity = AccountEquity();   
   double lotSize = MarketInfo(NULL,MODE_LOTSIZE);
   double tickValue = MarketInfo(NULL, MODE_TICKVALUE);
   if(Digits <= 3){
      tickValue /= 100;
   }
   
   double maxLossPerTradeInUSD = accEquity * maxRiskPerc;   
   double maxLossInQuoteCurr = maxLossPerTradeInUSD / tickValue;
   
   double optimalLotSize = NormalizeDouble(maxLossInQuoteCurr / (maxLossInPips * GetPipValue()) / lotSize,2);
   Print("*** accEquity: " + accEquity + " | lotSize: " + lotSize + " | tickValue: " + tickValue + 
         " | maxLossPerTradeInUSD: " + maxLossPerTradeInUSD + " | maxLossInQuoteCurr: " + maxLossInQuoteCurr + 
         " | optimalLotSize: " + optimalLotSize);
   return optimalLotSize;
}

double OptimalLotSize(double maxRiskPerc, double entryPrice, double stopLoss)
{
   int maxLossInPips = MathAbs(entryPrice - stopLoss) / GetPipValue();
   return OptimalLotSize(maxRiskPerc, maxLossInPips);
}

bool CheckOpenOrdersByMagicNum(int magicNum)
{
   int openOrders = OrdersTotal();
   for(int i=0; i<openOrders; i++)
   {
      if(OrderSelect(i,SELECT_BY_POS) == true)
      {
         if(OrderMagicNumber() == magicNum)
         {
            //This expert advisor already sent an order
            return true;
         }
      }
   }
   return false;
}