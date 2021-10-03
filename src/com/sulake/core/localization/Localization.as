package com.sulake.core.localization
{
   import flash.utils.Dictionary;
   
   public class Localization implements ILocalization
   {
       
      
      private var var_626:String;
      
      private var var_1412:Dictionary;
      
      private var var_169:Boolean = false;
      
      private var var_774:Array;
      
      private var var_181:String;
      
      public function Localization(param1:String, param2:String = null)
      {
         super();
         var_774 = new Array();
         var_1412 = new Dictionary();
         var_626 = param1;
         var_181 = param2;
      }
      
      public function removeListener(param1:ILocalizable) : void
      {
         var _loc2_:int = var_774.indexOf(param1);
         if(_loc2_ >= 0)
         {
            var_774 = var_774.splice(_loc2_,1);
         }
      }
      
      public function get raw() : String
      {
         return var_181;
      }
      
      public function get isInitialized() : Boolean
      {
         return var_181 != null;
      }
      
      public function registerParameter(param1:String, param2:String, param3:String = "%") : void
      {
         param1 = param3 + param1 + param3;
         var_1412[param1] = param2;
         updateListeners();
      }
      
      public function registerListener(param1:ILocalizable) : void
      {
         var_774.push(param1);
         param1.localization = value;
      }
      
      public function get value() : String
      {
         return fillParameterValues();
      }
      
      private function fillParameterValues() : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:String = var_181;
         for(_loc2_ in var_1412)
         {
            _loc3_ = "null";
            _loc4_ = new RegExp(_loc2_,"gim");
            if(_loc1_ != null)
            {
               _loc1_ = _loc1_.replace(_loc4_,_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function setValue(param1:String) : void
      {
         var_181 = param1;
         updateListeners();
      }
      
      public function updateListeners() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_774)
         {
            _loc1_.localization = value;
         }
      }
      
      public function get key() : String
      {
         return var_626;
      }
   }
}
