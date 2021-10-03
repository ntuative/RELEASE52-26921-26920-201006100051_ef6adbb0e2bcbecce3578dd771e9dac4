package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1873:String;
      
      private var var_1168:String;
      
      private var var_1872:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1872 = param1;
         var_1168 = param2;
         var_1873 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1872,var_1168,var_1873];
      }
      
      public function dispose() : void
      {
      }
   }
}
