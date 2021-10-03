package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_484:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_434:int = 0;
      
      public static const const_908:int = 2;
      
      public static const const_1020:int = 1;
      
      public static const const_747:Boolean = false;
      
      public static const const_605:String = "";
      
      public static const const_500:int = 0;
      
      public static const const_509:int = 0;
      
      public static const const_400:int = 0;
       
      
      private var var_2269:int = 0;
      
      private var var_1859:String = "";
      
      private var var_1493:int = 0;
      
      private var var_2272:int = 0;
      
      private var var_2271:Number = 0;
      
      private var var_2039:int = 255;
      
      private var var_2270:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2269;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1493 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2271;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2272 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2269 = param1;
      }
      
      public function get tag() : String
      {
         return var_1859;
      }
      
      public function get alpha() : int
      {
         return var_2039;
      }
      
      public function get ink() : int
      {
         return var_1493;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2271 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2272;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2270 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2270;
      }
      
      public function set tag(param1:String) : void
      {
         var_1859 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_2039 = param1;
      }
   }
}
