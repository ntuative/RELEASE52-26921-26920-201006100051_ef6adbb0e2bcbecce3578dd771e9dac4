package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1191:int = 2;
      
      public static const const_1676:int = 1;
       
      
      private var var_1812:int;
      
      private var var_1810:int;
      
      private var var_1808:Boolean;
      
      private var var_1811:int;
      
      private var var_1426:String;
      
      private var var_1806:Boolean;
      
      private var var_1813:int;
      
      private var var_1809:int;
      
      private var var_1807:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1810;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1808;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1809;
      }
      
      public function get memberPeriods() : int
      {
         return var_1811;
      }
      
      public function get productName() : String
      {
         return var_1426;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1806;
      }
      
      public function get responseType() : int
      {
         return var_1812;
      }
      
      public function get pastClubDays() : int
      {
         return var_1807;
      }
      
      public function get pastVipDays() : int
      {
         return var_1813;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1426 = param1.readString();
         var_1810 = param1.readInteger();
         var_1811 = param1.readInteger();
         var_1809 = param1.readInteger();
         var_1812 = param1.readInteger();
         var_1806 = param1.readBoolean();
         var_1808 = param1.readBoolean();
         var_1807 = param1.readInteger();
         var_1813 = param1.readInteger();
         return true;
      }
   }
}
