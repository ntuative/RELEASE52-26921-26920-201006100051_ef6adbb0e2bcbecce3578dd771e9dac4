package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2218:Number = 0.0;
      
      private var var_1754:Number = 0.0;
      
      private var var_1753:Number = 0.0;
      
      private var var_2217:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1754 = param1;
         var_1753 = param2;
         var_2218 = param3;
         var_2217 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1754;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2218;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1753;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2217;
      }
   }
}
