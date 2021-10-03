package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1991:XML;
      
      private var var_1556:ITextWindow;
      
      private var var_1555:ITextWindow;
      
      private var var_1993:XML;
      
      private var var_889:IWindowContainer;
      
      private var var_2383:ITextWindow;
      
      private var var_1992:String = "";
      
      private var var_2450:IButtonWindow;
      
      private var var_1995:XML;
      
      private var var_1554:ITextWindow;
      
      private var var_1994:XML;
      
      private var var_890:IButtonWindow;
      
      private var var_78:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_303:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1993) as IWindowContainer;
               break;
            case Offer.const_480:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1994) as IWindowContainer;
               break;
            case Offer.const_477:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1991) as IWindowContainer;
               break;
            case Offer.const_663:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1995) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_889 != null)
            {
               _window.removeChild(var_889);
               var_889.dispose();
            }
            var_889 = _loc2_;
            _window.addChild(_loc2_);
            var_889.x = 0;
            var_889.y = 0;
         }
         var_1554 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1555 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1556 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2383 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_890 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_890 != null)
         {
            var_890.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_890.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_78 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_78,page,var_1992);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1993 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1994 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1991 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1995 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_936,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1992 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_78 = param1.offer;
         attachStub(var_78.priceType);
         if(var_1554 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_78.priceInCredits));
            var_1554.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1555 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_78.priceInPixels));
            var_1555.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1556 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_78.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_78.priceInPixels));
            var_1556.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_890 != null)
         {
            var_890.enable();
         }
      }
   }
}
