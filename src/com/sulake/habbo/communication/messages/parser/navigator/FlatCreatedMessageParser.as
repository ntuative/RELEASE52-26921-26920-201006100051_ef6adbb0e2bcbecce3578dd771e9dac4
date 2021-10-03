package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_1990:String;
      
      private var var_452:int;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function get flatName() : String
      {
         return var_1990;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_452 = param1.readInteger();
         this.var_1990 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_452 + ", " + this.var_1990);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get flatId() : int
      {
         return var_452;
      }
   }
}
