package com.niit.dao;


import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;


@Repository
public class SupplierDAO {

	public Supplier addSupplier(String supplierID ,String supplierName,String supplierDescription)
	{
		Supplier s =new Supplier();
		s.setSupplierID(supplierID);
		s.setSupplierName(supplierName);
		s.setSupplierDescription(supplierDescription);
	
		return s;
	}
}
	

