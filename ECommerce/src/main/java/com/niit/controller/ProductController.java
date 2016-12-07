package com.niit.controller;

import java.util.List;

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
	public String saveAddProduct(HttpServletRequest request){
		//ModelAndView mv = new ModelAndView("ViewProduct");
		Product p =new Product();
		String productID=request.getParameter("productID");
		String productName=request.getParameter("productName");
		String productDescription=request.getParameter("productDescription");
		String quantity =request.getParameter("quantity");
		String brand= request.getParameter("brand");
		String price= request.getParameter("price");
		String supplier=request.getParameter("supplier");
		String category= request.getParameter("category");
		p.setProductID(productID);
		p.setProductName(productName);
		p.setProductDescription(productDescription);
		p.setQuantity(quantity);
		p.setBrand(brand);
		p.setPrice(price);
		p.setSupplier(supplier);
		p.setCategory(category);
		productDAO.addProduct(p);
		//mv.addObject("product", p);
		return "redirect:/ViewProduct";
		

		
	}
	@RequestMapping("/ViewProduct")
	public ModelAndView viewProduct()
	{
		ModelAndView mv=new ModelAndView("ViewProduct");
		List<Product> list=productDAO.getProducts();
		System.out.println("Product list"+list);
		mv.addObject("listProduct",list);
		return mv;
	}
	

}
