package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_247:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2228:Boolean = false;
      
      private var var_2230:int = 0;
      
      private var var_2231:int = 0;
      
      private var var_1711:int;
      
      private var var_2229:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_247,param6,param7);
         var_2229 = param1;
         var_2231 = param2;
         var_2230 = param3;
         var_2228 = param4;
         var_1711 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1711;
      }
      
      public function get pastPeriods() : int
      {
         return var_2230;
      }
      
      public function get periodsLeft() : int
      {
         return var_2231;
      }
      
      public function get daysLeft() : int
      {
         return var_2229;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2228;
      }
   }
}
