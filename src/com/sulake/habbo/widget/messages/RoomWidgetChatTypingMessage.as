package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_756:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_487:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_756);
         var_487 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_487;
      }
   }
}
