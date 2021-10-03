package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1782:String;
      
      private var var_452:int;
      
      private var var_1783:String;
      
      private var var_1786:String;
      
      private var var_1784:int;
      
      private var var_1781:String;
      
      private var var_1785:int;
      
      private var var_664:Array;
      
      private var var_1091:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_664 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1091 = false;
            return;
         }
         this.var_1091 = true;
         var_1784 = int(_loc2_);
         var_1783 = param1.readString();
         var_452 = int(param1.readString());
         var_1785 = param1.readInteger();
         var_1782 = param1.readString();
         var_1786 = param1.readString();
         var_1781 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_664.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1785;
      }
      
      public function get eventName() : String
      {
         return var_1782;
      }
      
      public function get eventDescription() : String
      {
         return var_1786;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1783;
      }
      
      public function get tags() : Array
      {
         return var_664;
      }
      
      public function get creationTime() : String
      {
         return var_1781;
      }
      
      public function get exists() : Boolean
      {
         return var_1091;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1784;
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
         this.var_664 = null;
      }
      
      public function get flatId() : int
      {
         return var_452;
      }
   }
}
