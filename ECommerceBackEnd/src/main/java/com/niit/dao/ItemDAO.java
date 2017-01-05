package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Item;

@Repository
@Transactional
@EnableTransactionManagement
public class ItemDAO {
	
	@Autowired
	SessionFactory sessionFactory;
		
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	@Transactional
	public void addItem(Item i)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(i);
		tx.commit();
		sess.close();
	}

}
