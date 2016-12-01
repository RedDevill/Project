package com.niit.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;


@Repository
@Transactional
@EnableTransactionManagement
public class ProductDAO {
	
	
	@Autowired
	  SessionFactory sessionFactory;
		
		public Session getSession()
		{
			return sessionFactory.openSession();
		}

	/*public Product addProduct(String productID ,String productName,String productDescription, String quantity, String brand, String price, String supplier, String category )
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
	}*/
	
	@Transactional
	public void addProduct(Product p)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		sess.close();
	}
}
	

