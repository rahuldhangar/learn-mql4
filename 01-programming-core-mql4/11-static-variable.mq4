//+------------------------------------------------------------------+
//|                                          11-static-variables.mq4 |
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
   //local variables are stored in a temporary memory part of the corresponding function it is declared
   //but in order to locate a variable which is declared inside a function in a permanent memory, we
   //use static variables by using 'static' modifier
   
   static int a;              //its value won't be lost after exiting the OnStart function
   
   //read more at: https://book.mql4.com/variables/types   
   
  }
//+------------------------------------------------------------------+
