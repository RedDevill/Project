package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
import com.niit.model.User;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/submit")
	public ModelAndView saveAddCategory(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("ViewCategory");
		Category c=new Category();
		String categoryID=request.getParameter("categoryID");
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		c.setCategoryID(categoryID);
		c.setCategoryName(categoryName);
		c.setCategoryDescription(categoryDescription);
		categoryDAO.addCategory(c);
		mv.addObject("category", c);
		return mv;

		
	}

}
