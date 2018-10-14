//+------------------------------------------------------------------+
//|                                      05-predifined-variables.mq4 |
//|                                    Copyright 2018, Rahul Dhangar |
//|                                    https://github.com/rahuld0890 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Rahul Dhangar"
#property link      "https://github.com/rahuld0890"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   //List of Simple Predefined Names of Variables
   
   Alert("Ask = ", Ask);               //last known sell-price of a current security;
   
   Alert("Bid = ", Bid);               //last known buy-price of a current security;
   
   Alert("Bars = ", Bars);             //number of bars on a current chart;
   
   Alert("Point = ", Point);              //point size of a current security in quote currency;
   
   Alert("Digits = ", Digits);            //number of digits after a decimal point in the price of a current security.
   
  }
//+------------------------------------------------------------------+
