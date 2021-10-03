package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class GetRoomSettingsMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_33:Array;
      
      public function GetRoomSettingsMessageComposer(param1:int)
      {
         var_33 = new Array();
         super();
         var_33.push(param1);
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
