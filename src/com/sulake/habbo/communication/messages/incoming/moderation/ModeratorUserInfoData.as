package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2197:int;
      
      private var var_2198:int;
      
      private var var_2199:int;
      
      private var _userName:String;
      
      private var var_2200:int;
      
      private var var_2196:int;
      
      private var var_2195:int;
      
      private var _userId:int;
      
      private var var_708:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2196 = param1.readInteger();
         var_2200 = param1.readInteger();
         var_708 = param1.readBoolean();
         var_2199 = param1.readInteger();
         var_2198 = param1.readInteger();
         var_2197 = param1.readInteger();
         var_2195 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2195;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_708;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2200;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2198;
      }
      
      public function get cautionCount() : int
      {
         return var_2197;
      }
      
      public function get cfhCount() : int
      {
         return var_2199;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2196;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
