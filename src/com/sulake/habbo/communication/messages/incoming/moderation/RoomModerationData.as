package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_120:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1877:int;
      
      private var var_452:int;
      
      private var var_770:RoomData;
      
      private var var_1882:int;
      
      private var _ownerName:String;
      
      private var var_2306:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_452 = param1.readInteger();
         var_1877 = param1.readInteger();
         var_2306 = param1.readBoolean();
         var_1882 = param1.readInteger();
         _ownerName = param1.readString();
         var_120 = new RoomData(param1);
         var_770 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1877;
      }
      
      public function get event() : RoomData
      {
         return var_770;
      }
      
      public function get room() : RoomData
      {
         return var_120;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_120 != null)
         {
            var_120.dispose();
            var_120 = null;
         }
         if(var_770 != null)
         {
            var_770.dispose();
            var_770 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_452;
      }
      
      public function get ownerId() : int
      {
         return var_1882;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2306;
      }
   }
}
