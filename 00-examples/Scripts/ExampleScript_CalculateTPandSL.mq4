//+------------------------------------------------------------------+
//|                               ExampleScript_CalculateTPandSL.mq4 |
//|                                                    Rahul Dhangar |
//|                                         https://rahuldhangar.com |
//+------------------------------------------------------------------+
#property copyright "Rahul Dhangar"
#property link      "https://rahuldhangar.com"
#property version   "1.00"
#property strict
#include <CustomFunctions01.mqh>
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   double signalPrice = 1.3418;
   int takeProfitPips = 40;
   int stopLossPips = 20;
   
   if(Ask < signalPrice)
   {
      double takeProfitPrice = CalculateTakeProfit("Buy", takeProfitPips);
      double stopLossPrice = CalculateStopLoss("Buy", stopLossPips);
      
      Alert("");
      Alert("Price is below signal price. Sending BUY order.");
      Alert("Entry Price: " + Ask);
      Alert("Stop Loss Price: " + stopLossPrice);
      Alert("Take Profit Price: " + takeProfitPrice);
   }
   else if(Bid > signalPrice)
   {
      double takeProfitPrice = CalculateTakeProfit("Sell", takeProfitPips);
      double stopLossPrice = CalculateStopLoss("Sell", stopLossPips);
      
      Alert("");
      Alert("Price is above signal price. Sending SELL order.");
      Alert("Entry Price: " + Bid);
      Alert("Stop Loss Price: " + stopLossPrice);
      Alert("Take Profit Price: " + takeProfitPrice);
   }
   
  }
//+------------------------------------------------------------------+
