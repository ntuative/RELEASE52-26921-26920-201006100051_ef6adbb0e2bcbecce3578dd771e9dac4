package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenConnectionMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int;
      
      private var var_1856:int;
      
      private var var_1855:Boolean;
      
      public function OpenConnectionMessageComposer(param1:Boolean, param2:int, param3:int = 0)
      {
         super();
         _roomId = param2;
         var_1855 = param1;
         var_1856 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [int(var_1855),_roomId,var_1856];
      }
      
      public function dispose() : void
      {
      }
   }
}
