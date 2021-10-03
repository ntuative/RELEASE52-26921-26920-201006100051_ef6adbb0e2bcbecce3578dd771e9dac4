package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1096:int = 1;
      
      private static const const_1121:int = 3;
      
      private static const const_1095:int = 2;
      
      private static const const_1094:int = 15;
       
      
      private var var_854:int;
      
      private var var_242:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_242 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1095)
         {
            var_242 = new Array();
            var_242.push(const_1096);
            var_854 = const_1094;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_854 > 0)
         {
            --var_854;
         }
         if(var_854 == 0)
         {
            if(false)
            {
               super.setAnimation(var_242.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
