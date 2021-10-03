package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UniqueMachineIDParser implements IMessageParser
   {
       
      
      private var var_912:String;
      
      public function UniqueMachineIDParser()
      {
         super();
         var_912 = "";
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_912 = param1.readString();
         return true;
      }
      
      public function get machineID() : String
      {
         return var_912;
      }
      
      public function flush() : Boolean
      {
         var_912 = "";
         return true;
      }
   }
}
