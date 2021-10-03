package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1877:int;
      
      private var var_2285:String;
      
      private var var_2281:int;
      
      private var var_2283:int;
      
      private var var_770:Boolean;
      
      private var var_1979:Boolean;
      
      private var var_452:int;
      
      private var var_1232:String;
      
      private var var_1968:int;
      
      private var var_1233:int;
      
      private var _ownerName:String;
      
      private var var_779:String;
      
      private var var_2282:int;
      
      private var var_2284:RoomThumbnailData;
      
      private var var_1970:Boolean;
      
      private var var_664:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_664 = new Array();
         super();
         var_452 = param1.readInteger();
         var_770 = param1.readBoolean();
         var_779 = param1.readString();
         _ownerName = param1.readString();
         var_1968 = param1.readInteger();
         var_1877 = param1.readInteger();
         var_2282 = param1.readInteger();
         var_1232 = param1.readString();
         var_2281 = param1.readInteger();
         var_1970 = param1.readBoolean();
         var_2283 = param1.readInteger();
         var_1233 = param1.readInteger();
         var_2285 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_664.push(_loc4_);
            _loc3_++;
         }
         var_2284 = new RoomThumbnailData(param1);
         var_1979 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2282;
      }
      
      public function get roomName() : String
      {
         return var_779;
      }
      
      public function get userCount() : int
      {
         return var_1877;
      }
      
      public function get score() : int
      {
         return var_2283;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2285;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1970;
      }
      
      public function get tags() : Array
      {
         return var_664;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1979;
      }
      
      public function get event() : Boolean
      {
         return var_770;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_664 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1233;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2281;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2284;
      }
      
      public function get doorMode() : int
      {
         return var_1968;
      }
      
      public function get flatId() : int
      {
         return var_452;
      }
      
      public function get description() : String
      {
         return var_1232;
      }
   }
}
