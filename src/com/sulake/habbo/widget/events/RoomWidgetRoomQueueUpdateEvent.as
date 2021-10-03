package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_444:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_361:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_931:int;
      
      private var var_274:Boolean;
      
      private var var_1707:Boolean;
      
      private var var_1480:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_931 = param2;
         var_1707 = param3;
         var_274 = param4;
         var_1480 = param5;
      }
      
      public function get position() : int
      {
         return var_931;
      }
      
      public function get isActive() : Boolean
      {
         return var_274;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1480;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1707;
      }
   }
}
