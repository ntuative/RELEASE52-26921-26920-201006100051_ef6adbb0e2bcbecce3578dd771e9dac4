package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class AcceptBuddyMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_852:Array;
      
      public function AcceptBuddyMessageComposer()
      {
         var_852 = new Array();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function dispose() : void
      {
         this.var_852 = null;
      }
      
      public function addAcceptedRequest(param1:int) : void
      {
         this.var_852.push(param1);
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_852.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_852.length)
         {
            _loc1_.push(this.var_852[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
