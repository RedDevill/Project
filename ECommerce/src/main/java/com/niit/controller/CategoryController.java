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
	public ModelAndView saveSignup(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("#");
		
		String CategoryID=request.getParameter("CategoryID");
		String CategoryName=request.getParameter("CategoryName");
		String CategoryDescription=request.getParameter("CategoryDescription");
		Category c=categoryDAO.addCategory(CategoryID, CategoryName, CategoryDescription);
		mv.addObject("category", c);
		return mv;

		
	}

}
