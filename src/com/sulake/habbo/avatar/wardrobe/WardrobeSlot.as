package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit
   {
       
      
      private var var_430:String;
      
      private var _view:IWindowContainer;
      
      private var var_310:IBitmapWrapperWindow;
      
      private var var_1559:int;
      
      private var var_614:String;
      
      private var var_1307:Boolean;
      
      private var var_29:HabboAvatarEditor;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         var_29 = param1;
         var_1559 = param2;
         createView();
         update(param4,param5,param3);
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = var_29.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         _view = var_29.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         _view.procedure = eventHandler;
         _view.visible = false;
         var_310 = _view.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_75:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.const_74:
            case "f":
            case "F":
               param2 = "null";
         }
         var_430 = param1;
         var_614 = param2;
         var_1307 = param3;
         updateView();
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(var_430 && var_1307)
         {
            _loc5_ = var_29.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_614);
            if(_loc5_)
            {
               _loc5_.setDirection(AvatarSetType.const_38,parseInt(FigureData.const_568));
               _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_38);
               _loc5_.dispose();
            }
         }
         else
         {
            _loc6_ = var_29.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(var_310)
         {
            if(false)
            {
               var_310.bitmap.dispose();
            }
            var_310.bitmap = new BitmapData(var_310.width,var_310.height,true,0);
            _loc7_ = (0 - _loc1_.width) / 2;
            _loc8_ = (0 - _loc1_.height) / 2;
            var_310.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = _view.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = var_1307;
         }
         var _loc4_:IContainerButtonWindow = _view.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = var_1307 && var_430 != null;
         }
      }
      
      public function get gender() : String
      {
         return var_614;
      }
      
      public function get id() : int
      {
         return var_1559;
      }
      
      public function dispose() : void
      {
         var_29 = null;
         var_430 = null;
         var_614 = null;
         var_310 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               var_430 = var_29.figureData.getFigureString();
               var_614 = var_29.gender;
               var_29.handler.saveWardrobeOutfit(var_1559,this);
               updateView();
               break;
            case "get_button":
               if(var_430)
               {
                  var_29.loadAvatarInEditor(var_430,var_614,var_29.clubMemberLevel);
               }
         }
      }
   }
}
