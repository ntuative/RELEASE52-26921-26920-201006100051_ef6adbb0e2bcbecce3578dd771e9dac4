package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2405:uint;
      
      private var var_951:IWindowToolTipAgentService;
      
      private var var_950:IWindowMouseScalingService;
      
      private var var_221:IWindowContext;
      
      private var var_949:IWindowFocusManagerService;
      
      private var var_953:IWindowMouseListenerService;
      
      private var var_952:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2405 = 0;
         var_122 = param2;
         var_221 = param1;
         var_952 = new WindowMouseDragger(param2);
         var_950 = new WindowMouseScaler(param2);
         var_953 = new WindowMouseListener(param2);
         var_949 = new FocusManager(param2);
         var_951 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_950;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_949;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_951;
      }
      
      public function dispose() : void
      {
         if(var_952 != null)
         {
            var_952.dispose();
            var_952 = null;
         }
         if(var_950 != null)
         {
            var_950.dispose();
            var_950 = null;
         }
         if(var_953 != null)
         {
            var_953.dispose();
            var_953 = null;
         }
         if(var_949 != null)
         {
            var_949.dispose();
            var_949 = null;
         }
         if(var_951 != null)
         {
            var_951.dispose();
            var_951 = null;
         }
         var_221 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_953;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_952;
      }
   }
}
