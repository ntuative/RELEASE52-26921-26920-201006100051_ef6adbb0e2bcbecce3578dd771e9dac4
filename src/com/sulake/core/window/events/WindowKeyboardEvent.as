package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class WindowKeyboardEvent extends WindowEvent
   {
      
      public static const const_192:String = "";
      
      public static const const_156:String = "WKE_KEY_DOWN";
      
      public static const const_660:String = "WKE_KEY_UP";
       
      
      private var var_770:KeyboardEvent;
      
      public function WindowKeyboardEvent(param1:String, param2:Event, param3:IWindow, param4:IWindow, param5:Boolean = false, param6:Boolean = false)
      {
         _type = param1;
         var_770 = KeyboardEvent(param2);
         super(param1,param3,param4,param5,false);
      }
      
      public function get keyLocation() : uint
      {
         return var_770.keyLocation;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_770.shiftKey;
      }
      
      public function get charCode() : uint
      {
         return var_770.charCode;
      }
      
      public function get keyCode() : uint
      {
         return var_770.keyCode;
      }
      
      public function get altKey() : Boolean
      {
         return var_770.altKey;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowKeyboardEvent","type","bubbles","cancelable","window","charCode");
      }
      
      override public function clone() : Event
      {
         return new WindowKeyboardEvent(_type,var_770,window,related,bubbles,cancelable);
      }
   }
}
