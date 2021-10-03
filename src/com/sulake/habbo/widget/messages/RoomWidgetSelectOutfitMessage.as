package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1001:String = "select_outfit";
       
      
      private var var_1780:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1001);
         var_1780 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1780;
      }
   }
}
