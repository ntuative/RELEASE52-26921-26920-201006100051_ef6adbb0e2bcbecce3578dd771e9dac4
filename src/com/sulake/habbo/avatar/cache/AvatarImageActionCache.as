package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_1678:int;
      
      private var var_137:Map;
      
      public function AvatarImageActionCache()
      {
         super();
         var_137 = new Map();
         setLastAccessTime(getTimer());
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         var_1678 = param1;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
      
      public function getLastAccessTime() : int
      {
         return var_1678;
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return var_137.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         var_137.add(_loc3_,param2);
      }
      
      public function dispose() : void
      {
         debugInfo("[dispose]");
         if(var_137 == null)
         {
            return;
         }
         var_137.dispose();
      }
   }
}
