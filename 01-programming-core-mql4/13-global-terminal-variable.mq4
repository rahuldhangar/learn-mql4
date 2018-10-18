//+------------------------------------------------------------------+
//|                                  13-global-terminal-variable.mq4 |
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

//global variable of client terminal and global variable are different variables with similar names
//The scope of global variables is one program, in which variable is declared; while the scope of 
//global variables of client terminal is all programs launched in the client terminal.

//GV (client terminal Global Variable) can be created as well as deleted.
//GV values are stored on hard disk and saved after a client terminal is closed.
//GV exists in client terminal for 4 weeks from the moment of last call.
//During this period if no program calls this variable, it is deleted by client terminal
//GV can only be of double type.



void OnStart()
  {
   double varVal;
   int err;
   varVal = GlobalVariableGet("var_name");               //returns value of "var_name" GV. in case of error, it returns 0
   err = GetLastError();                                 //to get error info, function GetLastError() should be called.
   Alert("varVal = ", varVal);
   Alert("err = ", err);
   
  }
//+------------------------------------------------------------------+
