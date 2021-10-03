package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1340:int = 4;
      
      public static const const_707:int = 3;
      
      public static const const_652:int = 2;
      
      public static const const_989:int = 1;
       
      
      private var var_2153:String;
      
      private var _disposed:Boolean;
      
      private var var_1877:int;
      
      private var var_2150:Boolean;
      
      private var var_858:String;
      
      private var var_918:PublicRoomData;
      
      private var var_2152:int;
      
      private var _index:int;
      
      private var var_2149:String;
      
      private var _type:int;
      
      private var var_1859:String;
      
      private var var_919:GuestRoomData;
      
      private var var_2151:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2153 = param1.readString();
         var_2151 = param1.readString();
         var_2150 = param1.readInteger() == 1;
         var_2149 = param1.readString();
         var_858 = param1.readString();
         var_2152 = param1.readInteger();
         var_1877 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_989)
         {
            var_1859 = param1.readString();
         }
         else if(_type == const_707)
         {
            var_918 = new PublicRoomData(param1);
         }
         else if(_type == const_652)
         {
            var_919 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2152;
      }
      
      public function get popupCaption() : String
      {
         return var_2153;
      }
      
      public function get userCount() : int
      {
         return var_1877;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2150;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_989)
         {
            return 0;
         }
         if(this.type == const_652)
         {
            return this.var_919.maxUserCount;
         }
         if(this.type == const_707)
         {
            return this.var_918.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2151;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_919 != null)
         {
            this.var_919.dispose();
            this.var_919 = null;
         }
         if(this.var_918 != null)
         {
            this.var_918.dispose();
            this.var_918 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_919;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2149;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_918;
      }
      
      public function get picRef() : String
      {
         return var_858;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1859;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
