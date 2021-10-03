package com.sulake.habbo.notifications
{
   public class HabboNotificationItem
   {
       
      
      private var var_81:HabboNotificationItemStyle;
      
      private var var_20:String;
      
      private var var_22:HabboNotifications;
      
      public function HabboNotificationItem(param1:String, param2:HabboNotificationItemStyle, param3:HabboNotifications)
      {
         super();
         var_20 = param1;
         var_81 = param2;
         var_22 = param3;
      }
      
      public function ExecuteUiLinks() : void
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_81.componentLinks;
         for each(_loc2_ in _loc1_)
         {
            if(var_22 != null)
            {
               var_22.onExecuteLink(_loc2_);
            }
         }
      }
      
      public function get style() : HabboNotificationItemStyle
      {
         return var_81;
      }
      
      public function get content() : String
      {
         return var_20;
      }
   }
}
