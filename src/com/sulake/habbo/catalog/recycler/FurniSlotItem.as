package com.sulake.habbo.catalog.recycler
{
   public class FurniSlotItem
   {
       
      
      private var var_1747:int = 0;
      
      private var var_2227:String = null;
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      public function FurniSlotItem(param1:int, param2:int, param3:int = 0, param4:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1747 = param3;
         var_2227 = param4;
      }
      
      public function get typeId() : int
      {
         return var_1747;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function get xxxExtra() : String
      {
         return var_2227;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
