package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1454:int = 10;
       
      
      private var var_1510:NavigatorSettingsMessageParser;
      
      private var var_1258:int;
      
      private var var_1869:int;
      
      private var var_1867:Boolean;
      
      private var var_1042:Array;
      
      private var var_857:Dictionary;
      
      private var var_1041:Array;
      
      private var var_2379:int;
      
      private var var_1866:int;
      
      private var var_1865:int;
      
      private var var_1870:int;
      
      private var var_595:PublicRoomShortData;
      
      private var var_407:RoomEventData;
      
      private var var_133:MsgWithRequestId;
      
      private var var_1868:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1871:Boolean;
      
      private var var_199:GuestRoomData;
      
      private var var_711:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1042 = new Array();
         var_1041 = new Array();
         var_857 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1869;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1871;
      }
      
      public function startLoading() : void
      {
         this.var_711 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1871 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_407 != null)
         {
            var_407.dispose();
         }
         var_407 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_133 != null && var_133 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_133 != null && var_133 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_133 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_199;
      }
      
      public function get allCategories() : Array
      {
         return var_1042;
      }
      
      public function onRoomExit() : void
      {
         if(var_407 != null)
         {
            var_407.dispose();
            var_407 = null;
         }
         if(var_595 != null)
         {
            var_595.dispose();
            var_595 = null;
         }
         if(var_199 != null)
         {
            var_199.dispose();
            var_199 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_711 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1510;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_711 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_595 = null;
         var_199 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_595 = param1.publicSpace;
            var_407 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2379 = param1.limit;
         this.var_1258 = param1.favouriteRoomIds.length;
         this.var_857 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_857[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_133 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_595;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1867;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_711 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_199 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_711;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1041;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1042 = param1;
         var_1041 = new Array();
         for each(_loc2_ in var_1042)
         {
            if(_loc2_.visible)
            {
               var_1041.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1866;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1870;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1510 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_133 == null)
         {
            return;
         }
         var_133.dispose();
         var_133 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_407;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_857[param1] = !!param2 ? "yes" : null;
         var_1258 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_133 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1865;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_133 != null && var_133 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1867 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1866 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1868 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_199 != null)
         {
            var_199.dispose();
         }
         var_199 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_199 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1510.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1258 >= var_2379;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1870 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1868;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_199 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1869 = param1;
      }
   }
}
