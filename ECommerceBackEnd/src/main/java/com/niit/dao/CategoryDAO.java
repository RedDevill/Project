package com.niit.dao;

import org.springframework.stereotype.Repository;

import com.niit.model.Category;


@Repository
public class CategoryDAO {

	public Category addCategory(String CategoryID ,String CategoryName,String CategoryDescription)
	{
		Category c =new Category();
		c.setCategoryID(CategoryID);
		c.setCategoryName(CategoryName);
		c.setCategoryDescription(CategoryDescription);
	
		return c;
	}
}
	

