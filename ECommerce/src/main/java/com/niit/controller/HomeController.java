package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	

	@RequestMapping("/index")
	public ModelAndView index1()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping("Signup")
	public ModelAndView signup()
	{
		ModelAndView mv=new ModelAndView("Signup");
		return mv;
	}
	
	
	@RequestMapping("About Us")
	public ModelAndView AboutUs()
	{
		ModelAndView mv=new ModelAndView("About Us");
		return mv;
	}
	
	@RequestMapping("Contact Us")
	public ModelAndView ContactUs()
	{
		ModelAndView mv=new ModelAndView("Contact Us");
		return mv;
	}
	
	@RequestMapping("Admin")
	public ModelAndView Admin()
	{
		ModelAndView mv=new ModelAndView("Admin");
		return mv;
	}
	
	@RequestMapping("AddCategory")
	public ModelAndView AddCategory()
	{
		ModelAndView mv=new ModelAndView("AddCategory");
		return mv;
	}
	
	@RequestMapping("ViewCategory")
	public ModelAndView ViewCategory()
	{
		ModelAndView mv=new ModelAndView("ViewCategory");
		return mv;
	}
	
	@RequestMapping("AddProduct")
	public ModelAndView AddProduct()
	{
		ModelAndView mv=new ModelAndView("AddProduct");
		return mv;
	}
	
	@RequestMapping("ViewProduct")
	public ModelAndView ViewProduct()
	{
		ModelAndView mv=new ModelAndView("ViewProduct");
		return mv;
	}
	
	@RequestMapping("AddSupplier")
	public ModelAndView AddSupplier()
	{
		ModelAndView mv=new ModelAndView("AddSupplier");
		return mv;
	}

	@RequestMapping("ViewSupplier")
	public ModelAndView ViewSupplier()
	{
		ModelAndView mv=new ModelAndView("ViewSupplier");
		return mv;
	}
}
