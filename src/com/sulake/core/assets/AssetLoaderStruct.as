package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_699:IAssetLoader;
      
      private var var_1392:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1392 = param1;
         var_699 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_699;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_699 != null)
            {
               if(true)
               {
                  var_699.dispose();
                  var_699 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1392;
      }
   }
}
