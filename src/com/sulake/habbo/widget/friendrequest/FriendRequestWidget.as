package com.sulake.habbo.widget.friendrequest
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetFriendRequestUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserLocationUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetFriendRequestMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetGetUserLocationMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class FriendRequestWidget extends RoomWidgetBase implements IUpdateReceiver
   {
       
      
      private var var_238:Map;
      
      private var _isDisposed:Boolean = false;
      
      private var var_22:Component;
      
      public function FriendRequestWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         super(param1,param2,param3);
         var_22 = param4;
         var_238 = new Map();
      }
      
      public function acceptRequest(param1:int) : void
      {
         if(!messageListener)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetFriendRequestMessage(RoomWidgetFriendRequestMessage.const_716,param1));
         removeRequest(param1);
      }
      
      public function ignoreRequest(param1:int) : void
      {
         removeRequest(param1);
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function checkUpdateNeed() : void
      {
         if(!var_22)
         {
            return;
         }
         if(var_238 && false)
         {
            var_22.registerUpdateReceiver(this,10);
         }
         else
         {
            var_22.removeUpdateReceiver(this);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!var_238)
         {
            return;
         }
         for each(_loc2_ in var_238)
         {
            if(_loc2_)
            {
               _loc3_ = messageListener.processWidgetMessage(new RoomWidgetGetUserLocationMessage(_loc2_.userId)) as RoomWidgetUserLocationUpdateEvent;
               if(_loc3_)
               {
                  _loc2_.targetRect = _loc3_.rectangle;
               }
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetFriendRequestUpdateEvent.const_424,eventHandler);
         param1.removeEventListener(RoomWidgetFriendRequestUpdateEvent.const_440,eventHandler);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(_isDisposed)
         {
            return;
         }
         super.dispose();
         if(var_22)
         {
            var_22.removeUpdateReceiver(this);
            var_22 = null;
         }
         if(var_238)
         {
            for each(_loc1_ in var_238)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_238.dispose();
            var_238 = null;
         }
         _isDisposed = true;
      }
      
      private function eventHandler(param1:RoomWidgetFriendRequestUpdateEvent) : void
      {
         if(!param1)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomWidgetFriendRequestUpdateEvent.const_424:
               var_238.add(param1.requestId,new FriendRequestDialog(this,param1.requestId,param1.userId,param1.userName));
               break;
            case RoomWidgetFriendRequestUpdateEvent.const_440:
               removeRequest(param1.requestId);
         }
         checkUpdateNeed();
      }
      
      private function removeRequest(param1:int) : void
      {
         if(!var_238)
         {
            return;
         }
         var _loc2_:FriendRequestDialog = var_238.getValue(param1) as FriendRequestDialog;
         if(!_loc2_)
         {
            return;
         }
         _loc2_.dispose();
         var_238.remove(param1);
         checkUpdateNeed();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetFriendRequestUpdateEvent.const_424,eventHandler);
         param1.addEventListener(RoomWidgetFriendRequestUpdateEvent.const_440,eventHandler);
         super.registerUpdateEvents(param1);
      }
      
      public function declineRequest(param1:int) : void
      {
         if(!messageListener)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetFriendRequestMessage(RoomWidgetFriendRequestMessage.const_592,param1));
         removeRequest(param1);
      }
   }
}
