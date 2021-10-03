package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1530:Array;
      
      private var var_1692:int;
      
      private var var_1908:int;
      
      private var var_1906:int;
      
      private var var_1907:int;
      
      private var _dayOffsets:Array;
      
      private var var_1909:int;
      
      private var var_1531:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1530;
      }
      
      public function get furniTypeId() : int
      {
         return var_1908;
      }
      
      public function get historyLength() : int
      {
         return var_1907;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1906;
      }
      
      public function get offerCount() : int
      {
         return var_1909;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1531;
      }
      
      public function get averagePrice() : int
      {
         return var_1692;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1692 = param1.readInteger();
         var_1909 = param1.readInteger();
         var_1907 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1530 = [];
         var_1531 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1530.push(param1.readInteger());
            var_1531.push(param1.readInteger());
            _loc3_++;
         }
         var_1906 = param1.readInteger();
         var_1908 = param1.readInteger();
         return true;
      }
   }
}
