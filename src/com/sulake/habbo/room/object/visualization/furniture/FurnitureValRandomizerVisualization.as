package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1132:int = 31;
      
      private static const const_1121:int = 32;
      
      private static const const_527:int = 30;
      
      private static const const_805:int = 20;
      
      private static const const_526:int = 10;
       
      
      private var var_647:Boolean = false;
      
      private var var_242:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_242 = new Array();
         super();
         super.setAnimation(const_527);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!var_647)
            {
               var_647 = true;
               var_242 = new Array();
               var_242.push(const_1132);
               var_242.push(const_1121);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_526)
         {
            if(var_647)
            {
               var_647 = false;
               var_242 = new Array();
               if(_direction == 2)
               {
                  var_242.push(const_805 + 5 - param1);
                  var_242.push(const_526 + 5 - param1);
               }
               else
               {
                  var_242.push(const_805 + param1);
                  var_242.push(const_526 + param1);
               }
               var_242.push(const_527);
               return;
            }
            super.setAnimation(const_527);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
