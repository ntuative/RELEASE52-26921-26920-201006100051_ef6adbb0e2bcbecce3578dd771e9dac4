package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_702:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1117:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_702);
         var_1117 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1117;
      }
   }
}
