package com.sulake.habbo.avatar
{
   import com.sulake.core.runtime.IDisposable;
   
   public interface IAvatarImageListener extends IDisposable
   {
       
      
      function imageReady() : void;
   }
}
