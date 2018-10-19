//+------------------------------------------------------------------+
//|                              06-predifined-arrays-timeseries.mq4 |
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
   
   //List of Predefined Names of Arrays-Timeseries
   
   Alert("Time = ", Time);             //opening time of each bar on the current chart;
   
   Alert("Open = ", Open);             //opening price of each bar on the current chart;
   
   Alert("Close = ", Close);             //closing price of each bar on the current chart;
   
   Alert("High = ", High);             //maximal price of each bar on the current chart;
   
   Alert("Low = ", Low);             //minimal price of each bar on the current chart;
   
   Alert("Volume = ", Volume);             //tick volume of each bar on the current chart.
   
   //concepts of "arrays" and "arrays-timeseries" will be described in coming examples.
   
  }
//+------------------------------------------------------------------+
