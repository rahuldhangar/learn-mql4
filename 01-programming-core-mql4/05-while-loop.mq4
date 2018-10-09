//+------------------------------------------------------------------+
//|                                                05-while-loop.mq4 |
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
   int x = 1;
   Alert("Start of while loop");
   while(x <= 5)              //will continue running this loop until x <=5
   {
      Alert(x);
      x++;              //incrementing value of x by 1 with every while loop iteration
   }
   Alert("End of while loop");
  }
//+------------------------------------------------------------------+
