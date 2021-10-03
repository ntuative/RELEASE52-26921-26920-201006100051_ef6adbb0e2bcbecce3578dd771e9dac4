package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class SaveRoomSettingsMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_33:Array;
      
      public function SaveRoomSettingsMessageComposer(param1:SaveableRoomSettingsData)
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_33 = new Array();
         super();
         var_33.push(param1.roomId);
         var_33.push(param1.name);
         var_33.push(param1.description);
         var_33.push(param1.doorMode);
         var_33.push(param1.password !== null ? param1.password : "");
         var_33.push(param1.maximumVisitors);
         var_33.push(param1.categoryId);
         if(param1.tags)
         {
            _loc2_ = [];
            for each(_loc3_ in param1.tags)
            {
               if(_loc3_ && _loc3_ !== "")
               {
                  _loc2_.push(_loc3_);
               }
            }
            var_33.push(_loc2_.length);
            for each(_loc4_ in _loc2_)
            {
               var_33.push(_loc4_);
            }
         }
         else
         {
            var_33.push(0);
         }
         var_33.push(param1.allowPets);
         var_33.push(param1.allowFoodConsume);
         var_33.push(param1.allowWalkThrough);
         var_33.push(param1.hideWalls);
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return var_33;
      }
      
      public function dispose() : void
      {
         var_33 = null;
      }
   }
}
