package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class EffectView
   {
       
      
      private var _container:MeMenuEffectsView;
      
      private var var_182:Timer;
      
      private var _window:IWindowContainer;
      
      private var var_870:IWindow;
      
      private var var_869:IWindow;
      
      private var var_418:Number;
      
      private var var_871:ITextWindow;
      
      private var var_177:IWidgetAvatarEffect;
      
      public function EffectView()
      {
         super();
         var_182 = new Timer(1000);
         var_182.addEventListener(TimerEvent.TIMER,onUpdate);
      }
      
      private function setElementImage(param1:String, param2:String) : void
      {
         var _loc3_:BitmapDataAsset = _container.widget.assets.getAssetByName(param2) as BitmapDataAsset;
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         setElementBitmap(param1,_loc4_);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         if(var_870 != null)
         {
            if(false)
            {
               _loc2_ = 0 / Number(var_177.duration);
               var_870.width = _loc2_ * var_418;
            }
            else
            {
               var_870.width = 0;
               var_182.stop();
            }
            setTimeLeft();
         }
         else
         {
            var_182.stop();
         }
      }
      
      public function init(param1:MeMenuEffectsView, param2:String, param3:IWidgetAvatarEffect) : void
      {
         var_177 = param3;
         _container = param1;
         createWindow(param2);
      }
      
      public function get effect() : IWidgetAvatarEffect
      {
         return var_177;
      }
      
      private function createWindow(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc7_:* = null;
         var _loc3_:String = "";
         if(false)
         {
            _loc3_ = "memenu_effect_selected";
         }
         else if(false)
         {
            _loc3_ = "memenu_effect_unselected";
         }
         else
         {
            _loc3_ = "memenu_effect_inactive";
         }
         Logger.log("Me Menu Active Effect View: " + _loc3_);
         _loc2_ = _container.widget.assets.getAssetByName(_loc3_) as XmlAsset;
         _window = (_container.widget.windowManager as ICoreWindowManager).buildFromXML(_loc2_.content as XML) as IWindowContainer;
         if(_window == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         _window.name = param1;
         _container.effectsContainer.addChild(_window);
         var _loc4_:ITextWindow = _window.findChildByName("effect_name") as ITextWindow;
         if(_loc4_ != null)
         {
            _loc4_.caption = "${fx_undefined}";
         }
         var _loc5_:ITextWindow = _window.findChildByName("effect_amount") as ITextWindow;
         if(_loc5_ != null)
         {
            _loc5_.caption = "undefined";
         }
         var _loc6_:IWindowContainer = _window.findChildByName("effect_amount_bg1") as IWindowContainer;
         if(true)
         {
            if(_loc6_ != null)
            {
               _loc6_.visible = false;
            }
         }
         if(_loc3_ == "memenu_effect_inactive")
         {
            _loc7_ = _window.findChildByName("activate_effect") as IButtonWindow;
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseEvent);
            }
         }
         else
         {
            _window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseEvent);
            if(false)
            {
               _window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseEvent);
               _window.addEventListener(WindowMouseEvent.const_33,onMouseEvent);
            }
            if(false)
            {
               setElementImage("effect_hilite","memenu_fx_pause");
            }
            else
            {
               setElementImage("effect_hilite","memenu_fx_play");
            }
            var_869 = _window.findChildByName("effect_hilite");
            var_869.visible = false;
         }
         var_871 = _window.findChildByName("time_left") as ITextWindow;
         setTimeLeft();
         var_870 = _window.findChildByName("loader_bar");
         if(var_870 != null)
         {
            var_418 = var_870.width;
            var_182.start();
            onUpdate();
         }
         if(false)
         {
            setElementBitmap("effect_icon",var_177.icon);
         }
      }
      
      private function setElementBitmap(param1:String, param2:BitmapData) : void
      {
         var _loc3_:IBitmapWrapperWindow = _window.findChildByName(param1) as IBitmapWrapperWindow;
         if(_loc3_ != null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc3_.bitmap.copyPixels(param2,param2.rect,new Point(0,0));
         }
         else
         {
            Logger.log("Could not find element: " + param1);
         }
      }
      
      public function dispose() : void
      {
         if(var_182 != null)
         {
            var_182.stop();
            var_182.removeEventListener(TimerEvent.TIMER,onUpdate);
            var_182 = null;
         }
         _container = null;
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      private function onMouseEvent(param1:WindowMouseEvent) : void
      {
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(var_869 != null)
               {
                  var_869.visible = true;
               }
               break;
            case WindowMouseEvent.const_33:
               if(var_869 != null)
               {
                  var_869.visible = false;
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               _container.selectEffect(this);
         }
      }
      
      private function setTimeLeft() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(var_871 != null)
         {
            var_871.caption = "${widgets.memenu.effects.active.timeleft}";
            _loc1_ = "null";
            if(false)
            {
               _loc2_ = 0;
               _loc3_ = Math.floor(_loc2_ / 3600);
               _loc4_ = Math.floor(_loc2_ / 60) % 60;
               _loc5_ = _loc2_ % 60;
               _loc6_ = _loc3_ < 10 ? "0" : "";
               _loc7_ = _loc4_ < 10 ? "0" : "";
               _loc8_ = _loc5_ < 10 ? "0" : "";
               _loc9_ = _loc6_ + _loc3_ + ":" + _loc7_ + _loc4_ + ":" + _loc8_ + _loc5_;
               _loc1_ = _loc1_.replace("%time_left%",_loc9_);
               var_871.text = _loc1_;
            }
            else
            {
               var_871.caption = "${widgets.memenu.effects.activate}";
            }
         }
      }
      
      public function get window() : IWindowContainer
      {
         return _window;
      }
   }
}
