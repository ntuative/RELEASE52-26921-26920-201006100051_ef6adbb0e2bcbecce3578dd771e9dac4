package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1549:int = -1;
      
      private var var_1292:Boolean;
      
      private var var_1293:String;
      
      private var var_1949:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1949 = String(param1["set-type"]);
         var_1293 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1292 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1549 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1293;
      }
      
      public function get staticId() : int
      {
         return var_1549;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1549 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1292;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1292 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1293 = param1;
      }
      
      public function get setType() : String
      {
         return var_1949;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
