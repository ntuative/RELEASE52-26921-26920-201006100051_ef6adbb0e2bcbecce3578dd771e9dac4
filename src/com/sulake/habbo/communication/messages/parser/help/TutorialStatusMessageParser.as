package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_996:Boolean;
      
      private var var_995:Boolean;
      
      private var var_997:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_996;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_995;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_997 = param1.readBoolean();
         var_995 = param1.readBoolean();
         var_996 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_997;
      }
      
      public function flush() : Boolean
      {
         var_997 = false;
         var_995 = false;
         var_996 = false;
         return true;
      }
   }
}
