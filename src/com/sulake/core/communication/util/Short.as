package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_777:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_777 = new ByteArray();
         var_777.writeShort(param1);
         var_777.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_777.position = 0;
         if(false)
         {
            _loc1_ = var_777.readShort();
            var_777.position = 0;
         }
         return _loc1_;
      }
   }
}
