//+------------------------------------------------------------------+
//|                                   03-operations-on-variables.mq4 |
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
   //Addition Operation
   
   int x = 15;
   int y = 8;
   int z;
   
   z = x + y;
   Alert(z);               //should give 23 as output
   
   //subtraction  Operation
   
   int x = 15;
   int y = 8;
   int z;
   
   z = x - y;
   Alert(z);               //should give 7 as output
   
   //Division Operation
   
   double p = 9.26;
   double q = 2;
   double r;
   
   r = p / q;
   Alert(r);               //should give 4.63 as output
   
   //String variable
   string str1 = "Hey";
   string str2 = " ";
   string str3 = "Buddy";
   string msg;
   
   msg = str1 + str2 + str3;              //should output "Hey Buddy"
   Alert(msg);
   
  }
//+------------------------------------------------------------------+
