package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_430:String;
      
      private var var_1701:int;
      
      private var var_1833:String;
      
      private var var_1044:int;
      
      private var var_1324:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1324;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1324 = param1.readInteger();
         var_1833 = param1.readString();
         var_1701 = param1.readInteger();
         var_430 = param1.readString();
         var_1044 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1833;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get petType() : int
      {
         return var_1044;
      }
      
      public function get level() : int
      {
         return var_1701;
      }
   }
}
