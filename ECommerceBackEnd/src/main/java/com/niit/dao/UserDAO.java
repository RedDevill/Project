package com.niit.dao;

import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class UserDAO {

	
	public boolean validate(String username, String password){
		if(username.equals("harsh")&& password.equals("123")){
			return true;
		}
		else{
			return false;
		}
		
	}
	
	public User adduser(String firstname,String lastname,String email,String spassword)
	{
		User u =new User();
		u.setFirstname(firstname);
		u.setEmail(email);
		u.setLastname(lastname);
		u.setSpassword(spassword);
	
		return u;
	}
}
