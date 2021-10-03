package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1597:String;
      
      private var var_2211:int;
      
      private var var_2209:int;
      
      private var var_2208:int;
      
      private var var_2210:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2211 = param1.readInteger();
         var_2208 = param1.readInteger();
         var_2209 = param1.readInteger();
         var_2210 = param1.readString();
         var_1597 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1597;
      }
      
      public function get hour() : int
      {
         return var_2211;
      }
      
      public function get minute() : int
      {
         return var_2208;
      }
      
      public function get chatterName() : String
      {
         return var_2210;
      }
      
      public function get chatterId() : int
      {
         return var_2209;
      }
   }
}
