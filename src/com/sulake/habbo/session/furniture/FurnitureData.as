package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1485:String = "e";
      
      public static const const_1636:String = "i";
      
      public static const const_1574:String = "s";
       
      
      private var _id:int;
      
      private var var_2288:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2290:int;
      
      private var var_1372:Array;
      
      private var var_2289:int;
      
      private var var_2291:int;
      
      private var var_2287:int;
      
      private var _name:String;
      
      private var var_2286:int;
      
      private var var_1232:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2290 = param4;
         var_2286 = param5;
         var_2289 = param6;
         var_2291 = param7;
         var_2287 = param8;
         var_1372 = param9;
         _title = param10;
         var_1232 = param11;
         var_2288 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_2291;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2287;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_2288;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2286;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2290;
      }
      
      public function get tileSizeX() : int
      {
         return var_2289;
      }
      
      public function get colours() : Array
      {
         return var_1372;
      }
      
      public function get description() : String
      {
         return var_1232;
      }
   }
}
