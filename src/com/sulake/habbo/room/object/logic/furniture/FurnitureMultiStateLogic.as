package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectStateChangeEvent;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.events.MouseEvent;
   
   public class FurnitureMultiStateLogic extends FurnitureLogic
   {
       
      
      public function FurnitureMultiStateLogic()
      {
         super();
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         switch(param1.type)
         {
            case MouseEvent.DOUBLE_CLICK:
               if(eventDispatcher != null)
               {
                  _loc3_ = object.getId();
                  _loc4_ = object.getType();
                  _loc5_ = new RoomObjectStateChangeEvent(RoomObjectStateChangeEvent.const_185,_loc3_,_loc4_);
                  eventDispatcher.dispatchEvent(_loc5_);
               }
               super.mouseEvent(param1,param2);
               break;
            default:
               super.mouseEvent(param1,param2);
         }
      }
   }
}
