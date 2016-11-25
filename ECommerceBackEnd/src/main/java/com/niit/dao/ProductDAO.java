package com.niit.dao;



import org.springframework.stereotype.Repository;

import com.niit.model.Product;


@Repository
public class ProductDAO {

	public Product addProduct(String productID ,String productName,String productDescription, String quantity, String brand, String price, String supplier, String category )
	{
		Product p =new Product();
		p.setProductID(productID);
		p.setProductName(productName);
		p.setProductDescription(productDescription);
		p.setQuantity(quantity);
		p.setBrand(brand);
		p.setPrice(price);
		p.setSupplier(supplier);
		p.setCategory(category);
	
		return p;
	}
}
	

