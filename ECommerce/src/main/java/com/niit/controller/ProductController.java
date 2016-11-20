package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;

	@RequestMapping("/submit")
	public ModelAndView saveSignup(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("#");
		
		String ProductID=request.getParameter("ProductID");
		String ProductName=request.getParameter("ProductName");
		String ProductDescription=request.getParameter("ProductDescription");
		Product p=productDAO.addProduct(ProductID, ProductName, ProductDescription);
		mv.addObject("Product", p);
		return mv;

		
	}

}
