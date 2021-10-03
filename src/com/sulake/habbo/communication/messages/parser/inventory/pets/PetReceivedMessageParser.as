package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1004:PetData;
      
      private var var_1458:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1458 = param1.readBoolean();
         var_1004 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1458 + ", " + var_1004.id + ", " + var_1004.name + ", " + pet.figure + ", " + var_1004.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1458;
      }
      
      public function get pet() : PetData
      {
         return var_1004;
      }
   }
}
