package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization
   {
      
      private static const const_775:int = 2;
      
      private static const const_1069:Array = [0,0,0];
       
      
      private var var_690:int = 0;
      
      private var var_430:String;
      
      private var var_2069:int = 0;
      
      private const const_1463:int = 1;
      
      private var var_393:String = "";
      
      private var var_743:int = 0;
      
      private var var_1276:int = 0;
      
      private var var_1735:Boolean = false;
      
      private var var_403:Boolean;
      
      private const const_1068:int = 3;
      
      private var var_1010:int = 0;
      
      private var var_1469:int = 0;
      
      private var var_65:IAvatarImage = null;
      
      private var var_1734:Boolean = false;
      
      private var var_487:Boolean = false;
      
      private var var_1466:String = "";
      
      private var var_1736:Boolean = false;
      
      private var var_744:int = 0;
      
      private const const_1731:int = 3;
      
      private var var_1224:int = -1;
      
      private var var_1465:int = -1;
      
      private var var_1193:Boolean = false;
      
      private var var_2367:Array;
      
      private const const_1067:int = 0;
      
      private var var_1468:int = -1;
      
      private var var_1576:int = -1;
      
      private var var_1011:int = 0;
      
      private var var_1467:int = 0;
      
      private var var_614:String;
      
      private var var_822:Boolean = false;
      
      private var var_1192:Boolean = false;
      
      private var _speakBubbleAsset:BitmapDataAsset;
      
      private const const_1445:int = 2;
      
      private var var_691:AvatarVisualizationData = null;
      
      private var var_298:BitmapDataAsset;
      
      private var var_474:Map;
      
      public function AvatarVisualization()
      {
         var_2367 = new Array();
         super();
         var_474 = new Map();
         var_403 = false;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         var_691 = param1 as AvatarVisualizationData;
         createSprites(const_1068);
         return true;
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            var_1192 = false;
         }
         if(var_393 == "sit" || var_393 == "lay")
         {
            var_1010 = param1 / 2;
         }
         else
         {
            var_1010 = 0;
         }
         var_1193 = false;
         var_822 = false;
         if(var_393 == "lay")
         {
            var_822 = true;
            _loc2_ = int(var_1466);
            if(_loc2_ < 0)
            {
               var_1193 = true;
            }
         }
      }
      
      private function updateFigure(param1:String) : void
      {
         if(var_430 != param1)
         {
            var_430 = param1;
            resetImages();
         }
      }
      
      override public function dispose() : void
      {
         if(var_474 != null)
         {
            resetImages();
            var_474.dispose();
            var_474 = null;
         }
         var_691 = null;
         var_298 = null;
         _speakBubbleAsset = null;
         super.dispose();
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_168)
         {
            var_1736 = param1.getNumber(RoomObjectVariableEnum.const_211) > 0;
            var_1734 = param1.getNumber(RoomObjectVariableEnum.const_227) > 0;
            var_1735 = param1.getNumber(RoomObjectVariableEnum.const_394) > 0;
            var_1192 = param1.getNumber(RoomObjectVariableEnum.const_645) > 0;
            var_487 = param1.getNumber(RoomObjectVariableEnum.const_1044) > 0;
            var_1276 = param1.getNumber(RoomObjectVariableEnum.const_277);
            var_393 = param1.getString(RoomObjectVariableEnum.const_505);
            var_1466 = param1.getString(RoomObjectVariableEnum.const_589);
            var_1467 = param1.getNumber(RoomObjectVariableEnum.const_899);
            var_1469 = param1.getNumber(RoomObjectVariableEnum.AVATAR_EFFECT);
            var_1011 = param1.getNumber(RoomObjectVariableEnum.const_447);
            var_690 = param1.getNumber(RoomObjectVariableEnum.const_321);
            var_1576 = param1.getNumber(RoomObjectVariableEnum.const_331);
            if(var_1011 > 0 && param1.getNumber(RoomObjectVariableEnum.const_321) > 0)
            {
               var_690 = var_1011;
            }
            else
            {
               var_690 = 0;
            }
            validateActions(param2);
            var_614 = param1.getString(RoomObjectVariableEnum.const_1032);
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_163);
            updateFigure(_loc3_);
            var_168 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_474)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_474.reset();
         var_65 = null;
         _loc2_ = getSprite(const_1067);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
         }
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(const_1463);
         var_298 = null;
         if(var_393 == "mv" || var_393 == "std")
         {
            _loc2_.visible = true;
            if(var_298 == null || param1 != var_152)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  var_298 = var_65.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  var_298 = var_65.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(var_298 != null)
               {
                  _loc2_.asset = var_298.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            var_298 = null;
            _loc2_.visible = false;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_474.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = var_691.getAvatar(var_430,param1,var_614);
            if(_loc3_ != null)
            {
               var_474.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _speakBubbleAsset = null;
         var _loc2_:IRoomObjectSprite = getSprite(const_1445);
         if(var_487)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               _speakBubbleAsset = var_691.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               _speakBubbleAsset = var_691.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(var_393 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(var_393 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(_speakBubbleAsset != null)
            {
               _loc2_.asset = _speakBubbleAsset.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(var_691 == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc9_ || _loc5_ != var_152 || var_65 == null)
         {
            if(_loc5_ != var_152)
            {
               _loc7_ = true;
               validateActions(_loc5_);
            }
            if(_loc7_ || var_65 == null)
            {
               var_65 = getAvatarImage(_loc5_);
               _loc6_ = true;
            }
            if(var_65 == null)
            {
               return;
            }
            updateShadow(_loc5_);
            updateTypingBubble(_loc5_);
            _loc8_ = updateObject(_loc3_,param1,true);
            updateActions(var_65);
            var_152 = _loc5_;
         }
         else
         {
            _loc8_ = updateObject(_loc3_,param1);
         }
         var _loc10_:Boolean = _loc8_ || _loc9_ || _loc7_;
         var _loc11_:Boolean = var_403 || var_744 > 0;
         if(_loc10_)
         {
            var_744 = const_775;
         }
         if(_loc10_ || _loc11_)
         {
            increaseUpdateId();
            --var_744;
            --var_743;
            if(!(var_743 <= 0 || _loc7_ || _loc9_ || _loc6_))
            {
               return;
            }
            var_65.updateAnimationByFrames(1);
            var_743 = const_775;
            _loc13_ = var_65.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1069;
            }
            _loc12_ = getSprite(const_1067);
            if(_loc12_ != null)
            {
               _loc16_ = var_65.getImage(AvatarSetType.const_38,false);
               if(_loc16_ != null)
               {
                  _loc12_.asset = _loc16_;
               }
               if(_loc12_.asset)
               {
                  _loc12_.offsetX = -1 * _loc5_ / 2 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + _loc5_ / 4 + _loc13_[1] + var_1010;
               }
               if(var_822)
               {
                  if(var_1193)
                  {
                     _loc12_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc12_.relativeDepth = -0.409 + _loc13_[2];
                  }
               }
               else
               {
                  _loc12_.relativeDepth = -0.01 + _loc13_[2];
               }
            }
            _loc12_ = getSprite(const_1445);
            if(_loc12_ != null && _loc12_.visible)
            {
               if(!var_822)
               {
                  _loc12_.relativeDepth = -0.02 + _loc13_[2];
               }
               else
               {
                  _loc12_.relativeDepth = -0.44 + _loc13_[2];
               }
            }
            var_403 = var_65.isAnimating();
            _loc14_ = const_1068;
            for each(_loc15_ in var_65.getSprites())
            {
               if(_loc15_.id == "avatar")
               {
                  _loc12_ = getSprite(const_1067);
                  _loc17_ = var_65.getLayerData(_loc15_);
                  _loc18_ = _loc15_.getDirectionOffsetX(var_65.getDirection());
                  _loc19_ = _loc15_.getDirectionOffsetY(var_65.getDirection());
                  if(_loc17_ != null)
                  {
                     _loc18_ += _loc17_.dx;
                     _loc19_ += _loc17_.dy;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc18_ /= 2;
                     _loc19_ /= 2;
                  }
                  _loc12_.offsetX += _loc18_;
                  _loc12_.offsetY += _loc19_;
               }
               else
               {
                  _loc12_ = getSprite(_loc14_);
                  if(_loc12_ != null)
                  {
                     _loc12_.visible = true;
                     _loc20_ = var_65.getLayerData(_loc15_);
                     _loc21_ = 0;
                     _loc22_ = _loc15_.getDirectionOffsetX(var_65.getDirection());
                     _loc23_ = _loc15_.getDirectionOffsetY(var_65.getDirection());
                     _loc24_ = _loc15_.getDirectionOffsetZ(var_65.getDirection());
                     _loc25_ = 0;
                     if(_loc15_.hasDirections)
                     {
                        _loc25_ = var_65.getDirection();
                     }
                     if(_loc20_ != null)
                     {
                        _loc21_ = _loc20_.animationFrame;
                        _loc22_ += _loc20_.dx;
                        _loc23_ += _loc20_.dy;
                        _loc25_ += _loc20_.directionOffset;
                     }
                     if(_loc5_ < 48)
                     {
                        _loc22_ /= 2;
                        _loc23_ /= 2;
                     }
                     if(_loc25_ < 0)
                     {
                        _loc25_ += 8;
                     }
                     else if(_loc25_ > 7)
                     {
                        _loc25_ -= 8;
                     }
                     _loc26_ = var_65.getScale() + "_" + _loc15_.member + "_" + _loc25_ + "_" + _loc21_;
                     _loc27_ = var_65.getAsset(_loc26_);
                     if(_loc27_ == null)
                     {
                        continue;
                     }
                     _loc12_.asset = _loc27_.content as BitmapData;
                     _loc12_.offsetX = -_loc27_.offset.x - _loc5_ / 2 + _loc22_;
                     _loc12_.offsetY = -_loc27_.offset.y + _loc23_ + var_1010;
                     if(var_822)
                     {
                        _loc12_.relativeDepth = -0.409 - 0.1 * spriteCount * _loc24_;
                     }
                     else
                     {
                        _loc12_.relativeDepth = -0.01 - 0.1 * spriteCount * _loc24_;
                     }
                     if(_loc15_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc14_++;
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_293 != param1.getUpdateID() || var_1224 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1576;
            if(var_393 == "float")
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
            }
            _loc5_ = (_loc5_ % 360 + 360) % 360;
            if(_loc4_ != var_1468 || param3)
            {
               var_1468 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_65.setDirectionAngle(AvatarSetType.const_38,_loc4_);
            }
            if(_loc5_ != var_1465 || param3)
            {
               var_1465 = _loc5_;
               if(var_1465 != var_1468)
               {
                  _loc5_ -= 112.5;
                  _loc5_ = (_loc5_ + 360) % 360;
                  var_65.setDirectionAngle(AvatarSetType.const_46,_loc5_);
               }
            }
            var_293 = param1.getUpdateID();
            var_1224 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_389,var_393,var_1466);
         if(var_1276 > 0)
         {
            param1.appendAction(AvatarAction.const_270,AvatarAction.const_1292[var_1276]);
         }
         if(var_1467 > 0)
         {
            param1.appendAction(AvatarAction.const_857,var_1467);
         }
         if(var_2069 > 0)
         {
            param1.appendAction(AvatarAction.const_931,var_2069);
         }
         if(var_1011 > 0)
         {
            param1.appendAction(AvatarAction.const_919,var_1011);
         }
         if(var_690 > 0)
         {
            param1.appendAction(AvatarAction.const_1003,var_690);
         }
         if(var_1736)
         {
            param1.appendAction(AvatarAction.const_258);
         }
         if(var_1735 || var_1192)
         {
            param1.appendAction(AvatarAction.const_414);
         }
         if(var_1734)
         {
            param1.appendAction(AvatarAction.const_260);
         }
         if(var_1469 > 0)
         {
            param1.appendAction(AvatarAction.const_482,var_1469);
         }
         param1.endActionAppends();
         var_403 = param1.isAnimating();
         var _loc2_:int = const_1068;
         for each(_loc3_ in var_65.getSprites())
         {
            if(_loc3_.id != "avatarImage")
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
   }
}
