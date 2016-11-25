package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class UserDAO {
	
	@Autowired
  SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
  

	
	public boolean validate(String username, String password){
		if(username.equals("harsh")&& password.equals("123")){
			return true;
		}
		else{
			return false;
		}
		
	}
	
	/*public User adduser(String firstname,String lastname,String email,String spassword,String dateofbirth, String gender)
	{
		User u =new User();
		u.setFirstname(firstname);
		u.setEmail(email);
		u.setLastname(lastname);
		u.setSpassword(spassword);
		u.setDateofbirth(dateofbirth);
		u.setGender(gender);
	
		return u;
	}*/
	
	
	public void addUser(User u)
	{
		Session sess=getSession();
		org.hibernate.Transaction tx=sess.beginTransaction();
		sess.save(u);
		tx.commit();
		sess.close();
	}
	
	
	
}
