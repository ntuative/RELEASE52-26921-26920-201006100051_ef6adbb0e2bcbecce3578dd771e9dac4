package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_764:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1859:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_764);
         var_1859 = param1;
      }
      
      public function get tag() : String
      {
         return var_1859;
      }
   }
}
