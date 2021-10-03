package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1697:Class;
      
      private var var_1696:Class;
      
      private var var_1698:String;
      
      private var var_1176:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1698 = param1;
         var_1696 = param2;
         var_1697 = param3;
         if(rest == null)
         {
            var_1176 = new Array();
         }
         else
         {
            var_1176 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1697;
      }
      
      public function get assetClass() : Class
      {
         return var_1696;
      }
      
      public function get mimeType() : String
      {
         return var_1698;
      }
      
      public function get fileTypes() : Array
      {
         return var_1176;
      }
   }
}
