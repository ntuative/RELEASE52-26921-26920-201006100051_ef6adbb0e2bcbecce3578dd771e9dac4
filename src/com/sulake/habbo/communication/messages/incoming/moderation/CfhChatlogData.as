package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1677:int;
      
      private var var_1008:int;
      
      private var var_1676:int;
      
      private var var_1450:int;
      
      private var var_120:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1450 = param1.readInteger();
         var_1676 = param1.readInteger();
         var_1008 = param1.readInteger();
         var_1677 = param1.readInteger();
         var_120 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1450);
      }
      
      public function get chatRecordId() : int
      {
         return var_1677;
      }
      
      public function get reportedUserId() : int
      {
         return var_1008;
      }
      
      public function get callerUserId() : int
      {
         return var_1676;
      }
      
      public function get callId() : int
      {
         return var_1450;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_120;
      }
   }
}
