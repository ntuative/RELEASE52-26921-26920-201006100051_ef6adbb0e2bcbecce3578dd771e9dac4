package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_479:int = 0;
      
      public static const const_133:int = 2;
      
      public static const const_164:int = 1;
      
      public static const const_735:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1976:Boolean;
      
      private var var_1981:Boolean;
      
      private var var_2056:int;
      
      private var var_1980:Array;
      
      private var var_2055:int;
      
      private var var_1979:Boolean;
      
      private var var_1232:String;
      
      private var var_1978:int;
      
      private var var_1977:Boolean;
      
      private var var_1968:int;
      
      private var var_1233:int;
      
      private var _roomId:int;
      
      private var var_664:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1978;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1978 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_1977 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_664;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1979;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2055 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1980 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_664 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1976;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1981;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2056;
      }
      
      public function get categoryId() : int
      {
         return var_1233;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1979 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_1977;
      }
      
      public function get controllerCount() : int
      {
         return var_2055;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1980;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1968 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1976 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1981 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2056 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1968;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1233 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1232 = param1;
      }
      
      public function get description() : String
      {
         return var_1232;
      }
   }
}
