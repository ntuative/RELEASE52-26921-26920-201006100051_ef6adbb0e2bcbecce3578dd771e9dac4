package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_118:String = "RWPUE_VOTE_RESULT";
      
      public static const const_128:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1209:int;
      
      private var var_1082:String;
      
      private var var_755:Array;
      
      private var var_1021:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1082 = param2;
         var_1021 = param3;
         var_755 = param4;
         if(var_755 == null)
         {
            var_755 = [];
         }
         var_1209 = param5;
      }
      
      public function get votes() : Array
      {
         return var_755.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1209;
      }
      
      public function get question() : String
      {
         return var_1082;
      }
      
      public function get choices() : Array
      {
         return var_1021.slice();
      }
   }
}
