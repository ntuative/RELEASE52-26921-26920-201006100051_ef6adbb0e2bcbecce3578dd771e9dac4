package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_662:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_1834:BitmapData;
      
      private var var_1702:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_662,param3,param4);
         var_1702 = param1;
         var_1834 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_1834;
      }
      
      public function get badgeID() : String
      {
         return var_1702;
      }
   }
}
