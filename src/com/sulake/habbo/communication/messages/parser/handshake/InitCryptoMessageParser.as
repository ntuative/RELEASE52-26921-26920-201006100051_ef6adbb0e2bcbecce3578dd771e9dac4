package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InitCryptoMessageParser implements IMessageParser
   {
       
      
      protected var var_1057:String;
      
      protected var var_2437:Boolean;
      
      protected var var_2353:Boolean;
      
      public function InitCryptoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get isClientEncrypted() : Boolean
      {
         return var_2437;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1057 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var_2353 = _loc2_ > 0 ? true : false;
         return true;
      }
      
      public function get token() : String
      {
         return var_1057;
      }
      
      public function get isServerEncrypted() : Boolean
      {
         return var_2353;
      }
   }
}
