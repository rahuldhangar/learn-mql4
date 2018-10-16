//+------------------------------------------------------------------+
//|                                        12-external-variables.mq4 |
//|                                    Copyright 2018, Rahul Dhangar |
//|                                    https://github.com/rahuld0890 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Rahul Dhangar"
#property link      "https://github.com/rahuld0890"
#property version   "1.00"
#property strict
#property script_show_inputs              //for showing inputs at launch
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

//External variable's value is available from programs property window.
//External variable is declared global, i.e. outside of all functions

extern int a;              //External variable of type: integer
   
void OnStart()
  {
   Alert("Value if a is ", a);
   
  }
//+------------------------------------------------------------------+
