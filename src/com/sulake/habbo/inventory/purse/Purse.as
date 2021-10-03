package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2167:Boolean = false;
      
      private var var_2165:int = 0;
      
      private var var_1568:int = 0;
      
      private var var_2166:int = 0;
      
      private var var_1808:Boolean = false;
      
      private var var_1565:int = 0;
      
      private var var_1569:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1565 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2165;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2167;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2167 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1808;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2165 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1568 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1565;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1808 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2166 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1568;
      }
      
      public function get pixelBalance() : int
      {
         return var_2166;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1569 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1569;
      }
   }
}
