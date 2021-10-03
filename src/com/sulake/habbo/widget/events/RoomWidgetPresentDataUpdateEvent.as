package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_437:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_461:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_84:String = "RWPDUE_CONTENTS";
      
      public static const const_498:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_450:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_70:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_198:String;
      
      private var var_1795:BitmapData;
      
      private var var_157:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_157 = param2;
         var_198 = param3;
         var_29 = param4;
         var_1795 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1795;
      }
      
      public function get text() : String
      {
         return var_198;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
