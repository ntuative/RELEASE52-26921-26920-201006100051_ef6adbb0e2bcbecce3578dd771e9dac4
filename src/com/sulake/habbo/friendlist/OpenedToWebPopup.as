package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class OpenedToWebPopup
   {
       
      
      private var var_182:Timer;
      
      private var _friendList:HabboFriendList;
      
      private var _alert:IWindowContainer;
      
      public function OpenedToWebPopup(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
      }
      
      private function getOpenedToWebAlert() : IWindowContainer
      {
         var _loc1_:IWindowContainer = IWindowContainer(_friendList.getXmlWindow("opened_to_web_popup"));
         _friendList.refreshButton(_loc1_,"opened_to_web",true,null,0);
         return _loc1_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         if(_alert != null)
         {
            close(null);
         }
         _alert = getOpenedToWebAlert();
         if(var_182 != null)
         {
            var_182.stop();
         }
         var_182 = new Timer(2000,1);
         var_182.addEventListener(TimerEvent.TIMER,close);
         var_182.start();
         _alert.x = param1;
         _alert.y = param2;
      }
      
      private function close(param1:Event) : void
      {
         _alert.destroy();
         _alert = null;
      }
   }
}
