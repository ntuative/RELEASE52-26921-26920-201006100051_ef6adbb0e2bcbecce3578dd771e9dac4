package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatSelectAvatarMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class RoomChatWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_823:int = 10;
      
      private static const const_531:int = 25;
      
      private static const const_1171:int = 6000;
      
      private static const const_1170:int = 9;
      
      private static const const_822:int = 4000;
      
      private static const const_1168:int = 3;
      
      private static const const_105:int = 18;
      
      private static const const_1127:int = 25;
      
      private static const const_1169:int = 1;
      
      private static const const_375:int = 9;
      
      private static const const_530:int = 8;
      
      private static const const_376:int = 0;
      
      private static const const_821:int = (const_530 + const_376) * const_105 + const_105;
       
      
      private var var_961:Number = 1;
      
      private var _disposed:Boolean = false;
      
      private var var_651:int = 18;
      
      private var var_369:IItemListWindow;
      
      private var var_787:int = 0;
      
      private var var_39:IWindowContainer;
      
      private var var_403:Boolean = false;
      
      private var var_211:int = 171.0;
      
      private var var_2309:int = 0;
      
      private var var_1413:Boolean = false;
      
      private var var_145:IWindowContainer;
      
      private var _itemList:Array;
      
      private var var_27:RoomChatHistoryViewer;
      
      private var var_2310:int = 150;
      
      private var var_551:Number = 1;
      
      private var var_68:Array;
      
      private var var_248:Array;
      
      private var var_789:int = 0;
      
      private var var_2311:int;
      
      private var var_788:Point;
      
      private var var_1647:Number = 0;
      
      private var var_22:Component = null;
      
      public function RoomChatWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:int, param6:Component)
      {
         _itemList = new Array();
         var_68 = new Array();
         var_248 = new Array();
         var_788 = new Point();
         super(param1,param2,param3);
         var_2311 = param5;
         var_39 = param1.createWindow("chat_container","",HabboWindowType.const_59,HabboWindowStyle.const_43,HabboWindowParam.const_41,new Rectangle(0,0,200,var_211 + RoomChatHistoryPulldown.const_78),null,0) as IWindowContainer;
         var_39.background = true;
         var_39.color = 33554431;
         var_39.tags.push("room_widget_chat");
         var_369 = param1.createWindow("chat_contentlist","",HabboWindowType.const_1011,HabboWindowStyle.const_41,0 | 0,new Rectangle(0,0,200,var_211),null,0) as IItemListWindow;
         var_39.addChild(var_369);
         var_145 = param1.createWindow("chat_active_content","",HabboWindowType.const_59,HabboWindowStyle.const_41,HabboWindowParam.const_77,new Rectangle(0,0,200,var_211),null,0) as IWindowContainer;
         var_369.addListItem(var_145);
         var_27 = new RoomChatHistoryViewer(this,param1,var_39,param2);
         var_2310 = int(param4.getKey("chat.history.item.max.count","150"));
         var _loc7_:Boolean = int(param4.getKey("chat.history.disabled","0")) == 1 ? true : false;
         if(var_27 != null)
         {
            var_27.disabled = _loc7_;
         }
         if(param6 != null)
         {
            var_22 = param6;
            var_22.registerUpdateReceiver(this,1);
         }
      }
      
      public function onPulldownCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(var_27 != null)
         {
            var_27.hideHistoryViewer();
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetChatUpdateEvent.const_572,onChatMessage);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_264,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_768,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_558,onRoomViewUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return var_39;
      }
      
      public function onItemMouseOver(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      public function resetArea() : void
      {
         if(var_27 == null)
         {
            return;
         }
         animationStop();
         var_211 = const_821 + const_375;
         var_39.height = var_211 + var_27.pulldownBarHeight;
         var_369.width = 0 - 0;
         var_369.height = var_211;
         var_145.width = 0 - 0;
         if(historyViewerActive())
         {
            var_145.height = getTotalContentHeight() + const_375;
         }
         else
         {
            var_145.height = var_211;
         }
         var_369.scrollV = 1;
         if(!historyViewerActive())
         {
            var_27.containerResized(var_39.rectangle);
         }
         purgeItems();
         alignItems();
      }
      
      public function resizeContainerToLowestItem() : void
      {
         var _loc4_:* = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc4_ = _itemList[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_68.length)
         {
            _loc4_ = var_68[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc1_ += const_531;
         _loc1_ = _loc1_ < 0 ? 0 : int(_loc1_);
         var _loc3_:int = var_39.rectangle.bottom;
         stretchAreaBottomTo(var_39.rectangle.top + _loc1_);
         _loc3_ -= var_39.rectangle.bottom;
         if(Math.abs(_loc3_) < RoomChatHistoryViewer.const_877)
         {
            resetArea();
            return;
         }
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc4_ = _itemList[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_68.length)
         {
            _loc4_ = var_68[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         var_1413 = true;
      }
      
      private function processBuffer() : void
      {
         if(var_403)
         {
            return;
         }
         if(false)
         {
            return;
         }
         while(var_68.length > const_1169 || historyViewerActive() && false)
         {
            activateItemFromBuffer();
         }
         var _loc1_:Boolean = false;
         if(false)
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = checkLastItemAllowsAdding(var_68[0]);
         }
         if(_loc1_)
         {
            activateItemFromBuffer();
            var_787 = getTimer() + const_822;
         }
         else
         {
            if(false && false)
            {
               var_651 = getItemSpacing(_itemList["-1"],var_68[0]);
            }
            else
            {
               var_651 = const_105;
            }
            animationStart();
         }
      }
      
      private function setChatItemLocHorizontal(param1:RoomChatItem) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(param1 == null || var_27 == null)
         {
            return;
         }
         var _loc2_:Number = (param1.senderX + var_788.x) * var_961;
         var _loc3_:Number = _loc2_ - param1.width / 2;
         var _loc4_:Number = _loc3_ + param1.width;
         var _loc5_:Number = 0 - const_823;
         var _loc6_:Number = 0 + const_823 - 0;
         var _loc7_:Boolean = _loc3_ >= _loc5_ && _loc3_ <= _loc6_;
         var _loc8_:Boolean = _loc4_ >= _loc5_ && _loc4_ <= _loc6_;
         if(_loc7_ && _loc8_)
         {
            _loc9_ = _loc3_;
            _loc10_ = _loc9_;
         }
         else if(_loc2_ >= 0)
         {
            _loc9_ = _loc6_ - param1.width;
         }
         else
         {
            _loc9_ = _loc5_;
         }
         param1.x = _loc9_ + 0 + var_39.x;
         if(_loc2_ < _loc5_ || _loc2_ > _loc6_)
         {
            param1.hidePointer();
         }
         else
         {
            param1.setPointerOffset(_loc3_ - _loc9_);
         }
      }
      
      public function onItemMouseOut(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      private function checkLastItemAllowsAdding(param1:RoomChatItem) : Boolean
      {
         if(false)
         {
            return true;
         }
         var _loc2_:RoomChatItem = _itemList["-1"];
         if(param1 == null || _loc2_ == null)
         {
            return false;
         }
         if(_loc2_.view == null)
         {
            return true;
         }
         if(var_145.rectangle.bottom - (var_145.y + _loc2_.y + _loc2_.height) <= getItemSpacing(_loc2_,param1))
         {
            return false;
         }
         return true;
      }
      
      public function mouseUp() : void
      {
         var _loc1_:Number = var_39.rectangle.bottom - 0;
         if(_loc1_ < const_821)
         {
            if(_loc1_ <= var_211 + var_39.y)
            {
               if(historyViewerActive())
               {
                  hideHistoryViewer();
               }
               resetArea();
               return;
            }
         }
         if(var_1413 && !historyViewerActive())
         {
            resetArea();
            var_1413 = false;
         }
      }
      
      private function getFreeItemId() : String
      {
         return "chat_" + var_2311.toString() + "_item_" + (var_2309++).toString();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         while(false)
         {
            _loc1_ = var_248.shift();
         }
         var_27.dispose();
         var_27 = null;
         while(false)
         {
            _loc1_ = _itemList.shift();
            _loc1_.dispose();
         }
         while(false)
         {
            _loc1_ = var_68.shift();
            _loc1_.dispose();
         }
         var_39.dispose();
         if(var_22 != null)
         {
            var_22.removeUpdateReceiver(this);
            var_22 = null;
         }
         super.dispose();
         _disposed = true;
      }
      
      private function animationStop() : void
      {
         var_403 = false;
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetChatUpdateEvent.const_572,onChatMessage);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_264,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_768,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_558,onRoomViewUpdate);
      }
      
      public function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(var_27 != null)
         {
            var_27.beginDrag(param1.stageY,true);
         }
      }
      
      private function alignItems() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(var_27 == null)
         {
            return;
         }
         _loc1_ = -1;
         while(_loc1_ >= 0)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemLocHorizontal(_loc2_);
               setChatItemLocVertical(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < _itemList.length)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemRenderable(_loc2_);
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < var_68.length)
         {
            _loc2_ = var_68[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemLocHorizontal(_loc2_);
            }
            _loc1_++;
         }
      }
      
      private function onChatMessage(param1:RoomWidgetChatUpdateEvent) : void
      {
         var _loc2_:RoomChatItem = new RoomChatItem(this,windowManager,assets,getFreeItemId(),localizations);
         _loc2_.define(param1);
         if(var_961 != 1)
         {
            _loc2_.senderX /= var_961;
         }
         _loc2_.senderX -= 0;
         setChatItemLocHorizontal(_loc2_);
         var_68.push(_loc2_);
         processBuffer();
      }
      
      private function setChatItemLocVertical(param1:RoomChatItem) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 != null)
         {
            _loc2_ = _itemList.indexOf(param1);
            _loc3_ = !!historyViewerActive() ? 0 : Number(var_551);
            if(_loc2_ == -1)
            {
               param1.y = getAreaBottom() - (_loc3_ + 1) * const_105 - const_375;
            }
            else
            {
               _loc4_ = _itemList[_loc2_ + 1].aboveLevels;
               if(_loc4_ < 2)
               {
                  param1.y = _itemList[_loc2_ + 1].y - getItemSpacing(param1,_itemList[_loc2_ + 1]);
               }
               else
               {
                  param1.y = _itemList[_loc2_ + 1].y - _loc4_ * const_105;
               }
            }
         }
      }
      
      public function disableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_68.length)
         {
            _loc1_ = var_68[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
      }
      
      private function animationStart() : void
      {
         if(var_403)
         {
            return;
         }
         selectItemsToMove();
         var_403 = true;
      }
      
      public function hideHistoryViewer() : void
      {
         if(var_27 != null)
         {
            var_27.hideHistoryViewer();
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         if(getTimer() > var_787 && var_787 > 0)
         {
            var_787 = -1;
            animationStart();
         }
         if(var_403)
         {
            _loc2_ = param1 / const_1127 * const_1168;
            if(_loc2_ + var_789 > var_651)
            {
               _loc2_ = var_651 - var_789;
            }
            if(_loc2_ > 0)
            {
               moveItemsUp(_loc2_);
               var_789 += _loc2_;
            }
            if(var_789 >= var_651)
            {
               var_651 = const_105;
               var_789 = 0;
               animationStop();
               processBuffer();
               var_787 = getTimer() + const_822;
            }
         }
         if(var_27 != null)
         {
            var_27.update(param1);
         }
      }
      
      public function getTotalContentHeight() : int
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc3_];
            if(_loc1_ != null)
            {
               if(_loc3_ == 0)
               {
                  _loc2_ += const_105;
               }
               else
               {
                  _loc2_ += getItemSpacing(_itemList[_loc3_ - 1],_loc1_);
               }
               _loc2_ += (_loc1_.aboveLevels - 1) * const_105;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         var _loc2_:Rectangle = param1.rect;
         if(param1.scale > 0)
         {
            if(var_1647 == 0)
            {
               var_1647 = param1.scale;
            }
            else
            {
               var_961 = param1.scale / var_1647;
            }
         }
         if(param1.positionDelta != null)
         {
            var_788.x += param1.positionDelta.x / var_961;
            var_788.y += param1.positionDelta.y / var_961;
         }
         if(param1.rect != null)
         {
            if(var_27 == null)
            {
               return;
            }
            var_39.width = _loc2_.width;
            var_39.height = var_211 + var_27.pulldownBarHeight;
            var_369.width = 0 - 0;
            var_369.height = var_211;
            var_369.x = var_39.x;
            var_369.y = var_39.y;
            var_145.width = 0 - 0;
            var_145.height = var_211;
            if(historyViewerActive())
            {
               reAlignItemsToHistoryContent();
            }
            var_27.containerResized(var_39.rectangle,true);
         }
         alignItems();
      }
      
      private function getAreaBottom() : Number
      {
         if(historyViewerActive())
         {
            return var_145.height;
         }
         return var_211 + var_39.y;
      }
      
      private function purgeItems() : void
      {
         var _loc2_:* = null;
         if(historyViewerActive())
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         while(_itemList.length > var_2310)
         {
            _loc2_ = _itemList.shift();
            _loc3_ = var_248.indexOf(_loc2_);
            if(_loc3_ > -1)
            {
               var_248.splice(_loc3_,1);
            }
            if(_loc2_.view != null)
            {
               var_145.removeChild(_loc2_.view);
               _loc2_.hideView();
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
         var _loc4_:Boolean = false;
         _loc1_ = 0;
         for(; _loc1_ < _itemList.length; _loc1_++)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               if(_loc2_.y > -const_531)
               {
                  _loc4_ = true;
               }
               _loc2_.aboveLevels = 1;
               if(_loc2_.view != null)
               {
                  _loc3_ = var_248.indexOf(_loc2_);
                  if(_loc3_ > -1)
                  {
                     var_248.splice(_loc3_,1);
                  }
                  var_145.removeChild(_loc2_.view);
                  _loc2_.hideView();
               }
               continue;
               break;
            }
         }
         if(false)
         {
            _loc4_ = true;
         }
         if(getTotalContentHeight() > const_105 && !_loc4_ && !historyViewerActive())
         {
            if(var_27 != null)
            {
               stretchAreaBottomTo(var_39.y);
               alignItems();
               if(!historyViewerActive())
               {
                  var_27.showHistoryViewer();
               }
               if(!historyViewerVisible())
               {
                  var_27.visible = true;
               }
            }
         }
         else if(historyViewerVisible())
         {
            var_27.visible = false;
         }
      }
      
      public function stretchAreaBottomBy(param1:Number) : void
      {
         var _loc2_:Number = var_39.rectangle.bottom + param1 - 0;
         stretchAreaBottomTo(_loc2_);
      }
      
      private function activateItemFromBuffer() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(false)
         {
            return;
         }
         if(historyViewerMinimized())
         {
            resetArea();
            hideHistoryViewer();
         }
         if(!checkLastItemAllowsAdding(var_68[0]))
         {
            selectItemsToMove();
            moveItemsUp(getItemSpacing(_itemList["-1"],var_68[0]));
            if(!checkLastItemAllowsAdding(var_68[0]))
            {
               var_145.height += const_105;
               if(var_27 != null)
               {
                  var_27.containerResized(var_39.rectangle);
               }
            }
         }
         _loc1_ = var_68.shift();
         if(_loc1_ != null)
         {
            _loc1_.renderView();
            _loc2_ = _loc1_.view;
            if(_loc2_ != null)
            {
               var_145.addChild(_loc2_);
               _loc1_.timestamp = new Date().time;
               _itemList.push(_loc1_);
               _loc3_ = 0;
               if(false)
               {
                  _loc3_ = _itemList["-2"].screenLevel;
                  if(historyViewerActive())
                  {
                     _loc1_.screenLevel = _loc3_ + 1;
                  }
                  else
                  {
                     _loc1_.screenLevel = _loc3_ + Math.max(var_551,1);
                  }
               }
               else
               {
                  _loc1_.screenLevel = 100;
               }
               _loc1_.aboveLevels = var_551;
               if(_loc1_.aboveLevels > const_530 + const_376 + 2)
               {
                  _loc1_.aboveLevels = const_530 + const_376 + 2;
               }
               var_551 = 0;
               setChatItemLocHorizontal(_loc1_);
               setChatItemLocVertical(_loc1_);
               setChatItemRenderable(_loc1_);
            }
         }
      }
      
      public function stretchAreaBottomTo(param1:Number) : void
      {
         var _loc2_:int = var_39.context.getDesktopWindow().height - 0;
         param1 = Math.min(param1,_loc2_);
         var_211 = param1 - 0;
         var_39.height = var_211 + RoomChatHistoryPulldown.const_78;
         if(var_27 != null)
         {
            var_27.containerResized(var_39.rectangle);
         }
      }
      
      public function onItemMouseClick(param1:int, param2:String, param3:int, param4:int, param5:int, param6:WindowMouseEvent) : void
      {
         if(param6.shiftKey)
         {
            if(var_27 != null)
            {
               var_27.toggleHistoryViewer();
            }
            return;
         }
         var _loc7_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_310,param1,param3);
         messageListener.processWidgetMessage(_loc7_);
         var _loc8_:RoomWidgetChatSelectAvatarMessage = new RoomWidgetChatSelectAvatarMessage(RoomWidgetChatSelectAvatarMessage.const_665,param1,param2,param4,param5);
         messageListener.processWidgetMessage(_loc8_);
      }
      
      private function selectItemsToMove() : void
      {
         var _loc4_:* = null;
         if(var_403)
         {
            return;
         }
         purgeItems();
         var_248 = new Array();
         var _loc1_:int = new Date().time;
         var _loc2_:int = 0;
         if(false)
         {
            var_551 = 1;
            return;
         }
         if(historyViewerActive())
         {
            return;
         }
         ++var_551;
         var _loc3_:int = -1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _itemList[_loc3_];
            if(_loc4_.view != null)
            {
               if(_loc4_.screenLevel > const_376 || _loc4_.screenLevel == _loc2_ - 1 || _loc1_ - _loc4_.timestamp >= const_1171)
               {
                  _loc4_.timestamp = _loc1_;
                  _loc2_ = _loc4_.screenLevel;
                  --_loc4_.screenLevel;
                  var_248.push(_loc4_);
               }
            }
            _loc3_--;
         }
      }
      
      public function enableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_68.length)
         {
            _loc1_ = var_68[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
      }
      
      public function reAlignItemsToHistoryContent() : void
      {
         if(historyViewerActive())
         {
            var_145.height = getTotalContentHeight() + const_375;
            alignItems();
         }
      }
      
      private function setChatItemRenderable(param1:RoomChatItem) : void
      {
         if(param1 != null)
         {
            if(param1.y < -const_531)
            {
               if(param1.view != null)
               {
                  var_145.removeChild(param1.view);
                  param1.hideView();
               }
            }
            else if(param1.view == null)
            {
               param1.renderView();
               if(param1.view != null)
               {
                  var_145.addChild(param1.view);
               }
            }
         }
      }
      
      private function historyViewerMinimized() : Boolean
      {
         return true;
      }
      
      private function moveItemsUp(param1:int) : void
      {
         var _loc3_:Boolean = false;
         if(var_248 == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc2_:* = null;
         var _loc4_:int = -1;
         var _loc5_:int = -1;
         while(_loc5_ >= 0)
         {
            _loc2_ = var_248[_loc5_];
            if(_loc2_ != null)
            {
               if(_loc4_ == -1)
               {
                  _loc4_ = _itemList.indexOf(_loc2_);
               }
               else
               {
                  _loc4_++;
               }
               _loc3_ = true;
               if(historyViewerActive())
               {
                  if(_loc2_.y - param1 + _loc2_.height < 0)
                  {
                     _loc3_ = false;
                  }
               }
               if(_loc4_ > 0)
               {
                  if(_itemList[_loc4_ - 1].view != null)
                  {
                     if(_loc2_.y - param1 - _itemList[_loc4_ - 1].y < getItemSpacing(_itemList[_loc4_ - 1],_loc2_))
                     {
                        _loc3_ = false;
                     }
                  }
               }
               if(_loc3_)
               {
                  _loc2_.y -= param1;
               }
            }
            _loc5_--;
         }
      }
      
      private function historyViewerActive() : Boolean
      {
         return var_27 == null ? false : Boolean(var_27.active);
      }
      
      private function getItemSpacing(param1:RoomChatItem, param2:RoomChatItem) : Number
      {
         if(param1.checkOverlap(param2.x,param1.y,param2.width,param2.height))
         {
            return const_105;
         }
         return const_1170;
      }
      
      public function onItemMouseDown(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
         if(historyViewerVisible())
         {
            return;
         }
         if(var_27 != null)
         {
            var_27.beginDrag(param5.stageY);
         }
      }
      
      private function historyViewerVisible() : Boolean
      {
         return var_27 == null ? false : Boolean(var_27.visible);
      }
   }
}
