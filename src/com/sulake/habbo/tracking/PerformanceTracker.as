package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1539:GarbageMonitor = null;
      
      private var var_1208:int = 0;
      
      private var var_1331:Boolean = false;
      
      private var var_1920:String = "";
      
      private var var_1540:String = "";
      
      private var var_351:Number = 0;
      
      private var var_1279:int = 10;
      
      private var var_2380:Array;
      
      private var var_670:int = 0;
      
      private var var_1277:int = 60;
      
      private var var_1054:int = 0;
      
      private var var_1053:int = 0;
      
      private var var_2113:String = "";
      
      private var var_1922:Number = 0;
      
      private var var_1278:int = 1000;
      
      private var var_1921:Boolean = true;
      
      private var var_1919:Number = 0.15;
      
      private var var_129:IHabboConfigurationManager = null;
      
      private var var_1923:String = "";
      
      private var var_1280:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2380 = [];
         super();
         var_1540 = Capabilities.version;
         var_1920 = Capabilities.os;
         var_1331 = Capabilities.isDebugger;
         var_1923 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1539 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1208 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1539.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1539.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_351;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1277 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1540;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1053;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1278)
         {
            ++var_1054;
            _loc3_ = true;
         }
         else
         {
            ++var_670;
            if(var_670 <= 1)
            {
               var_351 = param1;
            }
            else
            {
               _loc4_ = Number(var_670);
               var_351 = var_351 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1208 > var_1277 * 1000 && var_1280 < var_1279)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_351);
            _loc5_ = true;
            if(var_1921 && var_1280 > 0)
            {
               _loc6_ = differenceInPercents(var_1922,var_351);
               if(_loc6_ < var_1919)
               {
                  _loc5_ = false;
               }
            }
            var_1208 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1922 = var_351;
               if(sendReport())
               {
                  ++var_1280;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1279 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1278 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1923,var_1540,var_1920,var_2113,var_1331,_loc4_,_loc3_,var_1053,var_351,var_1054);
            _connection.send(_loc1_);
            var_1053 = 0;
            var_351 = 0;
            var_670 = 0;
            var_1054 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_129 = param1;
         var_1277 = int(var_129.getKey("performancetest.interval","60"));
         var_1278 = int(var_129.getKey("performancetest.slowupdatelimit","1000"));
         var_1279 = int(var_129.getKey("performancetest.reportlimit","10"));
         var_1919 = Number(var_129.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1921 = Boolean(int(var_129.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
