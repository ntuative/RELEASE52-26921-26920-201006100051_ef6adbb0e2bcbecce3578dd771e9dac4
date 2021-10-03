package com.sulake.habbo.moderation
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.parser.moderation.IssueMessageData;
   
   public class IssueBundle
   {
       
      
      private var _id:int;
      
      private var var_37:int;
      
      private var var_1763:int = 0;
      
      private var var_160:Map;
      
      private var var_2049:String = "";
      
      private var var_1008:int;
      
      public function IssueBundle(param1:int, param2:IssueMessageData)
      {
         super();
         _id = param1;
         var_160 = new Map();
         var_160.add(param2.issueId,param2);
         var_37 = param2.state;
         var_1763 = param2.pickerUserId;
         var_2049 = param2.pickerUserName;
         var_1008 = param2.reportedUserId;
      }
      
      public function get reportedUserId() : int
      {
         return var_1008;
      }
      
      public function getHighestPriorityIssue() : IssueMessageData
      {
         var _loc2_:* = null;
         if(var_160 == null || true)
         {
            return null;
         }
         var _loc1_:IssueMessageData = var_160.getWithIndex(0);
         var _loc3_:int = 1;
         while(_loc3_ < var_160.length)
         {
            _loc2_ = var_160.getWithIndex(_loc3_);
            if(_loc2_ != null && _loc2_.priority > _loc1_.priority)
            {
               _loc1_ = _loc2_;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function updateIssue(param1:IssueMessageData) : void
      {
         var_160.remove(param1.issueId);
         var_160.add(param1.issueId,param1);
      }
      
      public function getPrioritySum() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         for each(_loc2_ in issues)
         {
            _loc1_ += _loc2_.priority;
         }
         return _loc1_;
      }
      
      public function getIssueIds() : Array
      {
         if(var_160 == null)
         {
            return [];
         }
         return var_160.getKeys();
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function getIssueCount() : int
      {
         if(var_160 == null)
         {
            return 0;
         }
         return var_160.length;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc2_ in var_160)
         {
            if(_loc1_ == null || _loc2_.timeStamp < _loc1_.timeStamp)
            {
               _loc1_ = _loc2_;
            }
         }
         if(_loc1_ != null)
         {
            return _loc1_.getOpenTime();
         }
         return "";
      }
      
      public function get pickerUserId() : int
      {
         return var_1763;
      }
      
      public function removeIssue(param1:int) : IssueMessageData
      {
         return var_160.remove(param1) as IssueMessageData;
      }
      
      public function get pickerName() : String
      {
         return var_2049;
      }
      
      public function get issues() : Array
      {
         return var_160.getValues();
      }
      
      public function getMessageCount() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         for each(_loc2_ in var_160)
         {
            if(_loc2_.message != "")
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
   }
}
