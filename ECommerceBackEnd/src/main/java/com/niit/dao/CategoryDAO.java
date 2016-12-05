package com.niit.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
import com.niit.model.User;


@Repository
@Transactional
@EnableTransactionManagement
public class CategoryDAO {
	
	
	@Autowired
	  SessionFactory sessionFactory;
		
		public Session getSession()
		{
			return sessionFactory.openSession();
		}

		
	/*public Category addCategory(String categoryID ,String categoryName,String categoryDescription)
	{
		Category c =new Category();
		c.setCategoryID(categoryID);
		c.setCategoryName(categoryName);
		c.setCategoryDescription(categoryDescription);
	
		return c;
	}*/
	
	@Transactional
	public void addCategory(Category c)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
	}
}
	

