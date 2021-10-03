package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_243:int = 0;
      
      private var var_1773:int = 0;
      
      private var var_2009:Number = 0;
      
      private var var_2010:Number = 0;
      
      private var var_2011:Number = 0;
      
      private var var_2013:Number = 0;
      
      private var var_2012:Boolean = false;
      
      private var var_85:Number = 0;
      
      private var _id:int = 0;
      
      private var var_229:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_229 = [];
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_86 = param4;
         var_2013 = param5;
         var_243 = param6;
         var_1773 = param7;
         var_2009 = param8;
         var_2010 = param9;
         var_2011 = param10;
         var_2012 = param11;
         var_229 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_243;
      }
      
      public function get localZ() : Number
      {
         return var_2013;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2012;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1773;
      }
      
      public function get targetX() : Number
      {
         return var_2009;
      }
      
      public function get targetY() : Number
      {
         return var_2010;
      }
      
      public function get targetZ() : Number
      {
         return var_2011;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get actions() : Array
      {
         return var_229.slice();
      }
   }
}
