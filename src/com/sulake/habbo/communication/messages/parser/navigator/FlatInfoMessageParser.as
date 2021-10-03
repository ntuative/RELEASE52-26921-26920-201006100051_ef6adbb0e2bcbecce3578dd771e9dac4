package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_232:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_232 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_232;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_232 = new RoomSettingsFlatInfo();
         var_232.allowFurniMoving = param1.readInteger() == 1;
         var_232.doorMode = param1.readInteger();
         var_232.id = param1.readInteger();
         var_232.ownerName = param1.readString();
         var_232.type = param1.readString();
         var_232.name = param1.readString();
         var_232.description = param1.readString();
         var_232.showOwnerName = param1.readInteger() == 1;
         var_232.allowTrading = param1.readInteger() == 1;
         var_232.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
