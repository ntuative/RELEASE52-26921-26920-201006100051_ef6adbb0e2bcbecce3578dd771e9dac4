package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1467:String = "noconvinfo";
      
      private static const const_1468:String = "messageinput";
       
      
      private var var_1609:int = -1;
      
      private var var_838:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1608:int = -1;
      
      private var var_1345:ITextWindow;
      
      private var var_1344:FriendListTabsView;
      
      private var var_15:IFrameWindow;
      
      private var var_279:IWindowContainer;
      
      private var var_2143:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1344 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_15 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_15.findChildByTag("close").procedure = onWindowClose;
         var_838 = IWindowContainer(var_15.content.findChildByName("main_content"));
         var_279 = IWindowContainer(var_15.content.findChildByName("footer"));
         var_1344.prepare(var_838);
         var_15.procedure = onWindow;
         var_15.content.setParamFlag(HabboWindowParam.const_1027,false);
         var_15.content.setParamFlag(HabboWindowParam.const_1172,true);
         var_15.header.setParamFlag(HabboWindowParam.const_750,false);
         var_15.header.setParamFlag(HabboWindowParam.const_965,true);
         var_15.content.setParamFlag(HabboWindowParam.const_750,false);
         var_15.content.setParamFlag(HabboWindowParam.const_965,true);
         var_15.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1345 = ITextWindow(var_15.findChildByName("info_text"));
         var_1345.text = "";
         _friendList.refreshButton(var_15,"open_edit_ctgs",true,null,0);
         var_15.title.color = 4294623744;
         var_15.title.textColor = 4287851525;
         refresh("prepare");
         var_15.height = 350;
         var_15.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_15.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_33)
         {
            var_1345.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1345.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_15 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_52,HabboToolbarIconEnum.FRIENDLIST,var_15));
         }
         else
         {
            var_15.visible = true;
            var_15.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_15.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1344;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_2143 = true;
         var_279.visible = false;
         var_279.y = Util.getLowestPoint(var_15.content);
         var_279.width = _friendList.tabs.windowWidth;
         var_279.visible = true;
         var_15.content.height = Util.getLowestPoint(var_15.content);
         var_15.content.width = _friendList.tabs.windowWidth - 10;
         var_15.header.width = _friendList.tabs.windowWidth - 10;
         var_15.height = var_15.content.height + 30;
         var_15.width = _friendList.tabs.windowWidth;
         this.var_2143 = false;
         var_15.scaler.setParamFlag(HabboWindowParam.const_588,false);
         var_15.scaler.setParamFlag(HabboWindowParam.const_1006,this._friendList.tabs.findSelectedTab() != null);
         var_15.scaler.setParamFlag(HabboWindowParam.const_750,false);
         var_15.scaler.setParamFlag(HabboWindowParam.const_1027,false);
         var_15.scaler.x = 0 - var_15.scaler.width;
         var_15.scaler.y = 0 - var_15.scaler.height;
         var_1608 = var_15.height;
         var_1609 = var_15.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_15 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_15 == null)
         {
            return;
         }
         var_1344.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_15;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_48 || param2 != var_15)
         {
            return;
         }
         if(this.var_2143)
         {
            return;
         }
         var _loc3_:int = var_1608 == -1 ? 0 : int(0 - var_1608);
         var _loc4_:int = var_1609 == -1 ? 0 : int(0 - var_1609);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_15 != null)
         {
            this.var_15.visible = false;
         }
      }
   }
}
