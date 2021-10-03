package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboIconType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarEditorGridPartItem
   {
      
      private static var var_60:Array = [];
      
      {
         var_60.push("li");
         var_60.push("lh");
         var_60.push("ls");
         var_60.push("lc");
         var_60.push("bd");
         var_60.push("sh");
         var_60.push("lg");
         var_60.push("ch");
         var_60.push("ca");
         var_60.push("cc");
         var_60.push("cp");
         var_60.push("wa");
         var_60.push("rh");
         var_60.push("rs");
         var_60.push("rc");
         var_60.push("hd");
         var_60.push("fc");
         var_60.push("ey");
         var_60.push("hr");
         var_60.push("hrb");
         var_60.push("fa");
         var_60.push("ea");
         var_60.push("ha");
         var_60.push("he");
         var_60.push("ri");
      }
      
      private const const_1709:int = 16777215;
      
      private var _isSelected:Boolean = false;
      
      private const const_1708:int = 13421772;
      
      private var var_398:Rectangle;
      
      private var _colors:Array;
      
      private var _window:IWindowContainer;
      
      private var var_1490:Boolean;
      
      private var var_382:BitmapData;
      
      private var _model:IAvatarEditorCategoryModel;
      
      private var var_580:IFigurePartSet;
      
      private var var_1489:int = 0;
      
      private const const_250:Array = [6,2,0,4,3,1];
      
      public function AvatarEditorGridPartItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IFigurePartSet, param4:Array, param5:Boolean = true)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _model = param2;
         var_580 = param3;
         _window = param1;
         _colors = param4;
         var_1490 = param5;
         if(param3 == null)
         {
            var_382 = new BitmapData(1,1,true,16777215);
         }
         if(param3 != null)
         {
            _loc7_ = param3.parts;
            for each(_loc6_ in _loc7_)
            {
               var_1489 = Math.max(var_1489,_loc6_.colorLayerIndex);
            }
         }
         updateThumbVisualization();
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
         updateThumbVisualization();
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_382 = param1;
         updateThumbVisualization();
      }
      
      public function get colorLayerCount() : int
      {
         return var_1489;
      }
      
      private function sortByDrawOrder(param1:IFigurePart, param2:IFigurePart) : Number
      {
         var _loc3_:Number = var_60.indexOf(param1.type);
         var _loc4_:Number = var_60.indexOf(param2.type);
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.index < param2.index)
         {
            return -1;
         }
         if(param1.index > param2.index)
         {
            return 1;
         }
         return 0;
      }
      
      private function updateThumbVisualization() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("bitmap") as IBitmapWrapperWindow;
         if(_loc1_)
         {
            if(var_382 != null && !var_1490)
            {
               _loc3_ = var_382;
            }
            else
            {
               _loc3_ = renderThumb();
               if(!_loc3_)
               {
                  return;
               }
            }
            _loc4_ = !!_loc1_.bitmap ? _loc1_.bitmap : new BitmapData(_loc1_.width,_loc1_.height);
            _loc4_.fillRect(_loc4_.rect,16777215);
            _loc5_ = (_loc4_.width - _loc3_.width) / 2;
            _loc6_ = (_loc4_.height - _loc3_.height) / 2;
            _loc4_.copyPixels(_loc3_,_loc3_.rect,new Point(_loc5_,_loc6_),null,null,true);
            _loc1_.bitmap = _loc4_;
         }
         var _loc2_:IIconWindow = _window.findChildByTag("CLUB_ICON") as IIconWindow;
         if(_loc2_)
         {
            if(var_580)
            {
               switch(var_580.clubLevel)
               {
                  case HabboClubLevelEnum.const_51:
                     _loc2_.visible = false;
                     break;
                  case HabboClubLevelEnum.const_63:
                     _loc2_.style = HabboIconType.const_704;
                     break;
                  case HabboClubLevelEnum.const_54:
                     _loc2_.style = HabboIconType.const_573;
               }
            }
            else
            {
               _loc2_.visible = false;
            }
         }
         if(isSelected)
         {
            _window.color = const_1708;
         }
         else
         {
            _window.color = const_1709;
         }
         _window.invalidate();
      }
      
      private function analyzePartLayers() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_model == null)
         {
            var_398 = null;
            return false;
         }
         if(!partSet || true || partSet.parts.length == 0)
         {
            var_398 = null;
            return false;
         }
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Rectangle = new Rectangle();
         for each(_loc1_ in partSet.parts)
         {
            if(_loc6_)
            {
               _loc2_ = "undefined_undefined_" + _loc1_.type + "_" + _loc1_.id + "_" + const_250[_loc5_] + "_" + FigureData.const_114;
               _loc3_ = _model.controller.avatarRenderManager.getAssetByName(_loc2_) as BitmapDataAsset;
            }
            else
            {
               _loc5_ = 0;
               while(!_loc6_ && _loc5_ < const_250.length)
               {
                  _loc2_ = "undefined_undefined_" + _loc1_.type + "_" + _loc1_.id + "_" + const_250[_loc5_] + "_" + FigureData.const_114;
                  _loc3_ = _model.controller.avatarRenderManager.getAssetByName(_loc2_) as BitmapDataAsset;
                  if(_loc3_ && _loc3_.content)
                  {
                     _loc6_ = true;
                  }
                  else
                  {
                     _loc5_++;
                  }
               }
            }
            if(_loc3_ && _loc3_.content)
            {
               _loc4_ = _loc3_.content as BitmapData;
               _loc7_ = _loc7_.union(new Rectangle(-1 * _loc3_.offset.x,-1 * _loc3_.offset.y,_loc4_.width,_loc4_.height));
            }
         }
         if(_loc7_ && _loc7_.width > 0)
         {
            var_398 = _loc7_;
            return true;
         }
         return false;
      }
      
      public function get id() : int
      {
         if(var_580 == null)
         {
            return -1;
         }
         return var_580.id;
      }
      
      public function dispose() : void
      {
         _model = null;
         var_580 = null;
         if(_window != null)
         {
            if(true)
            {
               _window.dispose();
            }
         }
         _window = null;
         if(var_382)
         {
            var_382.dispose();
         }
         var_382 = null;
      }
      
      public function update() : void
      {
         updateThumbVisualization();
      }
      
      public function set colors(param1:Array) : void
      {
         _colors = param1;
         updateThumbVisualization();
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      public function get partSet() : IFigurePartSet
      {
         return var_580;
      }
      
      private function renderThumb() : BitmapData
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(partSet == null)
         {
            return null;
         }
         if(_model == null)
         {
            return null;
         }
         if(var_398 == null)
         {
            if(!analyzePartLayers())
            {
               return null;
            }
         }
         _loc1_ = new BitmapData(var_398.width,var_398.height,true,16777215);
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Array = partSet.parts.concat().sort(sortByDrawOrder);
         for each(_loc2_ in _loc8_)
         {
            if(_loc7_)
            {
               _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + const_250[_loc6_] + "_" + FigureData.const_114;
               _loc4_ = _model.controller.avatarRenderManager.getAssetByName(_loc3_) as BitmapDataAsset;
            }
            else
            {
               _loc6_ = 0;
               while(!_loc7_ && _loc6_ < const_250.length)
               {
                  _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + const_250[_loc6_] + "_" + FigureData.const_114;
                  _loc4_ = _model.controller.avatarRenderManager.getAssetByName(_loc3_) as BitmapDataAsset;
                  if(_loc4_ && _loc4_.content)
                  {
                     _loc7_ = true;
                  }
                  else
                  {
                     _loc6_++;
                  }
               }
            }
            if(_loc4_)
            {
               _loc5_ = (_loc4_.content as BitmapData).clone();
               _loc9_ = -1 * _loc4_.offset.x - 0;
               _loc10_ = -1 * _loc4_.offset.y - 0;
               if(var_1490 && _loc2_.colorLayerIndex > 0)
               {
                  _loc11_ = _colors[_loc2_.colorLayerIndex - 1];
                  if(_loc11_ != null)
                  {
                     _loc5_.colorTransform(_loc5_.rect,_loc11_.colorTransform);
                  }
               }
               _loc1_.copyPixels(_loc5_,_loc5_.rect,new Point(_loc9_,_loc10_),null,null,true);
            }
            else
            {
               Logger.log("Could not find asset: " + _loc3_);
            }
         }
         return _loc1_;
      }
   }
}
