package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1035:String = "RWOCM_CLUB_MAIN";
      
      public static const const_711:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2147:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_711);
         var_2147 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2147;
      }
   }
}
