package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.Dictionary;
   
   public class PollContentsParser implements IMessageParser
   {
       
      
      private var var_1109:Array = null;
      
      private var var_1360:String = "";
      
      private var var_1108:int = 0;
      
      private var var_1359:String = "";
      
      private var _id:int = -1;
      
      public function PollContentsParser()
      {
         super();
      }
      
      public function get questionArray() : Array
      {
         return var_1109;
      }
      
      public function get startMessage() : String
      {
         return var_1360;
      }
      
      public function get numQuestions() : int
      {
         return var_1108;
      }
      
      public function get endMessage() : String
      {
         return var_1359;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         _id = param1.readInteger();
         var_1360 = param1.readString();
         var_1359 = param1.readString();
         var_1108 = param1.readInteger();
         var_1109 = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < var_1108)
         {
            _loc3_ = new Dictionary();
            var_1109.push(_loc3_);
            _loc3_["id"] = param1.readInteger();
            _loc3_["number"] = param1.readInteger();
            _loc3_["type"] = param1.readInteger();
            _loc3_["content"] = param1.readString();
            if(_loc3_["type"] == 1 || _loc3_["type"] == 2)
            {
               _loc4_ = param1.readInteger();
               _loc5_ = new Array();
               _loc3_["selections"] = _loc5_;
               _loc3_["selection_count"] = _loc4_;
               _loc3_["selection_min"] = param1.readInteger();
               _loc3_["selection_max"] = param1.readInteger();
               _loc6_ = 0;
               while(_loc6_ < _loc4_)
               {
                  _loc5_.push(param1.readString());
                  _loc6_++;
               }
            }
            _loc2_++;
         }
         return true;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function flush() : Boolean
      {
         _id = -1;
         var_1360 = "";
         var_1359 = "";
         var_1108 = 0;
         var_1109 = null;
         return true;
      }
   }
}
