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

	@RequestMapping("/submit1")
	public ModelAndView saveAddProduct(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("#");
		
		String productID=request.getParameter("productID");
		String productName=request.getParameter("productName");
		String productDescription=request.getParameter("productDescription");
		Product p=productDAO.addProduct(productID, productName, productDescription);
		mv.addObject("product", p);
		return mv;

		
	}

}
