//+------------------------------------------------------------------+
//|                            04-show-inputs-upon-script-launch.mq4 |
//|                                    Copyright 2018, Rahul Dhangar |
//|                                    https://github.com/rahuld0890 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Rahul Dhangar"
#property link      "https://github.com/rahuld0890"
#property version   "1.00"
#property strict
#property script_show_inputs
//+------------------------------------------------------------------+
//| In this lesson we have added a property on line #10 which enables|
//| us to show input dialog box to accept user inputs to be used     |
//| while executing the script                                       |
//|                                                                  |
//| Script program start function                                    |
//+------------------------------------------------------------------+


// This program asks for tp & sl in pips from user for a buy trade
// and shows the calculated tp & sl if the instrument is bought at CMP

//The extern storage class defines the external variable. extern modifier is indicated before the data type
extern int tp = 10;
extern int sl = 10;

void OnStart()
  {
   double takeProfit = Bid + tp * Point ;             //takeProfit now contains the tp as per user input if a buy trade is taken at cmp
   double stopLoss = Bid - sl * Point ;               //stopLoss now contains the sl as per user input if a buy trade is taken at cmp
   
   Alert("Buy Entry = ", Bid);
   Alert("TP = ", takeProfit);
   Alert("SL = ", stopLoss);
   
  }
//+------------------------------------------------------------------+
