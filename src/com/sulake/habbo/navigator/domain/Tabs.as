package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_762:int = 6;
      
      public static const const_204:int = 5;
      
      public static const const_642:int = 2;
      
      public static const const_339:int = 9;
      
      public static const const_328:int = 4;
      
      public static const const_251:int = 2;
      
      public static const const_613:int = 4;
      
      public static const const_219:int = 8;
      
      public static const const_628:int = 7;
      
      public static const const_283:int = 3;
      
      public static const const_309:int = 1;
      
      public static const const_230:int = 5;
      
      public static const const_512:int = 12;
      
      public static const const_354:int = 1;
      
      public static const const_674:int = 11;
      
      public static const const_727:int = 3;
      
      public static const const_1523:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_411:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_411 = new Array();
         var_411.push(new Tab(_navigator,const_309,const_512,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_430));
         var_411.push(new Tab(_navigator,const_251,const_354,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_430));
         var_411.push(new Tab(_navigator,const_328,const_674,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_956));
         var_411.push(new Tab(_navigator,const_283,const_204,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_430));
         var_411.push(new Tab(_navigator,const_230,const_219,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_717));
         setSelectedTab(const_309);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_411)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_411)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_411)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_328;
      }
      
      public function get tabs() : Array
      {
         return var_411;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
