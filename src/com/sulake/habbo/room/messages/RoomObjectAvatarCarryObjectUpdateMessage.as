package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1046:int;
      
      private var var_1267:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1046 = param1;
         var_1267 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1046;
      }
      
      public function get itemName() : String
      {
         return var_1267;
      }
   }
}
