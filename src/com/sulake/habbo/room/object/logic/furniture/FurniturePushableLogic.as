package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class FurniturePushableLogic extends FurnitureMultiStateLogic
   {
      
      private static const const_819:int = 1;
      
      private static const const_1161:int = 0;
       
      
      private var var_1642:Vector3d = null;
      
      public function FurniturePushableLogic()
      {
         super();
         moveUpdateInterval = const_872;
         var_1642 = new Vector3d();
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:* = null;
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc4_ = object.getLocation();
               _loc5_ = Vector3d.dif(param1.loc,_loc4_);
               if(_loc5_ != null)
               {
                  if(Math.abs(_loc5_.x) < 2 && Math.abs(_loc5_.y) < 2)
                  {
                     _loc6_ = _loc4_;
                     if(Math.abs(_loc5_.x) > 1 || Math.abs(_loc5_.y) > 1)
                     {
                        _loc6_ = Vector3d.sum(_loc4_,Vector3d.product(_loc5_,0.5));
                     }
                     _loc2_ = new RoomObjectMoveUpdateMessage(_loc6_,param1.loc,param1.dir);
                     super.processUpdateMessage(_loc2_);
                     return;
                  }
               }
            }
         }
         if(param1.loc != null)
         {
            _loc2_ = new RoomObjectMoveUpdateMessage(param1.loc,param1.loc,param1.dir);
            super.processUpdateMessage(_loc2_);
         }
         var _loc3_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc3_ != null)
         {
            if(_loc3_.state > 0)
            {
               moveUpdateInterval = const_872 / _loc3_.state;
            }
            else
            {
               moveUpdateInterval = 1;
            }
         }
         super.processUpdateMessage(param1);
      }
      
      override public function update(param1:int) : void
      {
         if(object != null)
         {
            var_1642.assign(object.getLocation());
            super.update(param1);
            if(Vector3d.dif(object.getLocation(),var_1642).length > 0)
            {
               if(object.getState(0) != const_819)
               {
                  object.setState(const_819,0);
               }
            }
            else
            {
               object.setState(const_1161,0);
            }
         }
      }
   }
}
