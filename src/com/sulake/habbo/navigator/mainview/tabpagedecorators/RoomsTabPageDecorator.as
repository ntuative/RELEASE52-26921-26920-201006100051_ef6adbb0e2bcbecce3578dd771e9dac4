package com.sulake.habbo.navigator.mainview.tabpagedecorators
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class RoomsTabPageDecorator implements ITabPageDecorator
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_472:IDropMenuWindow;
      
      public function RoomsTabPageDecorator(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
      }
      
      private function prepareRoomCategories() : void
      {
         var _loc3_:* = null;
         var _loc1_:Array = new Array();
         _loc1_.push(_navigator.getText("navigator.navisel.popularrooms"));
         _loc1_.push(_navigator.getText("navigator.navisel.highestscore"));
         for each(_loc3_ in _navigator.data.visibleCategories)
         {
            _loc1_.push(_loc3_.nodeName);
         }
         var_472.populate(_loc1_);
         var_472.selection = 0;
      }
      
      private function onChangeFilter(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_62)
         {
            return;
         }
         startSearch();
      }
      
      public function tabSelected() : void
      {
         if(this.var_472 != null)
         {
            this.var_472.selection = 0;
         }
      }
      
      private function startSearch() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc1_:int = var_472 == null ? 0 : int(var_472.selection);
         Logger.log("Room filter changed: " + _loc1_);
         if(_loc1_ == 0)
         {
            _navigator.mainViewCtrl.startSearch(Tabs.const_251,Tabs.const_354);
         }
         else if(_loc1_ == 1)
         {
            _navigator.mainViewCtrl.startSearch(Tabs.const_251,Tabs.const_642);
         }
         else
         {
            _loc2_ = _navigator.data.visibleCategories[_loc1_ - 2];
            if(_loc2_ == null)
            {
               Logger.log("No fc found: " + _loc1_ + ", " + _navigator.data.visibleCategories.length);
               return;
            }
            _loc3_ = _loc2_.nodeId;
            Logger.log("Searching with catId: " + _loc3_);
            _navigator.mainViewCtrl.startSearch(Tabs.const_251,Tabs.const_354,"" + _loc3_);
         }
      }
      
      public function refreshCustomContent(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("rooms_header") as IWindowContainer;
         if(var_472 == null)
         {
            var_472 = IDropMenuWindow(_loc3_.findChildByName("roomCtgFilter"));
            var_472.procedure = onChangeFilter;
            prepareRoomCategories();
         }
         _loc3_.visible = true;
      }
      
      public function refreshFooter(param1:IWindowContainer) : void
      {
      }
      
      public function navigatorOpenedWhileInTab() : void
      {
         startSearch();
      }
   }
}
