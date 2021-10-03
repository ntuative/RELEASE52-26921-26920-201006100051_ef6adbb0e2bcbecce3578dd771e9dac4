package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_229:String = "e";
      
      public static const const_86:String = "i";
      
      public static const const_85:String = "s";
       
      
      private var var_1124:String;
      
      private var var_1384:String;
      
      private var var_1383:int;
      
      private var var_1742:int;
      
      private var var_1123:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1384 = param1.readString();
         var_1742 = param1.readInteger();
         var_1124 = param1.readString();
         var_1123 = param1.readInteger();
         var_1383 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1123;
      }
      
      public function get productType() : String
      {
         return var_1384;
      }
      
      public function get expiration() : int
      {
         return var_1383;
      }
      
      public function get furniClassId() : int
      {
         return var_1742;
      }
      
      public function get extraParam() : String
      {
         return var_1124;
      }
   }
}
