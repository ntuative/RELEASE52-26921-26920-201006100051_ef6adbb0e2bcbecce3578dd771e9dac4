package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowMouseEvent extends WindowEvent
   {
      
      public static const const_1210:String = "WME_ROLL_OUT";
      
      public static const const_1675:String = "WME_HOVERING;";
      
      public static const const_1575:String = "WME_MIDDLE_DOWN";
      
      public static const const_254:String = "WME_DOUBLE_CLICK";
      
      public static const const_1650:String = "WME_MIDDLE_CLICK";
      
      public static const const_1381:String = "WME_ROLL_OVER";
      
      public static const const_1671:String = "WME_RIGHT_DOWN";
      
      public static const const_1687:String = "WME_RIGHT_CLICK";
      
      public static const WINDOW_EVENT_MOUSE_CLICK:String = "WME_CLICK";
      
      public static const const_1625:String = "WME_RIGHT_UP";
      
      public static const const_257:String = "WME_MOVE";
      
      public static const const_33:String = "WME_OUT";
      
      public static const const_95:String = "WME_UP";
      
      public static const const_1043:String = "WME_WHEEL";
      
      public static const const_452:String = "WME_UP_OUTSIDE";
      
      public static const const_53:String = "WME_DOWN";
      
      public static const WINDOW_EVENT_MOUSE_OVER:String = "WME_OVER";
      
      public static const const_1674:String = "WME_MIDDLE_UP";
       
      
      public var ctrlKey:Boolean;
      
      public var shiftKey:Boolean;
      
      public var localX:Number;
      
      public var localY:Number;
      
      public var altKey:Boolean;
      
      public var buttonDown:Boolean;
      
      public var delta:int;
      
      public var stageX:Number;
      
      public var stageY:Number;
      
      public function WindowMouseEvent(param1:String, param2:IWindow, param3:IWindow, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:int, param13:Boolean = false, param14:Boolean = false)
      {
         _type = param1;
         this.localX = param4;
         this.localY = param5;
         this.stageX = param6;
         this.stageY = param7;
         this.altKey = param8;
         this.ctrlKey = param9;
         this.shiftKey = param10;
         this.buttonDown = param11;
         this.delta = param12;
         super(param1,param2,param3,param13,false);
      }
      
      override public function clone() : Event
      {
         return new WindowMouseEvent(_type,window,related,localX,localY,stageX,stageY,altKey,ctrlKey,shiftKey,buttonDown,delta,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowMouseEvent","type","bubbles","cancelable","window");
      }
   }
}
