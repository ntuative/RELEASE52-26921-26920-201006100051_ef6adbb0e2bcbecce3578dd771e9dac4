package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_903:Array;
      
      private var var_946:int;
      
      private var var_1400:String;
      
      private var _offerId:int;
      
      private var var_947:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1400 = param1.readString();
         var_946 = param1.readInteger();
         var_947 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_903 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_903.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_903;
      }
      
      public function get priceInCredits() : int
      {
         return var_946;
      }
      
      public function get localizationId() : String
      {
         return var_1400;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_947;
      }
   }
}
