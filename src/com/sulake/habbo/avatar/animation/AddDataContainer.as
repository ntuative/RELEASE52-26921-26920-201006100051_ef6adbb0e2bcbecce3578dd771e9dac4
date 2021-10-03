package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1656:String;
      
      private var var_1493:String;
      
      private var var_1148:String;
      
      private var var_439:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1656 = String(param1.@align);
         var_1148 = String(param1.@base);
         var_1493 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_439 = Number(_loc2_);
            if(var_439 > 1)
            {
               var_439 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1656;
      }
      
      public function get ink() : String
      {
         return var_1493;
      }
      
      public function get base() : String
      {
         return var_1148;
      }
      
      public function get isBlended() : Boolean
      {
         return var_439 != 1;
      }
      
      public function get blend() : Number
      {
         return var_439;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
