//+------------------------------------------------------------------+
//|                                                  06-for-loop.mq4 |
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
   for(int i=1; i<=5; i++)             //for loop body is also similar to for loop in c or c++
   {
      Alert("Value of i is: ", i);              //this statement will print the message with incremental value of i
   }   
  }
//+------------------------------------------------------------------+
