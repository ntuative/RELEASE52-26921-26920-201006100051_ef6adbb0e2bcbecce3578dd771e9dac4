package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1251:int;
      
      private var var_1222:int;
      
      private var var_1252:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1251;
      }
      
      public function flush() : Boolean
      {
         var_1222 = 0;
         var_1251 = 0;
         var_1252 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1222;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1251 = param1.readInteger();
         var_1222 = param1.readInteger();
         var_1252 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1252;
      }
   }
}
