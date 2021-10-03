package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_749:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_198:String;
      
      private var var_726:String;
      
      private var var_1544:String;
      
      private var var_157:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_157 = param2;
         var_1544 = param3;
         var_198 = param4;
         var_726 = param5;
         var_29 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1544;
      }
      
      public function get colorHex() : String
      {
         return var_726;
      }
      
      public function get text() : String
      {
         return var_198;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
