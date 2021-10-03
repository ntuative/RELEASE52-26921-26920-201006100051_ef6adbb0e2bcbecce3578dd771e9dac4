package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1722:int;
      
      private var var_451:Boolean;
      
      private var var_1723:Boolean;
      
      private var var_821:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1723 = param1.readBoolean();
         if(var_1723)
         {
            var_1722 = param1.readInteger();
            var_451 = param1.readBoolean();
         }
         else
         {
            var_821 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_821 != null)
         {
            var_821.dispose();
            var_821 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1722;
      }
      
      public function get owner() : Boolean
      {
         return var_451;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1723;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_821;
      }
   }
}
