//+------------------------------------------------------------------+
//|                                            03-Point-variable.mq4 |
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
// Point is a variable which stores number of decimals for a given financial instrument
   double p = Point;
   Alert("This instrument moves ", p, " unit at a time.");
   
  }
//+------------------------------------------------------------------+
