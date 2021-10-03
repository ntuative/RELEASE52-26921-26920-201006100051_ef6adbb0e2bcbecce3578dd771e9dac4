package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1277:String = "F";
      
      public static const const_1018:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_430:String = "";
      
      private var var_1801:int = 0;
      
      private var var_1689:String = "";
      
      private var var_1688:int = 0;
      
      private var var_1686:int = 0;
      
      private var var_1687:String = "";
      
      private var var_646:String = "";
      
      private var _id:int = 0;
      
      private var var_195:Boolean = false;
      
      private var var_243:int = 0;
      
      private var var_1802:String = "";
      
      private var _name:String = "";
      
      private var var_1690:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_243;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_195)
         {
            var_243 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_195)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1801;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_195)
         {
            var_1688 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1802;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_195)
         {
            var_1687 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_195)
         {
            var_1802 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_195)
         {
            var_1686 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_195)
         {
            var_430 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_195)
         {
            var_1801 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_195)
         {
            var_646 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1688;
      }
      
      public function get groupID() : String
      {
         return var_1687;
      }
      
      public function set method_1(param1:int) : void
      {
         if(!var_195)
         {
            var_1690 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_195)
         {
            var_1689 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function get sex() : String
      {
         return var_646;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get method_1() : int
      {
         return var_1690;
      }
      
      public function get custom() : String
      {
         return var_1689;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_86 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_195)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1686;
      }
   }
}
