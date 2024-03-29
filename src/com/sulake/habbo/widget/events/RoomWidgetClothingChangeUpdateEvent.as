package com.sulake.habbo.widget.events
{
   public class RoomWidgetClothingChangeUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_347:String = "RWCCUE_SHOW_GENDER_SELECTION";
      
      public static const const_873:String = "RWCCUE_SHOW_CLOTHING_EDITOR";
      
      public static const const_332:String = "RWCCUE_HIDE_CLOTHING_EDITOR";
       
      
      private var _roomId:int = -1;
      
      private var var_157:int = -1;
      
      private var var_1874:int = -1;
      
      private var _roomCategory:int = -1;
      
      public function RoomWidgetClothingChangeUpdateEvent(param1:String, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_157 = param2;
         var_1874 = param3;
         _roomId = param4;
         _roomCategory = param5;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get objectCategory() : int
      {
         return var_1874;
      }
   }
}
