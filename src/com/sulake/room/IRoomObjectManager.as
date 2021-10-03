package com.sulake.room
{
   import com.sulake.room.object.IRoomObjectController;
   
   public interface IRoomObjectManager
   {
       
      
      function getObject(param1:int) : IRoomObjectController;
      
      function reset() : void;
      
      function getObjectWithIndex(param1:int) : IRoomObjectController;
      
      function method_2() : int;
      
      function createObject(param1:int, param2:uint) : IRoomObjectController;
      
      function disposeObject(param1:int) : Boolean;
      
      function dispose() : void;
   }
}
