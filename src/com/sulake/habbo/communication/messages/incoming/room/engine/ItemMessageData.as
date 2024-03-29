package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_86:Number = 0;
      
      private var _data:String = "";
      
      private var var_1622:int = 0;
      
      private var var_37:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1996:Boolean = false;
      
      private var var_2451:String = "";
      
      private var _id:int = 0;
      
      private var var_195:Boolean = false;
      
      private var var_243:String = "";
      
      private var var_1999:int = 0;
      
      private var var_1998:int = 0;
      
      private var var_2000:int = 0;
      
      private var var_1997:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1996 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1996;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_195)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_243;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_195)
         {
            var_2000 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_195)
         {
            var_1999 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_195)
         {
            var_1998 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_195)
         {
            var_243 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_195)
         {
            var_1997 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_195)
         {
            var_37 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2000;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_195)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1999;
      }
      
      public function get wallY() : Number
      {
         return var_1998;
      }
      
      public function get localY() : Number
      {
         return var_1997;
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_86 = param1;
         }
      }
   }
}
