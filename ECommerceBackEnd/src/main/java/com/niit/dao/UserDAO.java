package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;
import com.niit.model.User;

@Repository
@Transactional
@EnableTransactionManagement
public class UserDAO {
	
	@Autowired
  SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
  

	
	public boolean validate(String username, String password){
		Session sess=getSession();
	    Transaction tx=sess.beginTransaction();
		boolean flag= false;
		String hql="Select username,password from User where username=:username and password=:password";
		Query q = sess.createQuery(hql);
		q.setParameter("username", username);
		q.setParameter("password", password);
		
		System.out.println("username is:"+username+" and password is"+password);
		List<User> l= (List<User>)q.list();
			if(l.size()>0)
			{ 
				System.out.println("list is "+l);
				flag= true;
			
			}
		tx.commit();	
		return flag;
	}
	
	public List<User> getUser()
	{
		Session sess=getSession();
		String hql="from User";
		Query q = sess.createQuery(hql);
		List<User> listUser =q.list();
		return listUser;
	}
	
	@Transactional
	public void addUser(User u)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(u);
		tx.commit();
		sess.close();
	}

}
