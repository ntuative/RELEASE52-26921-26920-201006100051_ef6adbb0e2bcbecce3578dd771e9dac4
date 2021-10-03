package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SelectClubGiftComposer implements IMessageComposer
   {
       
      
      private var var_1306:String;
      
      public function SelectClubGiftComposer(param1:String)
      {
         super();
         var_1306 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1306];
      }
      
      public function dispose() : void
      {
         var_1306 = null;
      }
   }
}
