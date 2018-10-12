//+------------------------------------------------------------------+
//|                                    01-Bid-and-Ask-variabless.mq4 |
//|                                    Copyright 2018, Rahul Dhangar |
//|                                    https://github.com/rahuld0890 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Rahul Dhangar"
#property link      "https://github.com/rahuld0890/learn-mql4"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   /* in this file, I will demonstrate Bid and Ask variables provided by MQL4
      which denotes the current Bid and Ask price of the currency (or other underlying asset)
   */
   double a = Ask;
   double b = Bid;
   
   Alert("Ask = ", a, "Bid = ", b);
   
  }
//+------------------------------------------------------------------+
