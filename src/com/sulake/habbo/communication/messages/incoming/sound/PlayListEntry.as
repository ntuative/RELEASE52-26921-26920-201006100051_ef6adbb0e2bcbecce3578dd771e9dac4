package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2267:int;
      
      private var var_2275:int = 0;
      
      private var var_2277:String;
      
      private var var_2276:int;
      
      private var var_2278:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2267 = param1;
         var_2276 = param2;
         var_2278 = param3;
         var_2277 = param4;
      }
      
      public function get length() : int
      {
         return var_2276;
      }
      
      public function get name() : String
      {
         return var_2278;
      }
      
      public function get creator() : String
      {
         return var_2277;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2275;
      }
      
      public function get id() : int
      {
         return var_2267;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2275 = param1;
      }
   }
}
