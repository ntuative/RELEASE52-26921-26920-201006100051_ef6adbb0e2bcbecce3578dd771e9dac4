package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_1797:int;
      
      private var var_1796:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_1797 = param1;
         var_1796 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_1797,var_1796];
      }
   }
}
