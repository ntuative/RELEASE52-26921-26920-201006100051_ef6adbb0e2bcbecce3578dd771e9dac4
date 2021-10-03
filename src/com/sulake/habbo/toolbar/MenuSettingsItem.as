package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1915:Array;
      
      private var var_1804:String;
      
      private var var_1914:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1804 = param1;
         var_1915 = param2;
         var_1914 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1804;
      }
      
      public function get yieldList() : Array
      {
         return var_1915;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1914;
      }
   }
}
