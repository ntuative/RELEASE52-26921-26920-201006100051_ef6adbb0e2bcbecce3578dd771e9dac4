package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_610:int = -1;
      
      public static const const_832:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1839:int = -1;
      
      private var var_85:int = 0;
      
      private var var_1244:int = 1;
      
      private var var_849:int = 1;
      
      private var var_1840:Boolean = false;
      
      private var var_1841:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_1840 = param5;
         if(param4 < 0)
         {
            param4 = const_610;
         }
         var_849 = param4;
         var_1244 = param4;
         if(param6 >= 0)
         {
            var_1839 = param6;
            var_1841 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_849 > 0 && param1 > var_849)
         {
            param1 = var_849;
         }
         var_1244 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_849;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1841;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_849 < 0)
         {
            return const_610;
         }
         return var_1244;
      }
      
      public function get activeSequence() : int
      {
         return var_1839;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1840;
      }
      
      public function get x() : int
      {
         return var_85;
      }
   }
}
