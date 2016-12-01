package com.niit.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Supplier;


@Repository
@Transactional
@EnableTransactionManagement
public class SupplierDAO {
	
	@Autowired
	  SessionFactory sessionFactory;
		
		public Session getSession()
		{
			return sessionFactory.openSession();
		}

	/*public Supplier addSupplier(String supplierID ,String supplierName,String supplierDescription)
	{
		Supplier s =new Supplier();
		s.setSupplierID(supplierID);
		s.setSupplierName(supplierName);
		s.setSupplierDescription(supplierDescription);
	
		return s;
	}*/

		@Transactional
		public void addSupplier(Supplier s)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			sess.save(s);
			tx.commit();
			sess.close();
		}
}

	

