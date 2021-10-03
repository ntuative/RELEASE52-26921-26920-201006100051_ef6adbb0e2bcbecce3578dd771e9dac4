package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1026:String = "price_type_none";
      
      public static const const_405:String = "pricing_model_multi";
      
      public static const const_303:String = "price_type_credits";
      
      public static const const_477:String = "price_type_credits_and_pixels";
      
      public static const const_515:String = "pricing_model_bundle";
      
      public static const const_493:String = "pricing_model_single";
      
      public static const const_663:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1383:String = "pricing_model_unknown";
      
      public static const const_480:String = "price_type_pixels";
       
      
      private var var_2260:int;
      
      private var var_946:int;
      
      private var _offerId:int;
      
      private var var_947:int;
      
      private var var_455:String;
      
      private var var_644:String;
      
      private var var_406:ICatalogPage;
      
      private var var_456:IProductContainer;
      
      private var var_1400:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1400 = param1.localizationId;
         var_946 = param1.priceInCredits;
         var_947 = param1.priceInPixels;
         var_406 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get method_5() : String
      {
         return var_455;
      }
      
      public function get page() : ICatalogPage
      {
         return var_406;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2260 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_456;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_947;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1400 = "";
         var_946 = 0;
         var_947 = 0;
         var_406 = null;
         if(var_456 != null)
         {
            var_456.dispose();
            var_456 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2260;
      }
      
      public function get priceInCredits() : int
      {
         return var_946;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_455 = const_493;
            }
            else
            {
               var_455 = const_405;
            }
         }
         else if(param1.length > 1)
         {
            var_455 = const_515;
         }
         else
         {
            var_455 = const_1383;
         }
      }
      
      public function get priceType() : String
      {
         return var_644;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_455)
         {
            case const_493:
               var_456 = new SingleProductContainer(this,param1);
               break;
            case const_405:
               var_456 = new MultiProductContainer(this,param1);
               break;
            case const_515:
               var_456 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_455);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1400;
      }
      
      private function analyzePriceType() : void
      {
         if(var_946 > 0 && var_947 > 0)
         {
            var_644 = const_477;
         }
         else if(var_946 > 0)
         {
            var_644 = const_303;
         }
         else if(var_947 > 0)
         {
            var_644 = const_480;
         }
         else
         {
            var_644 = const_1026;
         }
      }
   }
}
