package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2351:Boolean;
      
      protected var var_1622:Number;
      
      protected var var_2349:Boolean;
      
      protected var _type:int;
      
      protected var var_2340:Boolean;
      
      protected var var_2267:int;
      
      protected var var_2350:Boolean;
      
      protected var var_1445:String;
      
      protected var var_2175:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1559:String;
      
      protected var var_2171:Boolean;
      
      protected var _category:int;
      
      protected var var_2174:int;
      
      protected var var_2357:int;
      
      protected var var_2169:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_2171 = param5;
         var_2350 = param6;
         var_2351 = param7;
         var_2349 = param8;
         var_1445 = param9;
         var_1622 = param10;
         var_2357 = param11;
         var_2169 = param12;
         var_2174 = param13;
         var_2175 = param14;
         var_1559 = param15;
         var_2267 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2340;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1622;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2340 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_2267;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2349;
      }
      
      public function get slotId() : String
      {
         return var_1559;
      }
      
      public function get expires() : int
      {
         return var_2357;
      }
      
      public function get creationYear() : int
      {
         return var_2175;
      }
      
      public function get creationDay() : int
      {
         return var_2169;
      }
      
      public function get stuffData() : String
      {
         return var_1445;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2350;
      }
      
      public function get groupable() : Boolean
      {
         return var_2171;
      }
      
      public function get creationMonth() : int
      {
         return var_2174;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2351;
      }
   }
}
