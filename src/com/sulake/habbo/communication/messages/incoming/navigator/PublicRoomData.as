package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1766:int;
      
      private var var_2190:String;
      
      private var var_1761:int;
      
      private var _disposed:Boolean;
      
      private var var_2189:int;
      
      private var var_2098:String;
      
      private var var_1368:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2098 = param1.readString();
         var_1766 = param1.readInteger();
         var_1761 = param1.readInteger();
         var_2190 = param1.readString();
         var_2189 = param1.readInteger();
         var_1368 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2189;
      }
      
      public function get worldId() : int
      {
         return var_1761;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_2098;
      }
      
      public function get unitPort() : int
      {
         return var_1766;
      }
      
      public function get castLibs() : String
      {
         return var_2190;
      }
      
      public function get nodeId() : int
      {
         return var_1368;
      }
   }
}
