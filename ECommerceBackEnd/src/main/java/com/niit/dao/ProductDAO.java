package com.niit.dao;



import org.springframework.stereotype.Repository;

import com.niit.model.Product;


@Repository
public class ProductDAO {

	public Product addProduct(String productID ,String productName,String productDescription)
	{
		Product p =new Product();
		p.setProductID(productID);
		p.setProductName(productName);
		p.setProductDescription(productDescription);
	
		return p;
	}
}
	

