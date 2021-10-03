package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1700:int = 5;
      
      public static const const_1546:int = 113;
      
      public static const const_1594:int = 29;
      
      public static const const_1577:int = 0;
      
      public static const const_1654:int = 102;
      
      public static const const_1667:int = 25;
      
      public static const const_1607:int = 20;
      
      public static const const_1489:int = 116;
      
      public static const const_1499:int = 114;
      
      public static const const_1606:int = 101;
      
      public static const const_1560:int = 108;
      
      public static const const_1602:int = 112;
      
      public static const const_1611:int = 100;
      
      public static const const_1600:int = 24;
      
      public static const const_1192:int = 10;
      
      public static const const_1619:int = 111;
      
      public static const const_1586:int = 23;
      
      public static const const_1643:int = 26;
      
      public static const const_1268:int = 2;
      
      public static const const_1685:int = 22;
      
      public static const const_1503:int = 17;
      
      public static const const_1520:int = 18;
      
      public static const const_1521:int = 3;
      
      public static const const_1504:int = 109;
      
      public static const const_1330:int = 1;
      
      public static const const_1487:int = 103;
      
      public static const const_1552:int = 11;
      
      public static const const_1494:int = 28;
      
      public static const const_1585:int = 104;
      
      public static const const_1568:int = 13;
      
      public static const const_1679:int = 107;
      
      public static const const_1647:int = 27;
      
      public static const const_1516:int = 118;
      
      public static const const_1477:int = 115;
      
      public static const const_1698:int = 16;
      
      public static const const_1538:int = 19;
      
      public static const const_1707:int = 4;
      
      public static const const_1693:int = 105;
      
      public static const const_1578:int = 117;
      
      public static const const_1680:int = 119;
      
      public static const const_1604:int = 106;
      
      public static const const_1694:int = 12;
      
      public static const const_1554:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1330:
            case const_1192:
               return "banned";
            case const_1268:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
