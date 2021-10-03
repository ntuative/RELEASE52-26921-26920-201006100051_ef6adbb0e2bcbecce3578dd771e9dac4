package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_643:RoomObjectLocationCacheItem = null;
      
      private var var_183:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_643 = new RoomObjectLocationCacheItem(param1);
         var_183 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_643;
      }
      
      public function dispose() : void
      {
         if(var_643 != null)
         {
            var_643.dispose();
            var_643 = null;
         }
         if(var_183 != null)
         {
            var_183.dispose();
            var_183 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_183;
      }
   }
}
