package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1245:String = "WN_CREATED";
      
      public static const const_927:String = "WN_DISABLE";
      
      public static const const_856:String = "WN_DEACTIVATED";
      
      public static const const_930:String = "WN_OPENED";
      
      public static const const_996:String = "WN_CLOSED";
      
      public static const const_980:String = "WN_DESTROY";
      
      public static const const_1490:String = "WN_ARRANGED";
      
      public static const const_393:String = "WN_PARENT_RESIZED";
      
      public static const const_1048:String = "WN_ENABLE";
      
      public static const const_835:String = "WN_RELOCATE";
      
      public static const const_971:String = "WN_FOCUS";
      
      public static const const_1042:String = "WN_PARENT_RELOCATED";
      
      public static const const_486:String = "WN_PARAM_UPDATED";
      
      public static const const_681:String = "WN_PARENT_ACTIVATED";
      
      public static const const_171:String = "WN_RESIZED";
      
      public static const const_1038:String = "WN_CLOSE";
      
      public static const const_941:String = "WN_PARENT_REMOVED";
      
      public static const const_296:String = "WN_CHILD_RELOCATED";
      
      public static const const_736:String = "WN_ENABLED";
      
      public static const const_289:String = "WN_CHILD_RESIZED";
      
      public static const const_916:String = "WN_MINIMIZED";
      
      public static const const_622:String = "WN_DISABLED";
      
      public static const const_233:String = "WN_CHILD_ACTIVATED";
      
      public static const const_448:String = "WN_STATE_UPDATED";
      
      public static const const_569:String = "WN_UNSELECTED";
      
      public static const const_497:String = "WN_STYLE_UPDATED";
      
      public static const const_1529:String = "WN_UPDATE";
      
      public static const const_456:String = "WN_PARENT_ADDED";
      
      public static const const_691:String = "WN_RESIZE";
      
      public static const const_692:String = "WN_CHILD_REMOVED";
      
      public static const const_1511:String = "";
      
      public static const const_1033:String = "WN_RESTORED";
      
      public static const const_342:String = "WN_SELECTED";
      
      public static const const_1002:String = "WN_MINIMIZE";
      
      public static const const_977:String = "WN_FOCUSED";
      
      public static const const_1219:String = "WN_LOCK";
      
      public static const const_323:String = "WN_CHILD_ADDED";
      
      public static const const_963:String = "WN_UNFOCUSED";
      
      public static const const_428:String = "WN_RELOCATED";
      
      public static const const_995:String = "WN_DEACTIVATE";
      
      public static const const_1346:String = "WN_CRETAE";
      
      public static const const_1017:String = "WN_RESTORE";
      
      public static const const_314:String = "WN_ACTVATED";
      
      public static const const_1185:String = "WN_LOCKED";
      
      public static const const_387:String = "WN_SELECT";
      
      public static const const_844:String = "WN_MAXIMIZE";
      
      public static const const_939:String = "WN_OPEN";
      
      public static const const_730:String = "WN_UNSELECT";
      
      public static const const_1666:String = "WN_ARRANGE";
      
      public static const const_1298:String = "WN_UNLOCKED";
      
      public static const const_1576:String = "WN_UPDATED";
      
      public static const const_952:String = "WN_ACTIVATE";
      
      public static const const_1418:String = "WN_UNLOCK";
      
      public static const const_1000:String = "WN_MAXIMIZED";
      
      public static const const_921:String = "WN_DESTROYED";
      
      public static const const_929:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1672,cancelable);
      }
   }
}
