package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1372:Array;
      
      private var var_2141:String;
      
      private var var_2139:String;
      
      private var var_2140:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1372 = param1;
         var_2141 = param2;
         var_2139 = param3;
         var_2140 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1372;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_2141;
      }
      
      public function get colourAssetName() : String
      {
         return var_2139;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_2140;
      }
   }
}
