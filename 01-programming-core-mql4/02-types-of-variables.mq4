//+------------------------------------------------------------------+
//|                                 Tutorial 02 - Types of Variables |
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

//declaring different types of variables
   int myIntegerVar;               //creating an variable of type: integer
   double myDoubleVar;             //creating a variable of type: double
   bool myBooleanVar;               //creating a variable of type: boolean (true or false)
   string myStringVar;           //creating a variable of type: string

//initializing values to these variables
   myIntegerVar= 10;
   myDoubleVar = 12.66;
   myBooleanVar= true;
   myStringVar = "I am Rahul Dhangar Delhi ";

//Showing the values of these variables in an Alert box
   Alert(myIntegerVar);
   Alert(myDoubleVar);
   Alert(myBooleanVar);
   Alert(myStringVar);

  }
//+------------------------------------------------------------------+
