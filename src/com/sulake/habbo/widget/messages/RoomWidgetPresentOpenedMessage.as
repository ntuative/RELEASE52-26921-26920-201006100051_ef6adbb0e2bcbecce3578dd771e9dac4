package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1323:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1405:int;
      
      private var var_1046:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1046 = param2;
         var_1405 = param3;
      }
      
      public function get classId() : int
      {
         return var_1405;
      }
      
      public function get itemType() : String
      {
         return var_1046;
      }
   }
}
