package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_345:Boolean;
      
      private var var_1368:int;
      
      private var var_1610:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1368 = param1.readInteger();
         var_1610 = param1.readString();
         var_345 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_345;
      }
      
      public function get nodeName() : String
      {
         return var_1610;
      }
      
      public function get nodeId() : int
      {
         return var_1368;
      }
   }
}
