package com.niit.dao;



import java.util.List;

import org.hibernate.Query;
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
		
		public List<Product> getProducts()
		{
			Session sess=getSession();
			String hql="from Product";
			Query q = sess.createQuery(hql);
			List<Product> listProduct =q.list();
			return listProduct;
		}
	
	@Transactional
	public void addProduct(Product p)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		sess.close();
	}
	
	@Transactional
	public void updateProduct(String productID)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		
		Product p=sess.get(Product.class, productID);
		sess.update(p);
		tx.commit();
		sess.close();
	}
	
	@Transactional
	public void updateProduct1(Product product)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.update(product);
		tx.commit();
		sess.close();
	}
	
	
	
	@Transactional
	public Product getProductByID(String productID)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		
		Product p=sess.get(Product.class, productID);
		return p;
	}
	
	@Transactional
	public void deleteProduct(Product p)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.delete(p);
		tx.commit();
		sess.close();

	}
	
	@Transactional
	public void deleteProduct1(String productID)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		
		Product p=sess.get(Product.class, productID);
		sess.delete(p);
		tx.commit();
		sess.close();
	}
}

	

