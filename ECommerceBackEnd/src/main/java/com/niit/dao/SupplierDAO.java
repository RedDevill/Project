package com.niit.dao;

import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;


@Repository
public class SupplierDAO {

	public Supplier addSupplier(String SupplierID ,String SupplierName,String SupplierDescription)
	{
		Supplier s =new Supplier();
		s.setSupplierID(SupplierID);
		s.setSupplierName(SupplierName);
		s.setSupplierDescription(SupplierDescription);
	
		return s;
	}
}
	

