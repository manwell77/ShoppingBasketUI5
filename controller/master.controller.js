sap.ui.define(["sap/ui/core/mvc/Controller",
               "sap/ui/model/resource/ResourceModel",
           	   "sap/ui/model/Filter",
        	   "sap/ui/model/FilterOperator",
        	   'sap/ui/core/Fragment',], 
		
	function (Controller,ResourceModel,Filter,FilterOperator) {
	
		"use strict";
   
		return Controller.extend("sap.eni.basket.controller.master", {  						

			_getSettings : function () {
				if (!this._oSettings) {
					this._oSettings = sap.ui.xmlfragment("sap.eni.basket.fragment.settings", this);
					this.getView().addDependent(this._oSettings);
				}
				return this._oSettings;
			},
			
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
			},
			
			onFilter: function (oEvent) {
				this._getSettings().setFilterSearchCallback(null).setFilterSearchOperator(sap.m.StringFilterOperator.Equal).open();				
			},
			
			onConfirm: function( oEvent ) {
				// get parameters and initialize sorter
				var parameters = oEvent.getParameters();
				var aSorter = [];
				// grouping
			    if (parameters.groupItem) {
			    	switch (parameters.groupItem.getKey()) {
			    		case "1": aSorter.push(new sap.ui.model.Sorter("CreatedBy",parameters.groupDescending,true)); break;
			    	}	 
			    }
			    if (parameters.sortItem) {
			    	switch (parameters.sortItem.getKey()) {
			    		case "1": aSorter.push(new sap.ui.model.Sorter("BasketNumber",parameters.groupDescending,false)); break;
			    		case "2": aSorter.push(new sap.ui.model.Sorter("CreatedBy",parameters.groupDescending,false)); break;
			    		default: break;
			    	}
			    }
			    if (aSorter.length > 0) 
			    	{ this.byId("masterList").getBinding("items").sort(aSorter); this.byId("butFilter").setIcon("sap-icon://add-filter"); }
			    else
			    	{ this.byId("butFilter").setIcon("sap-icon://filter"); }
			}
			
		});
   
});