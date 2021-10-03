package com.sulake.habbo.ui
{
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.friendlist.IFriend;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectOperationEnum;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.session.IPetInfo;
   import com.sulake.habbo.session.IUserData;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.session.events.RoomSessionPetCommandsUpdateEvent;
   import com.sulake.habbo.session.events.RoomSessionPetInfoUpdateEvent;
   import com.sulake.habbo.session.events.RoomSessionUserBadgesEvent;
   import com.sulake.habbo.session.events.RoomSessionUserFigureUpdateEvent;
   import com.sulake.habbo.session.events.UserTagsReceivedEvent;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniActionMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetGetBadgeDetailsMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetPetCommandMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomTagSearchMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class InfoStandWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      private var _isDisposed:Boolean = false;
      
      private var var_585:Map;
      
      public function InfoStandWidgetHandler()
      {
         var_585 = new Map();
         super();
      }
      
      private function onUserTags(param1:UserTagsReceivedEvent) : void
      {
         dispatchUserTags(param1.userId,param1.tags);
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         if(_container != null)
         {
            if(false)
            {
               _container.sessionDataManager.events.removeEventListener(UserTagsReceivedEvent.const_157,onUserTags);
               _container.sessionDataManager.events.removeEventListener(BadgeImageReadyEvent.const_129,onBadgeImage);
            }
            if(false)
            {
               _container.roomSessionManager.events.removeEventListener(RoomSessionUserFigureUpdateEvent.const_155,onFigureUpdate);
               _container.roomSessionManager.events.removeEventListener(RoomSessionPetInfoUpdateEvent.const_149,onPetInfo);
               _container.roomSessionManager.events.removeEventListener(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
            }
         }
         _container = param1;
         if(param1 == null)
         {
            return;
         }
         if(false)
         {
            _container.sessionDataManager.events.addEventListener(UserTagsReceivedEvent.const_157,onUserTags);
            _container.sessionDataManager.events.addEventListener(BadgeImageReadyEvent.const_129,onBadgeImage);
         }
         if(false)
         {
            _container.roomSessionManager.events.addEventListener(RoomSessionUserFigureUpdateEvent.const_155,onFigureUpdate);
            _container.roomSessionManager.events.addEventListener(RoomSessionPetInfoUpdateEvent.const_149,onPetInfo);
            _container.roomSessionManager.events.addEventListener(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
         }
      }
      
      private function handleGetObjectInfoMessage(param1:RoomWidgetRoomObjectMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:* = null;
         var _loc24_:* = null;
         var _loc25_:Boolean = false;
         var _loc26_:* = false;
         var _loc27_:Boolean = false;
         var _loc28_:int = 0;
         var _loc29_:* = null;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc32_:int = 0;
         var _loc33_:* = null;
         var _loc34_:* = null;
         _loc2_ = _container.roomSession.roomId;
         _loc3_ = _container.roomSession.roomCategory;
         switch(param1.category)
         {
            case RoomObjectCategoryEnum.const_34:
            case RoomObjectCategoryEnum.const_32:
               if(true || true)
               {
                  return null;
               }
               if(param1.id < 0)
               {
                  return null;
               }
               _loc4_ = 4282203453;
               _loc5_ = _container.roomEngine.getRoomObjectImage(_loc2_,_loc3_,param1.id,param1.category,new Vector3d(180),32,null,_loc4_);
               _loc6_ = new RoomWidgetFurniInfoUpdateEvent(RoomWidgetFurniInfoUpdateEvent.const_673);
               _loc6_.id = param1.id;
               _loc6_.category = param1.category;
               _loc7_ = _container.roomEngine.getRoomObject(_loc2_,_loc3_,param1.id,param1.category);
               if(_loc7_ == null || _loc7_.getModel() == null)
               {
                  return null;
               }
               _loc8_ = _loc7_.getType();
               if(_loc8_.indexOf("poster") == 0)
               {
                  _loc21_ = int(_loc8_.replace("poster",""));
                  _loc6_.name = "${poster_" + _loc21_ + "_name}";
                  _loc6_.description = "${poster_" + _loc21_ + "_desc}";
               }
               else
               {
                  _loc22_ = _loc7_.getModel().getNumber(RoomObjectVariableEnum.const_345);
                  if(param1.category == RoomObjectCategoryEnum.const_34)
                  {
                     _loc23_ = _container.sessionDataManager.getFloorItemData(_loc22_);
                  }
                  else if(param1.category == RoomObjectCategoryEnum.const_32)
                  {
                     _loc23_ = _container.sessionDataManager.getWallItemData(_loc22_);
                  }
                  if(_loc23_ != null)
                  {
                     _loc6_.name = _loc23_.title;
                     _loc6_.description = _loc23_.description;
                  }
               }
               if(_loc8_.indexOf("post_it") > -1)
               {
                  _loc6_.isStickie = true;
               }
               _loc6_.image = _loc5_.data;
               _loc9_ = _loc7_.getModel().getNumber(RoomObjectVariableEnum.const_975);
               _loc10_ = _loc7_.getModel().getNumber(RoomObjectVariableEnum.const_869);
               _loc6_.expiration = _loc9_ - (getTimer() - _loc10_) / 60000;
               _loc6_.isWallItem = param1.category == RoomObjectCategoryEnum.const_32;
               _loc6_.isRoomOwner = _container.roomSession.isRoomOwner;
               _loc6_.isRoomController = _container.roomSession.isRoomController;
               _loc6_.isAnyRoomController = _container.sessionDataManager.isAnyRoomController;
               _container.events.dispatchEvent(_loc6_);
               break;
            case RoomObjectCategoryEnum.const_40:
               if(true || true || true || true || true || true)
               {
                  return null;
               }
               _loc11_ = _container.roomSession.userDataManager.getUserDataByIndex(param1.id);
               if(_loc11_ == null)
               {
                  return null;
               }
               if(_loc11_.type == RoomObjectTypeEnum.const_315)
               {
                  _container.roomSession.userDataManager.requestPetInfo(_loc11_.method_1);
                  return null;
               }
               if(_loc11_.type == RoomObjectTypeEnum.const_343)
               {
                  _loc12_ = "null";
                  if(_loc11_.method_1 != _container.sessionDataManager.userId)
                  {
                     _loc12_ = "null";
                  }
               }
               else
               {
                  if(_loc11_.type != RoomObjectTypeEnum.const_955)
                  {
                     return null;
                  }
                  _loc12_ = "null";
               }
               _loc13_ = new RoomWidgetUserInfoUpdateEvent(_loc12_);
               _loc13_.isSpectatorMode = _container.roomSession.isSpectatorMode;
               _loc13_.name = _loc11_.name;
               _loc13_.motto = _loc11_.custom;
               _loc13_.method_1 = _loc11_.method_1;
               _loc13_.userRoomId = param1.id;
               _loc14_ = new Array();
               _loc16_ = _container.roomEngine.getRoomObject(_loc2_,_loc3_,param1.id,param1.category);
               if(_loc16_ != null)
               {
                  _loc13_.carryItem = _loc16_.getModel().getNumber(RoomObjectVariableEnum.const_447);
               }
               if(_loc12_ == RoomWidgetUserInfoUpdateEvent.const_205)
               {
                  _loc13_.realName = _container.sessionDataManager.realName;
               }
               if(_loc12_ == RoomWidgetUserInfoUpdateEvent.const_242)
               {
                  _loc13_.canBeAskedAsFriend = _container.friendList.canBeAskedForAFriend(_loc11_.method_1);
                  _loc24_ = _container.friendList.getFriend(_loc11_.method_1);
                  if(_loc24_ != null)
                  {
                     _loc13_.realName = _loc24_.realName;
                  }
                  if(_loc16_ != null)
                  {
                     _loc30_ = _loc16_.getModel().getString(RoomObjectVariableEnum.const_538);
                     _loc13_.hasFlatControl = _loc30_ == "onlyfurniture" || _loc30_ == "useradmin" || _loc30_ == "";
                     _loc13_.canBeKicked = _container.roomSession.isPrivateRoom;
                  }
                  _loc13_.isIgnored = _container.sessionDataManager.isIgnored(_loc11_.name);
                  _loc13_.amIOwner = _container.roomSession.isRoomOwner;
                  _loc13_.amIController = _container.roomSession.isRoomController;
                  _loc13_.amIAnyRoomController = _container.sessionDataManager.isAnyRoomController;
                  _loc13_.respectLeft = _container.sessionDataManager.respectLeft;
                  _loc25_ = _container.sessionDataManager.hasUserRight("fuse_trade");
                  _loc26_ = !_container.sessionDataManager.systemShutDown;
                  _loc27_ = _container.roomSession.isTradingRoom;
                  _loc13_.canTrade = _loc25_ && _loc26_ && _loc27_;
                  _loc13_.canTradeReason = RoomWidgetUserInfoUpdateEvent.const_1420;
                  if(!_loc25_)
                  {
                     _loc13_.canTradeReason = RoomWidgetUserInfoUpdateEvent.TRADE_REASON_NO_OWN_RIGHT;
                  }
                  if(!_loc26_)
                  {
                     _loc13_.canTradeReason = RoomWidgetUserInfoUpdateEvent.const_960;
                  }
                  if(!_loc27_)
                  {
                     _loc13_.canTradeReason = RoomWidgetUserInfoUpdateEvent.const_880;
                  }
                  _loc28_ = _container.sessionDataManager.userId;
                  _loc29_ = _container.sessionDataManager.getUserTags(_loc28_);
                  dispatchUserTags(_loc28_,_loc29_);
               }
               if(_loc12_ == RoomWidgetUserInfoUpdateEvent.BOT)
               {
                  _loc13_.canBeKicked = _container.roomSession.isRoomOwner;
                  _loc14_.push(RoomWidgetUserInfoUpdateEvent.const_1237);
               }
               else
               {
                  _loc14_ = _container.roomSession.userDataManager.getUserBadges(_loc11_.method_1);
                  _loc15_ = _container.sessionDataManager.getGroupBadgeId(int(_loc11_.groupID));
                  _loc13_.groupId = int(_loc11_.groupID);
                  _loc13_.groupBadgeId = _loc15_;
               }
               _loc13_.badges = _loc14_;
               _loc17_ = _loc11_.figure;
               _loc18_ = _loc11_.sex;
               _loc19_ = _container.avatarRenderManager.createAvatarImage(_loc17_,AvatarScaleType.const_56,_loc18_);
               if(_loc19_ != null)
               {
                  _loc19_.setDirection(AvatarSetType.const_38,4);
                  _loc13_.image = _loc19_.getImage(AvatarSetType.const_38,true);
                  _loc19_.dispose();
               }
               _container.events.dispatchEvent(_loc13_);
               if(_loc11_.type == RoomObjectTypeEnum.const_343)
               {
                  _loc31_ = _container.sessionDataManager.getUserTags(_loc11_.method_1);
                  dispatchUserTags(_loc11_.method_1,_loc31_);
               }
               _loc32_ = 0;
               while(_loc32_ < _loc14_.length)
               {
                  _loc33_ = _loc14_[_loc32_];
                  _loc20_ = _container.sessionDataManager.getBadgeImage(_loc33_);
                  if(_loc20_ != null)
                  {
                     _container.events.dispatchEvent(new RoomWidgetBadgeImageUpdateEvent(_loc33_,_loc20_));
                  }
                  _loc32_++;
               }
               if(_loc15_ != null)
               {
                  _loc34_ = _container.sessionDataManager.getGroupBadgeImage(_loc15_);
                  if(_loc34_ != null)
                  {
                     _container.events.dispatchEvent(new RoomWidgetBadgeImageUpdateEvent(_loc15_,_loc34_));
                  }
               }
               break;
         }
         return null;
      }
      
      public function update() : void
      {
      }
      
      private function onFigureUpdate(param1:RoomSessionUserFigureUpdateEvent) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = false;
         if(_container == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param1.userId < 0)
         {
            return;
         }
         var _loc2_:IUserData = _container.roomSession.userDataManager.getUserDataByIndex(param1.userId);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = _loc2_.method_1;
         var _loc4_:* = null;
         if(false)
         {
            _loc5_ = _container.avatarRenderManager.createAvatarImage(param1.figure,AvatarScaleType.const_56,param1.gender);
            if(_loc5_ != null)
            {
               _loc5_.setDirection(AvatarSetType.const_38,4);
               _loc4_ = _loc5_.getImage(AvatarSetType.const_38,true);
               _loc5_.dispose();
            }
            _loc6_ = _loc3_ == _container.sessionDataManager.userId;
            if(_container != null && false)
            {
               _container.events.dispatchEvent(new RoomWidgetUserFigureUpdateEvent(_loc3_,_loc4_,_loc6_));
            }
         }
      }
      
      private function onPetInfo(param1:RoomSessionPetInfoUpdateEvent) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = null;
         var _loc10_:Boolean = false;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc2_:IPetInfo = param1.petInfo;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IUserData = _container.roomSession.userDataManager.getUserData(_loc2_.petId);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:String = _loc3_.figure;
         var _loc5_:IAvatarImage = var_585.getValue(_loc2_.petId) as IAvatarImage;
         if(_loc5_ == null)
         {
            _loc5_ = _container.avatarRenderManager.createPetImageFromFigure(_loc4_,AvatarScaleType.const_56);
            var_585.add(_loc2_.petId,_loc5_);
         }
         if(_loc5_ == null)
         {
            ErrorReportStorage.addDebugData("PetErrors","Pet with no avatar image: " + _loc2_.petId);
            return;
         }
         var _loc6_:int = _loc5_.petType;
         var _loc7_:int = _loc5_.petBreed;
         _loc5_.setDirection(AvatarSetType.const_38,4);
         if(_container != null && false)
         {
            _loc8_ = _loc2_.ownerId == _container.sessionDataManager.userId;
            _loc9_ = new RoomWidgetPetInfoUpdateEvent(_loc6_,_loc7_,_loc3_.name,_loc2_.petId,_loc5_.getCroppedImage(AvatarSetType.const_38),_loc8_,_loc2_.ownerId,_loc2_.ownerName,_loc3_.id);
            _loc9_.level = _loc2_.level;
            _loc9_.levelMax = _loc2_.levelMax;
            _loc9_.experience = _loc2_.experience;
            _loc9_.experienceMax = _loc2_.experienceMax;
            _loc9_.energy = _loc2_.energy;
            _loc9_.energyMax = _loc2_.energyMax;
            _loc9_.nutrition = _loc2_.nutrition;
            _loc9_.nutritionMax = _loc2_.nutritionMax;
            _loc9_.petRespect = _loc2_.respect;
            _loc9_.petRespectLeft = _container.sessionDataManager.petRespectLeft;
            _loc9_.age = _loc2_.age;
            _loc10_ = false;
            _loc11_ = _container.roomSession.roomId;
            _loc12_ = _container.roomSession.roomCategory;
            _loc13_ = _container.roomSession.userDataManager.getUserData(_loc2_.ownerId);
            if(_loc13_ != null)
            {
               _loc14_ = _container.roomEngine.getRoomObject(_loc11_,_loc12_,_loc13_.id,RoomObjectCategoryEnum.const_40);
               if(_loc14_ != null)
               {
                  _loc15_ = _loc14_.getModel().getString(RoomObjectVariableEnum.const_538);
                  _loc10_ = (_container.roomSession.isRoomOwner || _container.roomSession.isRoomController || _container.sessionDataManager.isAnyRoomController) && _loc15_ != "useradmin" && _container.roomSession.isPrivateRoom && !_loc8_;
               }
            }
            _loc9_.canOwnerBeKicked = _loc10_;
            _container.events.dispatchEvent(_loc9_);
         }
      }
      
      public function getProcessedEvents() : Array
      {
         return [RoomSessionUserBadgesEvent.const_126];
      }
      
      private function dispatchUserTags(param1:int, param2:Array) : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc3_:* = false;
         if(false)
         {
            _loc3_ = param1 == _container.sessionDataManager.userId;
         }
         if(_container != null && false)
         {
            _container.events.dispatchEvent(new RoomWidgetUserTagsUpdateEvent(param1,param2,_loc3_));
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function getWidgetMessages() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(RoomWidgetRoomObjectMessage.const_310);
         _loc1_.push(RoomWidgetUserActionMessage.const_533);
         _loc1_.push(RoomWidgetUserActionMessage.const_715);
         _loc1_.push(RoomWidgetUserActionMessage.const_602);
         _loc1_.push(RoomWidgetUserActionMessage.const_672);
         _loc1_.push(RoomWidgetUserActionMessage.const_560);
         _loc1_.push(RoomWidgetUserActionMessage.const_504);
         _loc1_.push(RoomWidgetUserActionMessage.const_581);
         _loc1_.push(RoomWidgetUserActionMessage.const_748);
         _loc1_.push(RoomWidgetUserActionMessage.const_549);
         _loc1_.push(RoomWidgetUserActionMessage.const_763);
         _loc1_.push(RoomWidgetUserActionMessage.const_554);
         _loc1_.push(RoomWidgetFurniActionMessage.const_255);
         _loc1_.push(RoomWidgetFurniActionMessage.const_639);
         _loc1_.push(RoomWidgetFurniActionMessage.const_615);
         _loc1_.push(RoomWidgetRoomTagSearchMessage.const_764);
         _loc1_.push(RoomWidgetGetBadgeDetailsMessage.const_702);
         _loc1_.push(RoomWidgetUserActionMessage.const_472);
         _loc1_.push(RoomWidgetUserActionMessage.const_547);
         _loc1_.push(RoomWidgetUserActionMessage.const_577);
         _loc1_.push(RoomWidgetUserActionMessage.const_1178);
         _loc1_.push(RoomWidgetPetCommandMessage.const_657);
         _loc1_.push(RoomWidgetPetCommandMessage.const_709);
         _loc1_.push(RoomWidgetUserActionMessage.const_718);
         _loc1_.push(RoomWidgetUserActionMessage.const_439);
         return _loc1_;
      }
      
      private function onPetCommands(param1:RoomSessionPetCommandsUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(_container != null && false)
         {
            _loc2_ = new RoomWidgetPetCommandsUpdateEvent(param1.petId,param1.enabledCommands);
            _container.events.dispatchEvent(_loc2_);
         }
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         switch(param1.type)
         {
            case RoomSessionUserBadgesEvent.const_126:
               _loc2_ = param1 as RoomSessionUserBadgesEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               _container.events.dispatchEvent(new RoomWidgetUserBadgesUpdateEvent(_loc2_.userId,_loc2_.badges));
               _loc4_ = 0;
               while(_loc4_ < _loc2_.badges.length)
               {
                  _loc5_ = _loc2_.badges[_loc4_];
                  _loc3_ = _container.sessionDataManager.getBadgeImage(_loc5_);
                  if(_loc3_ != null)
                  {
                     _container.events.dispatchEvent(new RoomWidgetBadgeImageUpdateEvent(_loc5_,_loc3_));
                  }
                  _loc4_++;
               }
               break;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(var_585 != null)
         {
            _loc1_ = var_585.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_585.getValue(_loc2_);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               _loc3_ = null;
            }
            var_585 = null;
         }
         _isDisposed = true;
         container = null;
      }
      
      private function onBadgeImage(param1:BadgeImageReadyEvent) : void
      {
         if(_container != null && false)
         {
            _container.events.dispatchEvent(new RoomWidgetBadgeImageUpdateEvent(param1.badgeId,param1.badgeImage));
         }
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_501;
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         if(param1 == null)
         {
            return null;
         }
         if(_container == null)
         {
            return null;
         }
         var _loc2_:int = 0;
         _loc4_ = param1 as RoomWidgetUserActionMessage;
         if(_loc4_ != null)
         {
            _loc2_ = _loc4_.userId;
            if(_loc4_.type == RoomWidgetUserActionMessage.const_472)
            {
               _loc3_ = _container.roomSession.userDataManager.getUserDataByIndex(_loc2_);
            }
            else
            {
               _loc3_ = _container.roomSession.userDataManager.getUserData(_loc2_);
            }
            if(_loc3_ == null)
            {
               return null;
            }
         }
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:RoomWidgetFurniActionMessage = param1 as RoomWidgetFurniActionMessage;
         if(_loc7_ != null)
         {
            _loc5_ = _loc7_.furniId;
            _loc6_ = _loc7_.furniCategory;
         }
         switch(param1.type)
         {
            case RoomWidgetRoomObjectMessage.const_310:
               return handleGetObjectInfoMessage(param1 as RoomWidgetRoomObjectMessage);
            case RoomWidgetUserActionMessage.const_533:
               _container.friendList.askForAFriend(_loc2_,_loc3_.name);
               break;
            case RoomWidgetUserActionMessage.const_715:
               _container.sessionDataManager.giveRespect(_loc2_);
               break;
            case RoomWidgetUserActionMessage.const_718:
               _container.sessionDataManager.givePetRespect(_loc2_);
               break;
            case RoomWidgetUserActionMessage.const_602:
               _loc8_ = new RoomWidgetChatInputContentUpdateEvent(RoomWidgetChatInputContentUpdateEvent.const_953,_loc3_.name);
               _container.events.dispatchEvent(_loc8_);
               break;
            case RoomWidgetUserActionMessage.const_672:
               _container.sessionDataManager.ignoreUser(_loc3_.name);
               break;
            case RoomWidgetUserActionMessage.const_560:
               _container.sessionDataManager.unignoreUser(_loc3_.name);
               break;
            case RoomWidgetUserActionMessage.const_504:
               _container.roomSession.kickUser(_loc3_.method_1);
               break;
            case RoomWidgetUserActionMessage.const_581:
               _container.roomSession.banUser(_loc3_.method_1);
               break;
            case RoomWidgetUserActionMessage.const_748:
               _container.roomSession.assignRights(_loc3_.method_1);
               break;
            case RoomWidgetUserActionMessage.const_549:
               _container.roomSession.removeRights(_loc3_.method_1);
               break;
            case RoomWidgetUserActionMessage.const_763:
               _loc9_ = _container.roomSession.userDataManager.getUserData(_loc4_.userId);
               _container.inventory.setupTrading(_loc9_.id,_loc9_.name);
               break;
            case RoomWidgetUserActionMessage.const_554:
               _container.sessionDataManager.openHabboHomePage(_loc3_.method_1);
               break;
            case RoomWidgetUserActionMessage.const_577:
               _container.roomSession.pickUpPet(_loc2_);
               break;
            case RoomWidgetFurniActionMessage.const_639:
               _container.roomEngine.modifyRoomObject(_loc5_,_loc6_,RoomObjectOperationEnum.OBJECT_ROTATE_POSITIVE);
               break;
            case RoomWidgetFurniActionMessage.const_255:
               _container.roomEngine.modifyRoomObject(_loc5_,_loc6_,RoomObjectOperationEnum.OBJECT_MOVE);
               break;
            case RoomWidgetFurniActionMessage.const_615:
               _container.roomEngine.modifyRoomObject(_loc5_,_loc6_,RoomObjectOperationEnum.OBJECT_PICKUP);
               break;
            case RoomWidgetUserActionMessage.const_439:
               if(false && _container.roomSession.userDataManager != null)
               {
                  _container.roomSession.userDataManager.requestPetInfo(_loc2_);
               }
               break;
            case RoomWidgetRoomTagSearchMessage.const_764:
               _loc10_ = param1 as RoomWidgetRoomTagSearchMessage;
               if(_loc10_ == null)
               {
                  return null;
               }
               _container.navigator.performTagSearch(_loc10_.tag);
               break;
            case RoomWidgetGetBadgeDetailsMessage.const_702:
               _loc11_ = param1 as RoomWidgetGetBadgeDetailsMessage;
               if(_loc11_ == null)
               {
                  return null;
               }
               _container.sessionDataManager.showGroupBadgeInfo(_loc11_.groupId);
               break;
            case RoomWidgetUserActionMessage.const_472:
               _container.roomSession.kickBot(_loc2_);
               break;
            case RoomWidgetUserActionMessage.const_547:
               if(_container == null || true)
               {
                  break;
               }
               if(_loc3_ == null)
               {
                  break;
               }
               _container.habboHelp.reportUser(_loc2_,_loc3_.name);
               break;
            case RoomWidgetPetCommandMessage.const_709:
               _loc12_ = param1 as RoomWidgetPetCommandMessage;
               _container.roomSession.requestPetCommands(_loc12_.petId);
               break;
            case RoomWidgetPetCommandMessage.const_657:
               _loc13_ = param1 as RoomWidgetPetCommandMessage;
               _container.roomSession.sendChatMessage(_loc13_.value);
         }
         return null;
      }
   }
}
