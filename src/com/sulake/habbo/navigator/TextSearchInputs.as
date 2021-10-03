package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class TextSearchInputs
   {
       
      
      private var var_2463:IButtonWindow;
      
      private var var_785:TextFieldManager;
      
      private var _navigator:HabboNavigator;
      
      private var var_2402:Boolean;
      
      public function TextSearchInputs(param1:HabboNavigator, param2:Boolean, param3:IWindowContainer)
      {
         super();
         _navigator = param1;
         var_2402 = param2;
         var_785 = new TextFieldManager(_navigator,ITextFieldWindow(param3.findChildByName("search_str")),25,searchRooms,_navigator.getText("navigator.search.info"));
         Util.setProc(param3,"search_but",onSearchButtonClick);
      }
      
      public function get searchStr() : TextFieldManager
      {
         return var_785;
      }
      
      private function onSearchButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         searchRooms();
      }
      
      private function searchRooms() : void
      {
         var _loc1_:String = var_785.getText();
         if(_loc1_ == "")
         {
            return;
         }
         _navigator.mainViewCtrl.startSearch(Tabs.const_230,Tabs.const_219,_loc1_);
      }
   }
}
