package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2219:int;
      
      private var var_1661:int;
      
      private var var_2222:int;
      
      private var var_2220:int;
      
      private var var_2221:int;
      
      private var var_1660:int;
      
      private var var_2108:int;
      
      private var var_1307:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2219;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1661;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2108;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2220;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2221;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1660;
      }
      
      public function get commission() : int
      {
         return var_2222;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1307 = param1.readBoolean();
         var_2222 = param1.readInteger();
         var_1661 = param1.readInteger();
         var_1660 = param1.readInteger();
         var_2220 = param1.readInteger();
         var_2219 = param1.readInteger();
         var_2221 = param1.readInteger();
         var_2108 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1307;
      }
   }
}
