//+------------------------------------------------------------------+
//|                                     10-local-global-varibles.mq4 |
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

//Global variable is a variable declared outside all functions.
//below mentioned variable is a Global variable
int glb = 1;

void OnStart()
  {
   //Local variable is a variable declared within a function and its scope is the body of that function
   //this variable below is a local variable because its declared within OnStart()
   int loc; 
   
  }
//+------------------------------------------------------------------+
