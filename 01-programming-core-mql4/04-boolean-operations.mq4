//+------------------------------------------------------------------+
//|                                        04-boolean-operations.mq4 |
//|                                    Copyright 2018, Rahul Dhangar |
//|                         https://github.com/rahuld0890/learn-mql4 |
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
   Alert(8 > 5);              //true
   Alert(50 < 20);               //false
   Alert(5 == 6);             //false
   
   bool compare = 5 > 3;
   Alert(compare);               //true
   
  }
//+------------------------------------------------------------------+
