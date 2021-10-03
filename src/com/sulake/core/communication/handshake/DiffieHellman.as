package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1274:BigInteger;
      
      private var var_604:BigInteger;
      
      private var var_1536:BigInteger;
      
      private var var_1537:BigInteger;
      
      private var var_1913:BigInteger;
      
      private var var_1912:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1274 = param1;
         var_1536 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1913.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1537 = new BigInteger();
         var_1537.fromRadix(param1,param2);
         var_1913 = var_1537.modPow(var_604,var_1274);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1912.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1274.toString() + ",generator: " + var_1536.toString() + ",secret: " + param1);
         var_604 = new BigInteger();
         var_604.fromRadix(param1,param2);
         var_1912 = var_1536.modPow(var_604,var_1274);
         return true;
      }
   }
}
