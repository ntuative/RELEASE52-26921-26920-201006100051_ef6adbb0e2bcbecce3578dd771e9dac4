package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_476:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_671:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_726:String;
      
      private var var_157:int;
      
      private var var_198:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_157 = param2;
         var_198 = param3;
         var_726 = param4;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get text() : String
      {
         return var_198;
      }
      
      public function get colorHex() : String
      {
         return var_726;
      }
   }
}
