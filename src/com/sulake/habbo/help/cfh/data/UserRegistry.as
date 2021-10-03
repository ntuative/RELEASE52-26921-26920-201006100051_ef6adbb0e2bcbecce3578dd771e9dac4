package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1157:int = 80;
       
      
      private var var_543:Map;
      
      private var var_779:String = "";
      
      private var var_1380:Array;
      
      public function UserRegistry()
      {
         var_543 = new Map();
         var_1380 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_543.getValue(var_1380.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_779;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_543.getValue(param1) != null)
         {
            var_543.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_779);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_779 == "")
         {
            var_1380.push(param1);
         }
         var_543.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_543;
      }
      
      public function unregisterRoom() : void
      {
         var_779 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_543.length > const_1157)
         {
            _loc1_ = var_543.getKey(0);
            var_543.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_779 = param1;
         if(var_779 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
