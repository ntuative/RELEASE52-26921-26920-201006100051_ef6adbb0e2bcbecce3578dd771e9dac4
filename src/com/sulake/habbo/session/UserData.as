package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_430:String = "";
      
      private var var_1689:String = "";
      
      private var var_1688:int = 0;
      
      private var var_1686:int = 0;
      
      private var _type:int = 0;
      
      private var var_1687:String = "";
      
      private var var_646:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1690:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1688 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1687 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_430 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_646 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1688;
      }
      
      public function set method_1(param1:int) : void
      {
         var_1690 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1687;
      }
      
      public function set custom(param1:String) : void
      {
         var_1689 = param1;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get sex() : String
      {
         return var_646;
      }
      
      public function get custom() : String
      {
         return var_1689;
      }
      
      public function get method_1() : int
      {
         return var_1690;
      }
      
      public function set xp(param1:int) : void
      {
         var_1686 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1686;
      }
   }
}
