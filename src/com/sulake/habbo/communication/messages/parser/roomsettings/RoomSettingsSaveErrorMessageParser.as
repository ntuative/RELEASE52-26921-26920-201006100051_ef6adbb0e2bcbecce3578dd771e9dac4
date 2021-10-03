package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1596:int = 9;
      
      public static const const_1572:int = 4;
      
      public static const const_1544:int = 1;
      
      public static const const_1281:int = 10;
      
      public static const const_1501:int = 2;
      
      public static const const_1186:int = 7;
      
      public static const const_1290:int = 11;
      
      public static const const_1512:int = 3;
      
      public static const const_1182:int = 8;
      
      public static const const_1209:int = 5;
      
      public static const const_1692:int = 6;
      
      public static const const_1174:int = 12;
       
      
      private var var_2206:String;
      
      private var _roomId:int;
      
      private var var_1222:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2206;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1222 = param1.readInteger();
         var_2206 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1222;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
