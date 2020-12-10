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
      Alert("Expert Advisor is not allowed to trade. Enable AutoTrading.");
      return false;
   }
   else if(!IsTradeAllowed(Symbol(),TimeCurrent()))
   {
      Alert("Trading not allowed for specific Symbol and Time.");
      return false;
   }
   return true;
}