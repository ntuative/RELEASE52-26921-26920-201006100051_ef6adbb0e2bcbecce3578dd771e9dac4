package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2238:int;
      
      private var var_1173:int;
      
      private var var_2241:int;
      
      private var _offerId:int;
      
      private var var_2242:int;
      
      private var var_2243:int;
      
      private var var_2244:Boolean;
      
      private var var_2237:int;
      
      private var var_2240:Boolean;
      
      private var var_1306:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1306 = param1.readString();
         var_1173 = param1.readInteger();
         var_2240 = param1.readBoolean();
         var_2244 = param1.readBoolean();
         var_2241 = param1.readInteger();
         var_2237 = param1.readInteger();
         var_2242 = param1.readInteger();
         var_2238 = param1.readInteger();
         var_2243 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2242;
      }
      
      public function get month() : int
      {
         return var_2238;
      }
      
      public function get price() : int
      {
         return var_1173;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2241;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2237;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2240;
      }
      
      public function get day() : int
      {
         return var_2243;
      }
      
      public function get vip() : Boolean
      {
         return var_2244;
      }
      
      public function get productCode() : String
      {
         return var_1306;
      }
   }
}
