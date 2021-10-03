package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1506:int = 2;
      
      public static const const_1261:int = 4;
      
      public static const const_1179:int = 1;
      
      public static const const_1293:int = 3;
       
      
      private var var_1052:int = 0;
      
      private var var_872:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1052;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1052 = param1.readInteger();
         if(var_1052 == 3)
         {
            var_872 = param1.readString();
         }
         else
         {
            var_872 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1052 = 0;
         var_872 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_872;
      }
   }
}
