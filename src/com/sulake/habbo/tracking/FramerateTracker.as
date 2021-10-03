package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_670:int;
      
      private var var_1208:int;
      
      private var var_351:uint;
      
      private var var_1769:Boolean;
      
      private var var_1770:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         var_1770 = int(param1.getKey("tracking.framerate.reportInterval.seconds","60")) * 1000;
         var_1769 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_670;
         var _loc3_:int = getTimer();
         if(var_670 == 1)
         {
            var_351 = param1;
            var_1208 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_670);
            var_351 = var_351 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_1769 && _loc3_ - var_1208 >= var_1770)
         {
            _loc5_ = 1000 / var_351;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            var_1208 = _loc3_;
            var_670 = 0;
         }
      }
      
      function dispose() : void
      {
      }
   }
}
