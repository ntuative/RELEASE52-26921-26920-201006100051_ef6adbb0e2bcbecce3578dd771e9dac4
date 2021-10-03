package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1975:String;
      
      private var var_430:String;
      
      private var var_614:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_430 = param1;
         var_614 = param2;
         var_1975 = param3;
      }
      
      public function get race() : String
      {
         return var_1975;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get gender() : String
      {
         return var_614;
      }
   }
}
