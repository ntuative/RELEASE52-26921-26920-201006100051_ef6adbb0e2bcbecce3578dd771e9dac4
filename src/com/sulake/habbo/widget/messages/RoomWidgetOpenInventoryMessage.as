package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_978:String = "inventory_badges";
      
      public static const const_1347:String = "inventory_clothes";
      
      public static const const_1380:String = "inventory_furniture";
      
      public static const const_625:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_891:String = "inventory_effects";
       
      
      private var var_2035:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_625);
         var_2035 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2035;
      }
   }
}
