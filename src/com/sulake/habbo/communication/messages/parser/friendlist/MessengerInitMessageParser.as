package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2412:int;
      
      private var var_2413:int;
      
      private var var_92:Array;
      
      private var var_247:Array;
      
      private var var_2408:int;
      
      private var var_2409:int;
      
      private var var_2410:int;
      
      private var var_2411:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_92 = new Array();
         this.var_247 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2412;
      }
      
      public function get friends() : Array
      {
         return this.var_247;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2408;
      }
      
      public function get categories() : Array
      {
         return this.var_92;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2413;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2411;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2411 = param1.readInteger();
         this.var_2408 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_2410 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_92.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_247.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2413 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2410;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2409;
      }
   }
}
