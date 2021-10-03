package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1173:int;
      
      private var var_1692:int;
      
      private var var_1693:int = -1;
      
      private var var_149:int;
      
      private var var_1694:int;
      
      private var _offerId:int;
      
      private var var_1174:int;
      
      private var _furniId:int;
      
      private var var_1445:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_1694 = param3;
         var_1445 = param4;
         var_1173 = param5;
         var_149 = param6;
         var_1693 = param7;
         var_1692 = param8;
         var_1174 = param9;
      }
      
      public function get status() : int
      {
         return var_149;
      }
      
      public function get price() : int
      {
         return var_1173;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1693;
      }
      
      public function get offerCount() : int
      {
         return var_1174;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1694;
      }
      
      public function get averagePrice() : int
      {
         return var_1692;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1445;
      }
   }
}
