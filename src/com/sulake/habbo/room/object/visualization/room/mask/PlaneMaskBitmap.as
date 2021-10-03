package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_55:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_1894:Number = -1.0;
      
      private var var_833:IGraphicAsset = null;
      
      private var var_1893:Number = 1.0;
      
      private var var_1892:Number = -1.0;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         var_1894 = param2;
         _normalMaxX = param3;
         var_1892 = param4;
         var_1893 = param5;
         var_833 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1893;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1894;
      }
      
      public function get normalMinY() : Number
      {
         return var_1892;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_833;
      }
      
      public function dispose() : void
      {
         var_833 = null;
      }
   }
}
