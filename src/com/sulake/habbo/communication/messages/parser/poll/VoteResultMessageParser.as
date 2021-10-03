package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1209:int;
      
      private var var_1082:String;
      
      private var var_755:Array;
      
      private var var_1021:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_755.slice();
      }
      
      public function flush() : Boolean
      {
         var_1082 = "";
         var_1021 = [];
         var_755 = [];
         var_1209 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1209;
      }
      
      public function get question() : String
      {
         return var_1082;
      }
      
      public function get choices() : Array
      {
         return var_1021.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1082 = param1.readString();
         var_1021 = [];
         var_755 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1021.push(param1.readString());
            var_755.push(param1.readInteger());
            _loc3_++;
         }
         var_1209 = param1.readInteger();
         return true;
      }
   }
}
