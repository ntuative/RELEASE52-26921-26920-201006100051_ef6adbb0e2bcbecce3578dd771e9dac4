package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1239:int = 0;
       
      
      private var var_72:Vector3d;
      
      private var _updateID:int;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var _model:RoomObjectModel;
      
      private var var_401:IRoomObjectEventHandler;
      
      private var var_1497:Vector3d;
      
      private var _instanceId:int = 0;
      
      private var _id:int;
      
      private var var_1498:Vector3d;
      
      private var var_243:Vector3d;
      
      private var var_493:Array;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         _id = param1;
         var_72 = new Vector3d();
         var_243 = new Vector3d();
         var_1497 = new Vector3d();
         var_1498 = new Vector3d();
         var_493 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_493[_loc3_] = 0;
            _loc3_--;
         }
         _model = new RoomObjectModel();
         _visualization = null;
         var_401 = null;
         _updateID = 0;
         _instanceId = var_1239++;
      }
      
      public function getInstanceId() : int
      {
         return _instanceId;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : int
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_72 = null;
         var_243 = null;
         if(_model != null)
         {
            _model.dispose();
            _model = null;
         }
         var_493 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1497.assign(var_72);
         return var_1497;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_72.x != param1.x || var_72.y != param1.y || var_72.z != param1.z)
         {
            var_72.x = param1.x;
            var_72.y = param1.y;
            var_72.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_243.x != param1.x || var_243.y != param1.y || var_243.z != param1.z)
         {
            var_243.x = (param1.x % 360 + 360) % 360;
            var_243.y = (param1.y % 360 + 360) % 360;
            var_243.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_401;
      }
      
      public function getDirection() : IVector3d
      {
         var_1498.assign(var_243);
         return var_1498;
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < var_493.length)
         {
            if(var_493[param2] != param1)
            {
               var_493[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_401)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_401;
         if(_loc2_ != null)
         {
            var_401 = null;
            _loc2_.object = null;
         }
         var_401 = param1;
         if(var_401 != null)
         {
            var_401.object = this;
         }
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < var_493.length)
         {
            return var_493[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return _model;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return _model;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
