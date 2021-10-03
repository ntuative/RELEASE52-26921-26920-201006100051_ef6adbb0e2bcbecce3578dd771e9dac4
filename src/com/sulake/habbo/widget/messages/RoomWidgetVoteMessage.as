package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_122:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1226:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_122);
         var_1226 = param1;
      }
      
      public function get vote() : int
      {
         return var_1226;
      }
   }
}
