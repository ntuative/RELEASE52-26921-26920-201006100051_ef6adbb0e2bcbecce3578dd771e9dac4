package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2041:int = 0;
      
      private var var_1568:int = 0;
      
      private var var_1808:Boolean = false;
      
      private var var_2040:int = 0;
      
      private var var_1813:int = 0;
      
      private var var_1569:int = 0;
      
      private var var_1807:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1568;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1568 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1808 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1568 > 0 || var_1569 > 0;
      }
      
      public function get credits() : int
      {
         return var_2040;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1813 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1569;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1808;
      }
      
      public function get pastClubDays() : int
      {
         return var_1807;
      }
      
      public function get pastVipDays() : int
      {
         return var_1813;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2041 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2041;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1569 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2040 = param1;
      }
   }
}
