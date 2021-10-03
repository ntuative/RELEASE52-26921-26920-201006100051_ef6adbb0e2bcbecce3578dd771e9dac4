package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_452:int;
      
      private var var_1368:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_452;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_452 = param1.readInteger();
         var_1368 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_452 = 0;
         var_1368 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1368;
      }
   }
}
