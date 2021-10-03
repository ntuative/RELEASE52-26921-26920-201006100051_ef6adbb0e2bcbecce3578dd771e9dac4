package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_614:String;
      
      private var _id:int;
      
      private var var_2202:String = "";
      
      private var var_2203:int;
      
      private var var_2204:String;
      
      private var var_1710:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2203 = parseInt(param1.@pattern);
         var_614 = String(param1.@gender);
         var_1710 = Boolean(parseInt(param1.@colorable));
         var_2202 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2202;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1710;
      }
      
      public function get gender() : String
      {
         return var_614;
      }
      
      public function get patternId() : int
      {
         return var_2203;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2204;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2204 = param1;
      }
   }
}
