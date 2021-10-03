package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1046:String;
      
      private var var_1844:int;
      
      private var var_2172:int;
      
      private var var_1622:int;
      
      private var var_2175:int;
      
      private var _category:int;
      
      private var var_2459:int;
      
      private var var_2169:int;
      
      private var var_2173:int;
      
      private var var_2170:int;
      
      private var var_2174:int;
      
      private var var_2171:Boolean;
      
      private var var_1445:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1844 = param1;
         var_1046 = param2;
         var_2172 = param3;
         var_2170 = param4;
         _category = param5;
         var_1445 = param6;
         var_1622 = param7;
         var_2173 = param8;
         var_2169 = param9;
         var_2174 = param10;
         var_2175 = param11;
         var_2171 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2170;
      }
      
      public function get extra() : int
      {
         return var_1622;
      }
      
      public function get stuffData() : String
      {
         return var_1445;
      }
      
      public function get groupable() : Boolean
      {
         return var_2171;
      }
      
      public function get creationMonth() : int
      {
         return var_2174;
      }
      
      public function get roomItemID() : int
      {
         return var_2172;
      }
      
      public function get itemType() : String
      {
         return var_1046;
      }
      
      public function get itemID() : int
      {
         return var_1844;
      }
      
      public function get songID() : int
      {
         return var_1622;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2173;
      }
      
      public function get creationYear() : int
      {
         return var_2175;
      }
      
      public function get creationDay() : int
      {
         return var_2169;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
