package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class SessionCreditBalanceEvent extends Event
   {
      
      public static const const_170:String = "session_credit_balance";
       
      
      private var var_2040:int;
      
      public function SessionCreditBalanceEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_170,param2,param3);
         var_2040 = param1;
      }
      
      public function get credits() : int
      {
         return var_2040;
      }
   }
}
