package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_427:uint;
      
      private var var_1061:IUnknown;
      
      private var var_1285:String;
      
      private var var_1062:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1062 = param1;
         var_1285 = getQualifiedClassName(var_1062);
         var_1061 = param2;
         var_427 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1062;
      }
      
      public function get disposed() : Boolean
      {
         return var_1061 == null;
      }
      
      public function get references() : uint
      {
         return var_427;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_427) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1061;
      }
      
      public function get iis() : String
      {
         return var_1285;
      }
      
      public function reserve() : uint
      {
         return ++var_427;
      }
      
      public function dispose() : void
      {
         var_1062 = null;
         var_1285 = null;
         var_1061 = null;
         var_427 = 0;
      }
   }
}
