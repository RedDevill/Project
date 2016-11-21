package com.niit.dao;


import org.springframework.stereotype.Repository;

import com.niit.model.Category;


@Repository
public class CategoryDAO {

	public Category addCategory(String categoryID ,String categoryName,String categoryDescription)
	{
		Category c =new Category();
		c.setCategoryID(categoryID);
		c.setCategoryName(categoryName);
		c.setCategoryDescription(categoryDescription);
	
		return c;
	}
}
	

