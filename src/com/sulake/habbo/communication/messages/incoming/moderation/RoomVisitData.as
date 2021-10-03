package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_779:String;
      
      private var var_2330:int;
      
      private var var_1502:Boolean;
      
      private var _roomId:int;
      
      private var var_2329:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1502 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_779 = param1.readString();
         var_2329 = param1.readInteger();
         var_2330 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1502;
      }
      
      public function get roomName() : String
      {
         return var_779;
      }
      
      public function get enterMinute() : int
      {
         return var_2330;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2329;
      }
   }
}
