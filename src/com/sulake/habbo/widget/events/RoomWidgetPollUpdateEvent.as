package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_139:String = "RWPUW_CONTENT";
      
      public static const const_119:String = "RWPUW_OFFER";
      
      public static const const_66:String = "RWPUW_ERROR";
       
      
      private var var_1109:Array = null;
      
      private var var_1360:String = "";
      
      private var var_1212:String;
      
      private var var_1359:String = "";
      
      private var var_1108:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1109;
      }
      
      public function get startMessage() : String
      {
         return var_1360;
      }
      
      public function get summary() : String
      {
         return var_1212;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1360 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1108 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1212 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1108;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1359 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1359;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1109 = param1;
      }
   }
}
