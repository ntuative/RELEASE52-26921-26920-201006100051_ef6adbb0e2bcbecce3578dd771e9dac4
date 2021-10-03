package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_738;
         param1["bitmap"] = const_669;
         param1["border"] = const_640;
         param1["border_notify"] = const_1184;
         param1["button"] = const_421;
         param1["button_thick"] = const_626;
         param1["button_icon"] = const_1234;
         param1["button_group_left"] = const_653;
         param1["button_group_center"] = const_708;
         param1["button_group_right"] = const_651;
         param1["canvas"] = const_586;
         param1["checkbox"] = const_545;
         param1["closebutton"] = const_911;
         param1["container"] = const_325;
         param1["container_button"] = const_541;
         param1["display_object_wrapper"] = const_644;
         param1["dropmenu"] = const_487;
         param1["dropmenu_item"] = const_449;
         param1["frame"] = const_304;
         param1["frame_notify"] = const_1187;
         param1["header"] = const_688;
         param1["icon"] = const_964;
         param1["itemgrid"] = const_887;
         param1["itemgrid_horizontal"] = const_464;
         param1["itemgrid_vertical"] = const_630;
         param1["itemlist"] = const_897;
         param1["itemlist_horizontal"] = const_346;
         param1["itemlist_vertical"] = const_319;
         param1["maximizebox"] = const_1215;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1428;
         param1["submenu"] = const_1021;
         param1["minimizebox"] = const_1301;
         param1["notify"] = const_1202;
         param1["null"] = const_732;
         param1["password"] = const_631;
         param1["radiobutton"] = const_570;
         param1["region"] = const_398;
         param1["restorebox"] = const_1335;
         param1["scaler"] = const_767;
         param1["scaler_horizontal"] = const_1216;
         param1["scaler_vertical"] = const_1328;
         param1["scrollbar_horizontal"] = const_385;
         param1["scrollbar_vertical"] = const_649;
         param1["scrollbar_slider_button_up"] = const_829;
         param1["scrollbar_slider_button_down"] = const_1045;
         param1["scrollbar_slider_button_left"] = const_1010;
         param1["scrollbar_slider_button_right"] = const_994;
         param1["scrollbar_slider_bar_horizontal"] = const_900;
         param1["scrollbar_slider_bar_vertical"] = const_898;
         param1["scrollbar_slider_track_horizontal"] = const_826;
         param1["scrollbar_slider_track_vertical"] = const_850;
         param1["scrollable_itemlist"] = const_1372;
         param1["scrollable_itemlist_vertical"] = const_466;
         param1["scrollable_itemlist_horizontal"] = const_906;
         param1["selector"] = const_701;
         param1["selector_list"] = const_591;
         param1["submenu"] = const_1021;
         param1["tab_button"] = const_555;
         param1["tab_container_button"] = const_836;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_866;
         param1["tab_selector"] = const_551;
         param1["text"] = const_766;
         param1["input"] = const_758;
         param1["toolbar"] = const_1222;
         param1["tooltip"] = const_318;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
