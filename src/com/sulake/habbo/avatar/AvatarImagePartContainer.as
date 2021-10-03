package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1963:int;
      
      private var var_1964:String;
      
      private var var_1663:IActionDefinition;
      
      private var var_1967:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1966:String;
      
      private var var_1965:String;
      
      private var var_1710:Boolean;
      
      private var var_1962:ColorTransform;
      
      private var var_1815:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1964 = param1;
         var_1966 = param2;
         var_1963 = param3;
         _color = param4;
         _frames = param5;
         var_1663 = param6;
         var_1710 = param7;
         var_1815 = param8;
         var_1965 = param9;
         var_1967 = param10;
         var_1962 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1710;
      }
      
      public function get partType() : String
      {
         return var_1966;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1815;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1967;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1963;
      }
      
      public function get flippedPartType() : String
      {
         return var_1965;
      }
      
      public function get bodyPartId() : String
      {
         return var_1964;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1663;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1962;
      }
   }
}
