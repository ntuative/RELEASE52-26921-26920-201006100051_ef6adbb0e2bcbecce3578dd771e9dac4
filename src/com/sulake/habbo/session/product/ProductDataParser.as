package com.sulake.habbo.session.product
{
   import com.sulake.core.assets.AssetLibrary;
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class ProductDataParser extends EventDispatcher
   {
      
      public static const const_107:String = "ready";
       
      
      private var var_790:AssetLibrary;
      
      private var var_903:Dictionary;
      
      public function ProductDataParser(param1:String, param2:Dictionary)
      {
         super();
         var_903 = param2;
         var_790 = new AssetLibrary("ProductDataParserAssetLib");
         var _loc3_:AssetLoaderStruct = var_790.loadAssetFromFile(param1,new URLRequest(param1),"text/plain");
         _loc3_.addEventListener(AssetLoaderEvent.const_35,parseProductsData);
      }
      
      private function parseProductsData(param1:Event) : void
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.assetLoader == null || _loc2_.assetLoader.content == null)
         {
            return;
         }
         var _loc3_:String = _loc2_.assetLoader.content as String;
         var _loc4_:Array = new Array();
         var _loc5_:RegExp = /\n\r{1,}|\n{1,}|\r{1,}/mg;
         var _loc6_:RegExp = /^\s+|\s+$/g;
         var _loc7_:RegExp = /\[+?((.)*?)\]/g;
         _loc3_ = _loc3_.replace(/"{1,}/mg,"");
         var _loc8_:Array = _loc3_.split(_loc5_);
         var _loc9_:int = 0;
         for each(_loc10_ in _loc8_)
         {
            _loc11_ = _loc10_.match(_loc7_);
            for each(_loc12_ in _loc11_)
            {
               _loc12_ = _loc12_.replace(/\[{1,}/mg,"");
               _loc12_ = _loc12_.replace(/\]{1,}/mg,"");
               _loc13_ = _loc12_.split(",");
               _loc14_ = _loc13_[0];
               _loc15_ = _loc13_[1];
               _loc16_ = _loc13_[2];
               _loc17_ = _loc13_[3];
               _loc18_ = new ProductData(_loc14_,_loc15_,_loc16_,_loc17_);
               var_903[_loc14_] = _loc18_;
            }
            _loc9_++;
         }
         dispatchEvent(new Event(const_107));
      }
      
      public function dispose() : void
      {
         if(var_790)
         {
            var_790.dispose();
            var_790 = null;
         }
         var_903 = null;
      }
   }
}
