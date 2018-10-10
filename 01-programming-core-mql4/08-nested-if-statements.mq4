//+------------------------------------------------------------------+
//|                                      08-nested-if-statements.mq4 |
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
   int a = 10;
   int b = 15;
   
   if(a > 20)                  //this condition would fail
   {
      Alert("a is greater than 20");
   }
   else if( b > 20)              //this condition would also fail
   {
      Alert("b is greater than 20");
   }
   else
   {              //this condiion will be true
      Alert("both a and b are less than 20");               //so the program will print this statement
   }
   
  }
//+------------------------------------------------------------------+
