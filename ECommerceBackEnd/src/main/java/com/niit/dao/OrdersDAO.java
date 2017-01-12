package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.Orders;
import com.niit.model.ShippingAddress;

@Repository("orderDAO")
public class OrdersDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession()
	{
		return sessionFactory.openSession();
	}

	public void insertOrder(Orders order) {
		
		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(order);
			System.out.println("Insertorder order DAO"+order);
			tx.commit();
			session.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

	public void insertShippingAddress(ShippingAddress shippingaddress) {
		
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.save(shippingaddress);
		tx.commit();
		session.close();
	
	}

	public void insertBillingAddress(BillingAddress billingaddress) {
		
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.save(billingaddress);
		tx.commit();
		session.close();
		
		
	}
	
	public ShippingAddress getShippingByUsername(String username) {
		
		
		Session session=getSession();
		Query q=session.createQuery("from ShippingAddress where username=:username");
		//ShippingAddress shipping=session.get(ShippingAddress.class, username);
		q.setParameter("username", username);
		List<ShippingAddress> list=q.list();
		ShippingAddress shipping=list.get(0);
		session.close();
		
		return shipping;
		
	}
	public BillingAddress getBillingByUsername(String username) {
		
		
		Session session=getSession();
		Query q=session.createQuery("from BillingAddress where username=:username");
		q.setParameter("username", username);
		List<BillingAddress>list=q.list();
		BillingAddress billing=list.get(0);
		session.close();
		
		return billing;
		
	}

	public Cart getCartByUsername(String username) {

		
		Session session=getSession();
		Query q=session.createQuery("from Cart where username=:username");
		q.setParameter("username", username);
		List<Cart>list=q.list();
		Cart cart=list.get(0);
		session.close();
		
		return cart;
	}

	public List<Orders> orderList(String username) {
		
		List<Orders> list = null;
		Session session = getSession();
		String hql = "select orderid from Orders where username=:username ";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		list = (List<Orders>) query.list();
		
		session.close();
		
		return list;
	}

	public List<ShippingAddress> shippingAddressList(String username) {
		
		Session session=getSession();
		String sqlquery="from ShippingAddress where username=:username";
		Query query=session.createQuery(sqlquery);
		query.setParameter("username", username);
		List<ShippingAddress>li=query.list();
		System.out.println("shippingAddressList method"+li);
		
		return li;
	}

	public List<BillingAddress> billingAddressList(String username) {
		
		Session session=getSession();
		String sqlquery="from BillingAddress where username=:username";
		Query query=session.createQuery(sqlquery);
		query.setParameter("username", username);
		List<BillingAddress>li=query.list();
		System.out.println("billingAddressList method"+li);
		
		return li;
	}

}
