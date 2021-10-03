package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1880:int;
      
      private var var_430:String;
      
      private var var_1701:int;
      
      private var var_2094:int;
      
      private var var_1884:int;
      
      private var var_2093:int;
      
      private var _nutrition:int;
      
      private var var_1324:int;
      
      private var var_2097:int;
      
      private var var_2096:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1882:int;
      
      private var var_2095:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1701;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2093;
      }
      
      public function flush() : Boolean
      {
         var_1324 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2097;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2096;
      }
      
      public function get maxNutrition() : int
      {
         return var_2095;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_2094;
      }
      
      public function get petId() : int
      {
         return var_1324;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1324 = param1.readInteger();
         _name = param1.readString();
         var_1701 = param1.readInteger();
         var_2097 = param1.readInteger();
         var_1884 = param1.readInteger();
         var_2096 = param1.readInteger();
         _energy = param1.readInteger();
         var_2093 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2095 = param1.readInteger();
         var_430 = param1.readString();
         var_2094 = param1.readInteger();
         var_1882 = param1.readInteger();
         var_1880 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1884;
      }
      
      public function get ownerId() : int
      {
         return var_1882;
      }
      
      public function get age() : int
      {
         return var_1880;
      }
   }
}
