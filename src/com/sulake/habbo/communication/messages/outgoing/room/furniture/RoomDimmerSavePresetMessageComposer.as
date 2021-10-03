package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2053:int;
      
      private var var_2052:int;
      
      private var var_2137:Boolean;
      
      private var var_2135:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2136:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2052 = param1;
         var_2053 = param2;
         var_2135 = param3;
         var_2136 = param4;
         var_2137 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2052,var_2053,var_2135,var_2136,int(var_2137)];
      }
      
      public function dispose() : void
      {
      }
   }
}
