package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1857:int;
      
      private var var_1952:Boolean;
      
      private var var_2267:int;
      
      private var var_1445:String;
      
      private var var_2266:Boolean = false;
      
      private var var_1955:int;
      
      private var var_459:int;
      
      private var var_1046:String;
      
      private var var_1559:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1405:int;
      
      private var var_1954:Boolean;
      
      private var var_2268:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1857 = param1;
         var_1046 = param2;
         _objId = param3;
         var_1405 = param4;
         var_1445 = param5;
         var_1952 = param6;
         var_1954 = param7;
         var_1955 = param8;
         var_1559 = param9;
         var_2267 = param10;
         var_459 = -1;
      }
      
      public function get songId() : int
      {
         return var_2267;
      }
      
      public function get iconCallbackId() : int
      {
         return var_459;
      }
      
      public function get expiryTime() : int
      {
         return var_1955;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2268 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2266 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_459 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1954;
      }
      
      public function get slotId() : String
      {
         return var_1559;
      }
      
      public function get classId() : int
      {
         return var_1405;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1952;
      }
      
      public function get stuffData() : String
      {
         return var_1445;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1857;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2266;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2268;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1046;
      }
   }
}
