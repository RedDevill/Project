package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.ShippingAddress;

@Repository
@Transactional
@EnableTransactionManagement
public class ShippingAddressDAO {
	
	@Autowired
	  SessionFactory sessionFactory;
		
		public Session getSession()
		{
			return sessionFactory.openSession();
		}

		
		@Transactional
		public void addAddress(ShippingAddress u)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			sess.save(u);
			tx.commit();
			sess.close();
		}
}
