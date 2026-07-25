
//+------------------------------------------------------------------+
//| SmartGoldFastScalper.mq5                                         |
//| Gold Fast Scalping EA - OOP Architecture                         |
//+------------------------------------------------------------------+

#property strict
#property version   "1.00"


//===============================
// Includes
//===============================

#include "Config/CSettings.mqh"
#include "Core/CEngine.mqh"


//===============================
// Global Objects
//===============================

CSettings Settings;

CEngine Engine;


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
{
   Print("SmartGoldFastScalper Started");

   if(!Engine.Initialize(Settings))
   {
      Print("Engine initialization failed");
      return INIT_FAILED;
   }


   return INIT_SUCCEEDED;
}


//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{
   Engine.Shutdown();

   Print("SmartGoldFastScalper Stopped");
}


//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
{
   Engine.OnTick();
}


//+------------------------------------------------------------------+
