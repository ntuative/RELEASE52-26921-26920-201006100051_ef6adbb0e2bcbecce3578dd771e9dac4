package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_368:Number = 0.5;
      
      private static const const_796:int = 3;
      
      private static const const_1107:Number = 1;
       
      
      private var var_1939:Boolean = false;
      
      private var var_1935:Boolean = false;
      
      private var var_1063:int = 0;
      
      private var var_270:Vector3d = null;
      
      private var var_1934:int = 0;
      
      private var var_1937:int = 0;
      
      private var var_1940:Boolean = false;
      
      private var var_1941:int = -2;
      
      private var var_1942:Boolean = false;
      
      private var var_1938:int = 0;
      
      private var var_1943:int = -1;
      
      private var var_428:Vector3d = null;
      
      private var var_1936:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1934;
      }
      
      public function get targetId() : int
      {
         return var_1943;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1934 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1939 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1943 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1935 = param1;
      }
      
      public function dispose() : void
      {
         var_428 = null;
         var_270 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_428 == null)
         {
            var_428 = new Vector3d();
         }
         var_428.assign(param1);
         var_1063 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1941;
      }
      
      public function get screenHt() : int
      {
         return var_1936;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1937 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_270;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1936 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1938;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1939;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1935;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_428 != null && var_270 != null)
         {
            ++var_1063;
            _loc2_ = Vector3d.dif(var_428,var_270);
            if(_loc2_.length <= const_368)
            {
               var_270 = var_428;
               var_428 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_368 * (const_796 + 1))
               {
                  _loc2_.mul(const_368);
               }
               else if(var_1063 <= const_796)
               {
                  _loc2_.mul(const_368);
               }
               else
               {
                  _loc2_.mul(const_1107);
               }
               var_270 = Vector3d.sum(var_270,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1940 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1937;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1942 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1941 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_270 != null)
         {
            return;
         }
         var_270 = new Vector3d();
         var_270.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1940;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1942;
      }
   }
}
