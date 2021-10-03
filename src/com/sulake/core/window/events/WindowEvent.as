package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_288:String = "WE_CHILD_RESIZED";
      
      public static const const_1410:String = "WE_CLOSE";
      
      public static const const_1393:String = "WE_DESTROY";
      
      public static const const_131:String = "WE_CHANGE";
      
      public static const const_1395:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1540:String = "WE_PARENT_RESIZE";
      
      public static const const_101:String = "WE_UPDATE";
      
      public static const const_1197:String = "WE_MAXIMIZE";
      
      public static const const_388:String = "WE_DESTROYED";
      
      public static const const_1031:String = "WE_UNSELECT";
      
      public static const const_1355:String = "WE_MAXIMIZED";
      
      public static const const_1658:String = "WE_UNLOCKED";
      
      public static const const_420:String = "WE_CHILD_REMOVED";
      
      public static const const_188:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1336:String = "WE_ACTIVATE";
      
      public static const const_291:String = "WE_ENABLED";
      
      public static const const_459:String = "WE_CHILD_RELOCATED";
      
      public static const const_1235:String = "WE_CREATE";
      
      public static const const_532:String = "WE_SELECT";
      
      public static const const_192:String = "";
      
      public static const const_1678:String = "WE_LOCKED";
      
      public static const const_1549:String = "WE_PARENT_RELOCATE";
      
      public static const const_1482:String = "WE_CHILD_REMOVE";
      
      public static const const_1580:String = "WE_CHILD_RELOCATE";
      
      public static const const_1591:String = "WE_LOCK";
      
      public static const const_210:String = "WE_FOCUSED";
      
      public static const const_726:String = "WE_UNSELECTED";
      
      public static const const_940:String = "WE_DEACTIVATED";
      
      public static const const_1248:String = "WE_MINIMIZED";
      
      public static const const_1513:String = "WE_ARRANGED";
      
      public static const const_1621:String = "WE_UNLOCK";
      
      public static const const_1491:String = "WE_ATTACH";
      
      public static const const_1285:String = "WE_OPEN";
      
      public static const const_1310:String = "WE_RESTORE";
      
      public static const const_1617:String = "WE_PARENT_RELOCATED";
      
      public static const const_1289:String = "WE_RELOCATE";
      
      public static const const_1561:String = "WE_CHILD_RESIZE";
      
      public static const const_1663:String = "WE_ARRANGE";
      
      public static const const_1206:String = "WE_OPENED";
      
      public static const const_1304:String = "WE_CLOSED";
      
      public static const const_1510:String = "WE_DETACHED";
      
      public static const const_1547:String = "WE_UPDATED";
      
      public static const const_1406:String = "WE_UNFOCUSED";
      
      public static const const_417:String = "WE_RELOCATED";
      
      public static const const_1316:String = "WE_DEACTIVATE";
      
      public static const const_245:String = "WE_DISABLED";
      
      public static const const_694:String = "WE_CANCEL";
      
      public static const const_722:String = "WE_ENABLE";
      
      public static const const_1242:String = "WE_ACTIVATED";
      
      public static const const_1373:String = "WE_FOCUS";
      
      public static const const_1610:String = "WE_DETACH";
      
      public static const const_1385:String = "WE_RESTORED";
      
      public static const const_1231:String = "WE_UNFOCUS";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_1205:String = "WE_PARENT_RESIZED";
      
      public static const const_1283:String = "WE_CREATED";
      
      public static const const_1629:String = "WE_ATTACHED";
      
      public static const const_1415:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1672:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1444:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1672 = param3;
         var_1444 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1444;
      }
      
      public function get related() : IWindow
      {
         return var_1672;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1444 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
