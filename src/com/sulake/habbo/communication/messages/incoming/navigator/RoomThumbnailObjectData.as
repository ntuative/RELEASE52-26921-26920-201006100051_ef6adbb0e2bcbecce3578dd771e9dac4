package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1527:int;
      
      private var var_1528:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1527;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1527 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1527 = this.var_1527;
         _loc1_.var_1528 = this.var_1528;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1528 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1528;
      }
   }
}
