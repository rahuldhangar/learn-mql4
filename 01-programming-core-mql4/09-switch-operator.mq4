//+------------------------------------------------------------------+
//|                                           09-switch-operator.mq4 |
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
   int today = DayOfWeek();               //using default DayOfWeek() function to output the day of the week
   
   switch(today)
   {
      case 1:
         Alert("Its Monday");
         break;
      case 2:
         Alert("Its Tuesday");
         break;
      case 3:
         Alert("Its Wednesday");
         break;
      case 4:
         Alert("Its Thursday");
         break;
      case 5:
         Alert("Its Friday");
         break;
      case 6:
         Alert("Its Saturday");
         break;
      default:
         Alert("Its Sunday");
   }
   
  }
//+------------------------------------------------------------------+
