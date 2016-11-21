package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/submit")
	public ModelAndView saveAddCategory(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("index");
		
		String categoryID=request.getParameter("categoryID");
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		Category c=categoryDAO.addCategory(categoryID, categoryName, categoryDescription);
		mv.addObject("category", c);
		return mv;

		
	}

}
