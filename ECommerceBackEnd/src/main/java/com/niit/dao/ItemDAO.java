package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Item;
import com.niit.model.Product;

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

	public List<Item> getItem()
	{
		Session sess=getSession();
		String hql="from Item";
		Query q = sess.createQuery(hql);
		List<Item> listItem = q.list();
		return listItem;
	}
}
