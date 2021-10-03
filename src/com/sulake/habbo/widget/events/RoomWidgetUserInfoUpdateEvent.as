package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_242:String = "RWUIUE_PEER";
      
      public static const const_205:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1237:String = "BOT";
      
      public static const const_960:int = 2;
      
      public static const const_1420:int = 0;
      
      public static const const_880:int = 3;
       
      
      private var var_430:String = "";
      
      private var var_1326:String = "";
      
      private var var_2301:Boolean = false;
      
      private var var_1686:int = 0;
      
      private var var_2158:int = 0;
      
      private var var_2298:Boolean = false;
      
      private var var_1328:String = "";
      
      private var var_2299:Boolean = false;
      
      private var var_861:int = 0;
      
      private var var_2300:Boolean = true;
      
      private var var_1117:int = 0;
      
      private var var_2303:Boolean = false;
      
      private var var_1298:Boolean = false;
      
      private var var_2304:Boolean = false;
      
      private var var_2157:int = 0;
      
      private var var_2302:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_289:Array;
      
      private var var_1296:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1690:int = 0;
      
      private var var_2297:Boolean = false;
      
      private var var_2305:int = 0;
      
      private var var_2159:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_289 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2158;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2158 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2301;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2300;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2300 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2299 = param1;
      }
      
      public function get motto() : String
      {
         return var_1326;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2303 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1298;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1326 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2297;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2159;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1298 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2302;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2157 = param1;
      }
      
      public function get badges() : Array
      {
         return var_289;
      }
      
      public function get amIController() : Boolean
      {
         return var_2298;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2298 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2297 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2305 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2159 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1328 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2299;
      }
      
      public function set figure(param1:String) : void
      {
         var_430 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2157;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1296;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2303;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_861 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2305;
      }
      
      public function get realName() : String
      {
         return var_1328;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function set method_1(param1:int) : void
      {
         var_1690 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_289 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2304 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2302 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_861;
      }
      
      public function get method_1() : int
      {
         return var_1690;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1117 = param1;
      }
      
      public function get xp() : int
      {
         return var_1686;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2301 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1117;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2304;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1296 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1686 = param1;
      }
   }
}
