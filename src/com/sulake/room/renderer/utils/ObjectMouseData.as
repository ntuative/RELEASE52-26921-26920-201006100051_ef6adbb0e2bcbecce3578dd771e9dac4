package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_2085:String = "";
      
      private var var_157:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_2085 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_157 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_2085;
      }
      
      public function get objectId() : String
      {
         return var_157;
      }
   }
}
