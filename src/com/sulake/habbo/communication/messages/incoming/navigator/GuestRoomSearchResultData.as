package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomSearchResultData implements IDisposable, MsgWithRequestId
   {
       
      
      private var _searchType:int;
      
      private var _disposed:Boolean;
      
      private var var_1708:String;
      
      private var var_111:Array;
      
      public function GuestRoomSearchResultData(param1:IMessageDataWrapper)
      {
         var_111 = new Array();
         super();
         _searchType = param1.readInteger();
         var_1708 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_111.push(new GuestRoomData(param1));
            _loc3_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get searchType() : int
      {
         return _searchType;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_111 != null)
         {
            for each(_loc1_ in this.var_111)
            {
               _loc1_.dispose();
            }
         }
         this.var_111 = null;
      }
      
      public function get rooms() : Array
      {
         return var_111;
      }
      
      public function get searchParam() : String
      {
         return var_1708;
      }
   }
}
