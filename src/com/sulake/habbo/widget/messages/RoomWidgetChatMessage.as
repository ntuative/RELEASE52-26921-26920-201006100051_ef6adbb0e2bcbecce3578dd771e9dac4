package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_130:int = 0;
      
      public static const const_137:int = 1;
      
      public static const const_115:int = 2;
      
      public static const const_677:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1286:int = 0;
      
      private var var_2292:String = "";
      
      private var var_198:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_198 = param2;
         var_1286 = param3;
         var_2292 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2292;
      }
      
      public function get chatType() : int
      {
         return var_1286;
      }
      
      public function get text() : String
      {
         return var_198;
      }
   }
}
