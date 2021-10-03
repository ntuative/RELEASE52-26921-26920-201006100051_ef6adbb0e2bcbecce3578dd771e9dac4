package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1054:int = 0;
      
      private var var_1331:int = 0;
      
      private var var_1920:String = "";
      
      private var var_1053:int = 0;
      
      private var var_2113:String = "";
      
      private var var_2111:int = 0;
      
      private var var_1540:String = "";
      
      private var var_1741:int = 0;
      
      private var var_2114:int = 0;
      
      private var var_1923:String = "";
      
      private var var_2112:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1741 = param1;
         var_1923 = param2;
         var_1540 = param3;
         var_1920 = param4;
         var_2113 = param5;
         if(param6)
         {
            var_1331 = 1;
         }
         else
         {
            var_1331 = 0;
         }
         var_2111 = param7;
         var_2114 = param8;
         var_1053 = param9;
         var_2112 = param10;
         var_1054 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1741,var_1923,var_1540,var_1920,var_2113,var_1331,var_2111,var_2114,var_1053,var_2112,var_1054];
      }
      
      public function dispose() : void
      {
      }
   }
}
