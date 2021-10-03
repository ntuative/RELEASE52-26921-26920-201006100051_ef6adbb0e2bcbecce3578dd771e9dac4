package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1121:int = -1;
      
      private static const const_805:int = 20;
      
      private static const const_526:int = 9;
       
      
      private var var_647:Boolean = false;
      
      private var var_242:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_242 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_647)
            {
               var_647 = true;
               var_242 = new Array();
               var_242.push(const_1121);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_647)
            {
               var_647 = false;
               var_242 = new Array();
               var_242.push(const_805);
               var_242.push(const_526 + param1);
               var_242.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
