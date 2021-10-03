package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1445:String;
      
      private var var_1046:String;
      
      private var var_1953:Boolean;
      
      private var var_1622:int;
      
      private var var_1857:int;
      
      private var var_1956:Boolean;
      
      private var var_1559:String = "";
      
      private var var_1952:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1405:int;
      
      private var var_1954:Boolean;
      
      private var var_2267:int = -1;
      
      private var var_1955:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1857 = param1;
         var_1046 = param2;
         _objId = param3;
         var_1405 = param4;
         _category = param5;
         var_1445 = param6;
         var_1953 = param7;
         var_1952 = param8;
         var_1954 = param9;
         var_1956 = param10;
         var_1955 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1559;
      }
      
      public function get extra() : int
      {
         return var_1622;
      }
      
      public function get classId() : int
      {
         return var_1405;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1956;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1953;
      }
      
      public function get stripId() : int
      {
         return var_1857;
      }
      
      public function get stuffData() : String
      {
         return var_1445;
      }
      
      public function get songId() : int
      {
         return var_2267;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1559 = param1;
         var_1622 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1046;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1955;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1954;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1952;
      }
   }
}
