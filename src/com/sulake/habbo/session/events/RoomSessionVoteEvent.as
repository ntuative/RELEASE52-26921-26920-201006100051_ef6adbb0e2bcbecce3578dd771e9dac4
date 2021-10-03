package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_118:String = "RSPE_VOTE_RESULT";
      
      public static const const_128:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1209:int = 0;
      
      private var var_1082:String = "";
      
      private var var_755:Array;
      
      private var var_1021:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1021 = [];
         var_755 = [];
         super(param1,param2,param7,param8);
         var_1082 = param3;
         var_1021 = param4;
         var_755 = param5;
         if(var_755 == null)
         {
            var_755 = [];
         }
         var_1209 = param6;
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
