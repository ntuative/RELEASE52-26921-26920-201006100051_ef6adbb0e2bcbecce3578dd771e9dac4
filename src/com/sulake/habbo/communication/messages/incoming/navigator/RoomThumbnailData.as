package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomThumbnailData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_530:int;
      
      private var _objects:Array;
      
      private var var_440:int;
      
      public function RoomThumbnailData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         _objects = new Array();
         super();
         if(param1 == null)
         {
            return;
         }
         var_440 = param1.readInteger();
         var_530 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new RoomThumbnailObjectData();
            _loc4_.pos = param1.readInteger();
            _loc4_.imgId = param1.readInteger();
            _objects.push(_loc4_);
            _loc3_++;
         }
         if(var_440 == 0)
         {
            setDefaults();
         }
      }
      
      public function get bgImgId() : int
      {
         return var_440;
      }
      
      private function setDefaults() : void
      {
         var_440 = 1;
         var_530 = 0;
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.pos = 4;
         _loc1_.imgId = 1;
         _objects.push(_loc1_);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function getCopy() : RoomThumbnailData
      {
         var _loc2_:* = null;
         var _loc1_:RoomThumbnailData = new RoomThumbnailData(null);
         _loc1_.var_440 = this.var_440;
         _loc1_.var_530 = this.var_530;
         for each(_loc2_ in _objects)
         {
            _loc1_._objects.push(_loc2_.getCopy());
         }
         return _loc1_;
      }
      
      public function set frontImgId(param1:int) : void
      {
         var_530 = param1;
      }
      
      public function set bgImgId(param1:int) : void
      {
         var_440 = param1;
      }
      
      public function get objects() : Array
      {
         return _objects;
      }
      
      public function getAsString() : String
      {
         var _loc2_:* = null;
         var _loc1_:* = var_530 + ";";
         _loc1_ += var_440 + ";";
         for each(_loc2_ in _objects)
         {
            _loc1_ += _loc2_.imgId + "," + _loc2_.pos + ";";
         }
         return _loc1_;
      }
      
      public function get frontImgId() : int
      {
         return var_530;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this._objects = null;
      }
   }
}
