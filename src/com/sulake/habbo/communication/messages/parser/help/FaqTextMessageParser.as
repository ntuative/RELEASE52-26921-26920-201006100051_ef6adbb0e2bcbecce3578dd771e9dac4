package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1196:int;
      
      private var var_1195:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1196;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1196 = param1.readInteger();
         var_1195 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1195;
      }
      
      public function flush() : Boolean
      {
         var_1196 = -1;
         var_1195 = null;
         return true;
      }
   }
}
