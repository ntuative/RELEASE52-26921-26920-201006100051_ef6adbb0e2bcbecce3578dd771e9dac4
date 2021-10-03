package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1864:String;
      
      private var var_614:String;
      
      private var var_1559:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1559 = param1.readInteger();
         var_1864 = param1.readString();
         var_614 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_614;
      }
      
      public function get figureString() : String
      {
         return var_1864;
      }
      
      public function get slotId() : int
      {
         return var_1559;
      }
   }
}
