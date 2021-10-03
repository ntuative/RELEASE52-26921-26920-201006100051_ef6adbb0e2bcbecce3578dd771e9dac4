package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_872:int = 500;
       
      
      private var var_72:Vector3d;
      
      private var var_2453:Vector3d;
      
      private var var_1732:int = 0;
      
      private var var_1086:int = 500;
      
      private var var_243:Vector3d;
      
      private var var_1087:Vector3d;
      
      private var var_2068:int;
      
      public function MovingObjectLogic()
      {
         super();
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(var_1087 != null)
         {
            _loc2_ = param1 - var_2068;
            if(_loc2_ > var_1086)
            {
               _loc2_ = var_1086;
            }
            _loc3_ = Vector3d.product(var_1087,_loc2_ / Number(var_1086));
            _loc4_ = Vector3d.sum(var_72,_loc3_);
            if(object != null)
            {
               object.setLocation(_loc4_);
            }
            if(_loc2_ == var_1086)
            {
               var_1087 = null;
            }
         }
         var_1732 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               var_72 = new Vector3d(param1.loc.x,param1.loc.y,param1.loc.z);
               _loc3_ = _loc2_.targetLoc;
               _loc4_ = Vector3d.dif(_loc3_,var_72);
               var_2068 = var_1732;
               var_1087 = _loc4_;
            }
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 1;
         }
         var_1086 = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
