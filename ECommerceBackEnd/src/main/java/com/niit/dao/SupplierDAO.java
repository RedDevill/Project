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
		
		public List<Supplier> getSupplier()
		{
			Session sess=getSession();
			String hql="from Supplier";
			Query q = sess.createQuery(hql);
			List<Supplier> listSupplier =q.list();
			return listSupplier;
		}
		
		@Transactional
		public void addSupplier(Supplier s)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			sess.save(s);
			tx.commit();
			sess.close();
		}
		
		@Transactional
		public void updateSupplier(String supplierID)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			Supplier s=sess.get(Supplier.class, supplierID);
			sess.update(s);
			tx.commit();
			sess.close();
		}
		
		@Transactional
		public void updateSupplier1(Supplier supplier)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			sess.update(supplier);
			tx.commit();
			sess.close();
		}
		
		
		
		@Transactional
		public Supplier getSupplierByID(String supplierID)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			
			Supplier s=sess.get(Supplier.class, supplierID);
			return s ;
		}
		
		
		@Transactional
		public void deletesupplier1(String supplierID)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			
			Supplier s=sess.get(Supplier.class, supplierID);
			sess.delete(s);
			tx.commit();
			sess.close();
		}
		@Transactional
		public void deleteSupplier(Supplier s)
		{
			Session sess=getSession();
			org.hibernate.Transaction tx=sess.beginTransaction();
			sess.delete(s);
			tx.commit();
			sess.close();
		}
}

	

