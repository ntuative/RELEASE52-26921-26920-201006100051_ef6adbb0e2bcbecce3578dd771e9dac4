package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_430:String;
      
      private var var_2371:String;
      
      private var var_2372:int;
      
      private var var_2368:int;
      
      private var var_646:String;
      
      private var var_1328:String;
      
      private var _name:String;
      
      private var var_500:int;
      
      private var var_861:int;
      
      private var var_2369:int;
      
      private var _respectTotal:int;
      
      private var var_2370:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2368;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1328;
      }
      
      public function get customData() : String
      {
         return this.var_2371;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_500;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2372;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2370;
      }
      
      public function get figure() : String
      {
         return this.var_430;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_646;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_430 = param1.readString();
         this.var_646 = param1.readString();
         this.var_2371 = param1.readString();
         this.var_1328 = param1.readString();
         this.var_2369 = param1.readInteger();
         this.var_2370 = param1.readString();
         this.var_2372 = param1.readInteger();
         this.var_2368 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_861 = param1.readInteger();
         this.var_500 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2369;
      }
      
      public function get respectLeft() : int
      {
         return this.var_861;
      }
   }
}
