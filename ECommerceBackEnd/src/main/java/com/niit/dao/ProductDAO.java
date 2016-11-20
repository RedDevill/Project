package com.niit.dao;

import org.springframework.stereotype.Repository;

import com.niit.model.Product;


@Repository
public class ProductDAO {

	public Product addProduct(String ProductID ,String ProductName,String ProductDescription)
	{
		Product p =new Product();
		p.setProductID(ProductID);
		p.setProductName(ProductName);
		p.setProductDescription(ProductDescription);
	
		return p;
	}
}
	

