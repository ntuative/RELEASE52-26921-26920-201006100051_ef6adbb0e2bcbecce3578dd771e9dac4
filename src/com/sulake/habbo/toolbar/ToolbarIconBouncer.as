package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2258:Number;
      
      private var var_643:Number = 0;
      
      private var var_2259:Number;
      
      private var var_642:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2258 = param1;
         var_2259 = param2;
      }
      
      public function update() : void
      {
         var_642 += var_2259;
         var_643 += var_642;
         if(var_643 > 0)
         {
            var_643 = 0;
            var_642 = var_2258 * -1 * var_642;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_642 = param1;
         var_643 = 0;
      }
      
      public function get location() : Number
      {
         return var_643;
      }
   }
}
