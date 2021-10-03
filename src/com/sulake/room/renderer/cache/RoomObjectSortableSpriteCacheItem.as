package com.sulake.room.renderer.cache
{
   import com.sulake.room.renderer.utils.SortableSprite;
   
   public class RoomObjectSortableSpriteCacheItem
   {
       
      
      private var var_1755:int = -1;
      
      private var var_183:Array;
      
      private var var_1756:int = -1;
      
      public function RoomObjectSortableSpriteCacheItem()
      {
         var_183 = [];
         super();
      }
      
      public function addSprite(param1:SortableSprite) : void
      {
         var_183.push(param1);
      }
      
      public function setSpriteCount(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1 < var_183.length)
         {
            _loc2_ = param1;
            while(_loc2_ < var_183.length)
            {
               _loc3_ = getSprite(_loc2_);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            var_183.splice(param1,0 - param1);
         }
      }
      
      public function get spriteCount() : int
      {
         return var_183.length;
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != var_1755 || param2 != var_1756)
         {
            var_1755 = param1;
            var_1756 = param2;
            return true;
         }
         return false;
      }
      
      public function getSprite(param1:int) : SortableSprite
      {
         return var_183[param1];
      }
      
      public function dispose() : void
      {
         setSpriteCount(0);
      }
   }
}
