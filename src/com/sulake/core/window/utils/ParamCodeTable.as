package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_140;
         param1["bound_to_parent_rect"] = const_91;
         param1["child_window"] = const_893;
         param1["embedded_controller"] = const_320;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_617;
         param1["mouse_dragging_target"] = const_206;
         param1["mouse_dragging_trigger"] = const_311;
         param1["mouse_scaling_target"] = const_293;
         param1["mouse_scaling_trigger"] = const_490;
         param1["horizontal_mouse_scaling_trigger"] = const_249;
         param1["vertical_mouse_scaling_trigger"] = const_243;
         param1["observe_parent_input_events"] = const_852;
         param1["optimize_region_to_layout_size"] = const_419;
         param1["parent_window"] = const_870;
         param1["relative_horizontal_scale_center"] = const_182;
         param1["relative_horizontal_scale_fixed"] = const_123;
         param1["relative_horizontal_scale_move"] = const_305;
         param1["relative_horizontal_scale_strech"] = const_266;
         param1["relative_scale_center"] = const_846;
         param1["relative_scale_fixed"] = const_583;
         param1["relative_scale_move"] = const_984;
         param1["relative_scale_strech"] = const_949;
         param1["relative_vertical_scale_center"] = const_165;
         param1["relative_vertical_scale_fixed"] = const_127;
         param1["relative_vertical_scale_move"] = const_341;
         param1["relative_vertical_scale_strech"] = const_287;
         param1["on_resize_align_left"] = const_634;
         param1["on_resize_align_right"] = const_492;
         param1["on_resize_align_center"] = const_445;
         param1["on_resize_align_top"] = const_601;
         param1["on_resize_align_bottom"] = const_446;
         param1["on_resize_align_middle"] = const_412;
         param1["on_accommodate_align_left"] = const_967;
         param1["on_accommodate_align_right"] = const_391;
         param1["on_accommodate_align_center"] = const_593;
         param1["on_accommodate_align_top"] = const_990;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_557;
         param1["route_input_events_to_parent"] = const_475;
         param1["use_parent_graphic_context"] = const_36;
         param1["draggable_with_mouse"] = const_910;
         param1["scalable_with_mouse"] = const_974;
         param1["reflect_horizontal_resize_to_parent"] = const_429;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_259;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
