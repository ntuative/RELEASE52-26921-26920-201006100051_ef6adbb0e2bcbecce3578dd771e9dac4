package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2394:Boolean;
      
      private var var_2395:int;
      
      private var var_2396:Boolean;
      
      private var var_1503:String;
      
      private var var_1328:String;
      
      private var var_1865:int;
      
      private var var_1843:String;
      
      private var var_2393:String;
      
      private var var_1842:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1865 = param1.readInteger();
         this.var_1503 = param1.readString();
         this.var_1843 = param1.readString();
         this.var_2394 = param1.readBoolean();
         this.var_2396 = param1.readBoolean();
         param1.readString();
         this.var_2395 = param1.readInteger();
         this.var_1842 = param1.readString();
         this.var_2393 = param1.readString();
         this.var_1328 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1328;
      }
      
      public function get avatarName() : String
      {
         return this.var_1503;
      }
      
      public function get avatarId() : int
      {
         return this.var_1865;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2394;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2393;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1842;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2396;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1843;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2395;
      }
   }
}
