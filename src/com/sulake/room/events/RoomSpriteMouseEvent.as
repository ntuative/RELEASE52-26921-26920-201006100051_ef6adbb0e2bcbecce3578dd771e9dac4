package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2060:Boolean = false;
      
      private var var_2059:Boolean = false;
      
      private var var_2085:String = "";
      
      private var _type:String = "";
      
      private var var_2058:Boolean = false;
      
      private var var_2000:Number = 0;
      
      private var var_2086:Number = 0;
      
      private var var_2087:Number = 0;
      
      private var var_2088:String = "";
      
      private var var_1997:Number = 0;
      
      private var var_2061:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2088 = param2;
         var_2085 = param3;
         var_2086 = param4;
         var_2087 = param5;
         var_2000 = param6;
         var_1997 = param7;
         var_2061 = param8;
         var_2059 = param9;
         var_2058 = param10;
         var_2060 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2061;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2060;
      }
      
      public function get localX() : Number
      {
         return var_2000;
      }
      
      public function get localY() : Number
      {
         return var_1997;
      }
      
      public function get canvasId() : String
      {
         return var_2088;
      }
      
      public function get altKey() : Boolean
      {
         return var_2059;
      }
      
      public function get spriteTag() : String
      {
         return var_2085;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2086;
      }
      
      public function get screenY() : Number
      {
         return var_2087;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2058;
      }
   }
}
