package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_151:int = 1;
      
      public static const const_1423:int = 3;
      
      public static const const_457:int = 2;
       
      
      private var var_1768:int;
      
      private var var_1766:int;
      
      private var var_1759:int;
      
      private var var_1761:int;
      
      private var var_37:int;
      
      private var var_452:int;
      
      private var var_1342:int;
      
      private var var_1765:int;
      
      private var var_1008:int;
      
      private var _roomResources:String;
      
      private var var_1677:int;
      
      private var var_1757:int;
      
      private var var_1760:String;
      
      private var var_1767:String;
      
      private var var_1764:int = 0;
      
      private var var_1190:String;
      
      private var _message:String;
      
      private var var_1763:int;
      
      private var var_1758:String;
      
      private var var_1233:int;
      
      private var var_779:String;
      
      private var var_1762:String;
      
      private var var_1456:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1008 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1757;
      }
      
      public function set roomName(param1:String) : void
      {
         var_779 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1677 = param1;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_779;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1761 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_37 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1766;
      }
      
      public function get priority() : int
      {
         return var_1768 + var_1764;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1767;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1456) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1233;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1757 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1342;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1760 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1677;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1761;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1762 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1190 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1765;
      }
      
      public function set priority(param1:int) : void
      {
         var_1768 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1760;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1759 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1767 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1763 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1190;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1342 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1759;
      }
      
      public function set flatId(param1:int) : void
      {
         var_452 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1233 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1456 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1763;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1758 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1456;
      }
      
      public function get reportedUserId() : int
      {
         return var_1008;
      }
      
      public function get flatId() : int
      {
         return var_452;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1762;
      }
      
      public function get reporterUserName() : String
      {
         return var_1758;
      }
   }
}
