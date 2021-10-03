package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_562:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_269:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_562,param2,param3);
         var_269 = param1;
      }
      
      public function get effects() : Array
      {
         return var_269;
      }
   }
}
