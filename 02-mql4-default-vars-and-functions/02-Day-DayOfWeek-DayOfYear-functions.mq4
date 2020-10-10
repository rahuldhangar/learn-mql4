//+------------------------------------------------------------------+
//|                     02-Day-DayOfWeek-DayOfYear-functions.mq4.mq4 |
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
   int day = Day();              //Day() function returns current day of the month
   int dayofweek = DayOfWeek();              //DayOfWeek() function returns zero-based day of the week (0-Sun,1-Mon,2-Tue,3-Wed,4-Thu,5-Fri,6-Sat)
   int dayofyear = DayOfYear();              //DayOfYear() function returns current day of the year (1 = 1 January, .., 365 = 31 December)
   
   Alert(dayofyear, " days have been passed out of 365 days this year.");
   
   Alert("Its ", day, "th day of the month.");
   
   //now lets use switch statement to output the day of week
   //re-using the code we made in the script created to demonstrate switch statement
   
   switch(dayofweek)
   {
     case 0:
         Alert("Type any Number to know Days");
         break;
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
