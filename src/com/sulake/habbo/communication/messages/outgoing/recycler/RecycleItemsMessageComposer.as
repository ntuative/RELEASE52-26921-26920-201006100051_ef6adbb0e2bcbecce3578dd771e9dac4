package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_864:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_864 = new Array();
         var_864.push(param1.length);
         var_864 = var_864.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_864;
      }
   }
}
