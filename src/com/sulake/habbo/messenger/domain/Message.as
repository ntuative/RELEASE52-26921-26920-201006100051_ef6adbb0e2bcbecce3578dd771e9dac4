package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_647:int = 2;
      
      public static const const_951:int = 6;
      
      public static const const_599:int = 1;
      
      public static const const_656:int = 3;
      
      public static const const_1008:int = 4;
      
      public static const const_658:int = 5;
       
      
      private var var_2100:String;
      
      private var var_1064:int;
      
      private var var_2099:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1064 = param2;
         var_2099 = param3;
         var_2100 = param4;
      }
      
      public function get time() : String
      {
         return var_2100;
      }
      
      public function get senderId() : int
      {
         return var_1064;
      }
      
      public function get messageText() : String
      {
         return var_2099;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
