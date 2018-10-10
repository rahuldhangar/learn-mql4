//+------------------------------------------------------------------+
//|                                        07-if-and-else-statem.mq4 |
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
   /* if... else statement is same as in any other similar programming
      languages. Some examples below... */
   int a = 5;
   
   //example 1 if statement
   if(a < 10){
      Alert("a is less than 10");              //this will be printed as a is 5 so the condition is true
   }
   
   //example 2: if with else
   if(a < 10){
      Alert("a is less than 10");
   }
   else
   {
      Alert("a is greater than 10");
   }
      
  }
//+------------------------------------------------------------------+
