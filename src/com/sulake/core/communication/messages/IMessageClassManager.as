package com.sulake.core.communication.messages
{
   public interface IMessageClassManager
   {
       
      
      function include(param1:IMessageComposer) : int;
      
      function getMessageEventClasses(param1:int) : Array;
      
      function registerMessages(param1:IMessageConfiguration) : Boolean;
   }
}
