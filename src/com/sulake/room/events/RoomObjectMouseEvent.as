package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1706:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1669:String = "ROE_MOUSE_ENTER";
      
      public static const const_458:String = "ROE_MOUSE_MOVE";
      
      public static const const_1673:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_239:String = "ROE_MOUSE_CLICK";
      
      public static const const_407:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2058:Boolean;
      
      private var var_2060:Boolean;
      
      private var var_2059:Boolean;
      
      private var var_2061:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_2059 = param4;
         var_2061 = param5;
         var_2058 = param6;
         var_2060 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2060;
      }
      
      public function get altKey() : Boolean
      {
         return var_2059;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2061;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2058;
      }
   }
}
