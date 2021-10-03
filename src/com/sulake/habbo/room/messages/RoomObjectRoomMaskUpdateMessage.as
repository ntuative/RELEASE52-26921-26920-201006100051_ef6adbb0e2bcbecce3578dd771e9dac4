package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1349:String = "door";
      
      public static const const_442:String = "window";
      
      public static const const_739:String = "RORMUM_ADD_MASK";
      
      public static const const_513:String = "RORMUM_ADD_MASK";
      
      public static const const_223:String = "hole";
       
      
      private var var_2235:String = "";
      
      private var var_2234:String = "";
      
      private var var_2233:String = "window";
      
      private var var_2236:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_2234 = param2;
         var_2235 = param3;
         if(param4 != null)
         {
            var_2236 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_2233 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_2233;
      }
      
      public function get maskId() : String
      {
         return var_2234;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_2236;
      }
      
      public function get maskType() : String
      {
         return var_2235;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
