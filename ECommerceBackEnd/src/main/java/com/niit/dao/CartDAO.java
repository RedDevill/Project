package com.niit.dao;

import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;
import com.niit.model.Product;

@Repository
@Transactional
@EnableTransactionManagement
public class CartDAO {
	
	@Autowired
	SessionFactory sessionFactory;
		
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	@Transactional
	public void addCart(Cart c)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
	}
	
	public List<Cart> cartList(String username)
	{
		Session sess=getSession();
		String hql="from Cart where username=:username";
		Query q = sess.createQuery(hql);
		q.setParameter("username", username);
		List<Cart> list = q.list();
		return list;
	}
	
	public Long getTotalAmount(String username) {
		Long sum = 0L;
		Session session = getSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		/*
		 * Criteria ct=session.createCriteria(Cart.class);
		 * ct.setProjection(Projections.sum("price"));
		 */
		String hql = "select sum(productprice*qty)as total from Cart where username=:username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);

		sum = (Long) query.uniqueResult();
		tx.commit();
		session.close();

		return sum;
	}

	public void deleteCart(String productname) {
		try {
			Session session = getSession();
			org.hibernate.Transaction tx = session.beginTransaction();
			Cart c = session.get(Cart.class, productname);

			session.delete(c);
			tx.commit();
			session.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}


}
