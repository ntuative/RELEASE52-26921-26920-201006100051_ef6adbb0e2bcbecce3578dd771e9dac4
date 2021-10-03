package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_706:String = "Rectangle";
      
      public static const const_64:String = "Boolean";
      
      public static const const_670:String = "Number";
      
      public static const const_65:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_696:String = "Point";
      
      public static const const_843:String = "Array";
      
      public static const const_982:String = "uint";
      
      public static const const_381:String = "hex";
      
      public static const const_889:String = "Map";
       
      
      private var var_626:String;
      
      private var var_181:Object;
      
      private var var_2397:Boolean;
      
      private var _type:String;
      
      private var var_2145:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_626 = param1;
         var_181 = param2;
         _type = param3;
         var_2145 = param4;
         var_2397 = param3 == const_889 || param3 == const_843 || param3 == const_696 || param3 == const_706;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_381:
               return "0x" + uint(var_181).toString(16);
            case const_64:
               return Boolean(var_181) == true ? "true" : "false";
            case const_696:
               return "Point(" + Point(var_181).x + ", " + Point(var_181).y + ")";
            case const_706:
               return "Rectangle(" + Rectangle(var_181).x + ", " + Rectangle(var_181).y + ", " + Rectangle(var_181).width + ", " + Rectangle(var_181).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_889:
               _loc3_ = var_181 as Map;
               _loc1_ = "<var key=\"" + var_626 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_843:
               _loc4_ = var_181 as Array;
               _loc1_ = "<var key=\"" + var_626 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_696:
               _loc5_ = var_181 as Point;
               _loc1_ = "<var key=\"" + var_626 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_706:
               _loc6_ = var_181 as Rectangle;
               _loc1_ = "<var key=\"" + var_626 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_381:
               _loc1_ = "<var key=\"" + var_626 + "\" value=\"" + "0x" + uint(var_181).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_626 + "\" value=\"" + var_181 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_181;
      }
      
      public function get method_8() : Boolean
      {
         return var_2145;
      }
      
      public function get key() : String
      {
         return var_626;
      }
   }
}
