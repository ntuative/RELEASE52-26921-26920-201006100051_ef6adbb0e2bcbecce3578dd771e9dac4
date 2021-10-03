package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_693:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2053:int;
      
      private var var_2052:int;
      
      private var var_2054:Boolean;
      
      private var var_1013:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_693);
         var_2052 = param1;
         var_2053 = param2;
         _color = param3;
         var_1013 = param4;
         var_2054 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2053;
      }
      
      public function get presetNumber() : int
      {
         return var_2052;
      }
      
      public function get brightness() : int
      {
         return var_1013;
      }
      
      public function get apply() : Boolean
      {
         return var_2054;
      }
   }
}
