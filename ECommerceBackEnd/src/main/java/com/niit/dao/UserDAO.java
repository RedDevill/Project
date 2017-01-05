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

import com.niit.model.Category;
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

	public void deleteUser(String username)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		
		User u=sess.get(User.class, username);
		sess.delete(u);
		tx.commit();
		sess.close();
	}
	
	@Transactional
	public void deleteUser1(String username)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		
		User u =sess.get(User.class, username);
		sess.delete(u);
		tx.commit();
		sess.close();
	}
	
	@Transactional
	public User getUserByUsername(String username)
	{
		 User u=null;
		Session sess=getSession();
	    Transaction tx=sess.beginTransaction();
		String hql="from User where username=:username";
		Query q = sess.createQuery(hql);
		q.setParameter("username", username);
		List<User> list=q.list();
		if(list.size()>0){
		 u=(User)list.get(0);
		}
		return u;
	}
}
