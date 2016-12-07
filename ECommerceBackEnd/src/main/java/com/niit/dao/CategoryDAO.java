package com.niit.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
import com.niit.model.Product;
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
		
		public List<Category> getCategory()
		{
			Session sess=getSession();
			String hql="from Category";
			Query q = sess.createQuery(hql);
			List<Category> listCategory =q.list();
			return listCategory;
		}
	
	@Transactional
	public void addCategory(Category c)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
	}
	
	@Transactional
	public void updateCategory(Category c)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.update(c);
		tx.commit();
		sess.close();
	}
	
	@Transactional
	public void deleteCategory(Category c)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.delete(c);
		tx.commit();
		sess.close();
	}
}
	

