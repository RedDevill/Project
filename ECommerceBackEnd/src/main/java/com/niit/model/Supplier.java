package com.niit.model;

import org.springframework.stereotype.Component;

@Component
public class Supplier {
	
	private String SupplierID;
	private String SupplierName;
	private String SupplierDescription;

	public String getSupplierID() {
		return SupplierID;
	}
	public void setSupplierID(String supplierID) {
		SupplierID = supplierID;
	}
	public String getSupplierName() {
		return SupplierName;
	}
	public void setSupplierName(String supplierName) {
		SupplierName = supplierName;
	}
	public String getSupplierDescription() {
		return SupplierDescription;
	}
	public void setSupplierDescription(String supplierDescription) {
		SupplierDescription = supplierDescription;
	}
}
