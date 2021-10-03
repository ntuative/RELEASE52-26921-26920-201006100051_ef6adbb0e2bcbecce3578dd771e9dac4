package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_969:LegacyWallGeometry = null;
      
      private var var_656:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_654:TileHeightMap = null;
      
      private var var_2321:String = null;
      
      private var _roomId:int = 0;
      
      private var var_655:SelectedRoomObjectData = null;
      
      private var var_970:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_969 = new LegacyWallGeometry();
         var_970 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_656 != null)
         {
            var_656.dispose();
         }
         var_656 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_654 != null)
         {
            var_654.dispose();
         }
         var_654 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2321 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_969;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_655;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_970;
      }
      
      public function dispose() : void
      {
         if(var_654 != null)
         {
            var_654.dispose();
            var_654 = null;
         }
         if(var_969 != null)
         {
            var_969.dispose();
            var_969 = null;
         }
         if(var_970 != null)
         {
            var_970.dispose();
            var_970 = null;
         }
         if(var_656 != null)
         {
            var_656.dispose();
            var_656 = null;
         }
         if(var_655 != null)
         {
            var_655.dispose();
            var_655 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_654;
      }
      
      public function get worldType() : String
      {
         return var_2321;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_655 != null)
         {
            var_655.dispose();
         }
         var_655 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_656;
      }
   }
}
