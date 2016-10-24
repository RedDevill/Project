package com.niit.dao;

import org.springframework.stereotype.Repository;

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
}
