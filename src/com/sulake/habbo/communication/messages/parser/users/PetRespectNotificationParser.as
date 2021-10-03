package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2094:int;
      
      private var var_1291:PetData;
      
      private var var_2146:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_2094;
      }
      
      public function get petData() : PetData
      {
         return var_1291;
      }
      
      public function flush() : Boolean
      {
         var_1291 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2146;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2094 = param1.readInteger();
         var_2146 = param1.readInteger();
         var_1291 = new PetData(param1);
         return true;
      }
   }
}
