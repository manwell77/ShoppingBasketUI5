sap.ui.define(["sap/ui/core/mvc/Controller",
               "sap/ui/model/resource/ResourceModel"], 
		
	function (Controller,ResourceModel) {
	
		"use strict";
   
		return Controller.extend("sap.eni.basket.controller.master", {  						
		
			onInit: function () {	 

			},
			
			onScPressed: function (oEvent) {
				var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
				oRouter.navTo("detail", { WorkitemID: oEvent.getSource().getBindingContext("sc").getObject().WorkitemID }, false );
			}
		
		});
   
});