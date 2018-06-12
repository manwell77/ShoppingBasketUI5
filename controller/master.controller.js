sap.ui.define(["sap/ui/core/mvc/Controller",
               "sap/ui/model/resource/ResourceModel",
           	   "sap/ui/model/Filter",
        	   "sap/ui/model/FilterOperator"], 
		
	function (Controller,ResourceModel,Filter,FilterOperator) {
	
		"use strict";
   
		return Controller.extend("sap.eni.basket.controller.master", {  						
		
			onInit: function () {	 

			},
			
			onScPressed: function (oEvent) {
				var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
				oRouter.navTo("detail", { WorkitemID: oEvent.getSource().getBindingContext("sc").getObject().WorkitemID }, false );
			},
			
			onLiveSearch(oEvent) {
				var oFilter;
				var searchKey = oEvent.getSource().getValue();
				if (searchKey) { oFilter = new Filter("SearchKey",FilterOperator.Contains,searchKey); }
				else { oFilter = new Filter("SearchKey",FilterOperator.Contains,null); }
				// filter binding
				this.byId("masterList").getBinding("items").filter(oFilter);				
			}
		
		});
   
});