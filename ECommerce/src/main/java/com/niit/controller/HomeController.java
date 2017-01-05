package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;

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
	
	@RequestMapping("/Login")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView("Login");
		return mv;
	}
	
	@RequestMapping("/Error")
	public ModelAndView error()
	{
		ModelAndView mv=new ModelAndView("Error");
		return mv;
	}
	
	@RequestMapping("/Signup")
	public ModelAndView signup()
	{
		ModelAndView mv=new ModelAndView("Signup");
		return mv;
	}
	
	
	@RequestMapping("/About Us")
	public ModelAndView AboutUs()
	{
		ModelAndView mv=new ModelAndView("About Us");
		return mv;
	}
	
	
	
	@RequestMapping("/Contact Us")
	public ModelAndView ContactUs()
	{
		ModelAndView mv=new ModelAndView("Contact Us");
		return mv;
	}
	
	@RequestMapping("/Admin")
	public ModelAndView Admin()
	{
		ModelAndView mv=new ModelAndView("Admin");
		return mv;
	}
	@RequestMapping("/Cart")
	public ModelAndView Cart()
	{
		ModelAndView mv=new ModelAndView("Cart");
		return mv;
	}
	
	@RequestMapping("/Address")
	public ModelAndView address()
	{
		ModelAndView mv=new ModelAndView("Address");
		return mv;
	}
	@RequestMapping("/ShippingAddress")
	public ModelAndView Shippingaddress()
	{
		ModelAndView mv=new ModelAndView("ShippingAddress");
		return mv;
	}
	
	@RequestMapping("/OrderSummery")
	public ModelAndView OrderSummery()
	{
		ModelAndView mv=new ModelAndView("OrderSummery");
		return mv;
	}
	@RequestMapping("/Thankyou")
	public ModelAndView thankyou()
	{
		ModelAndView mv=new ModelAndView("Thankyou");
		return mv;
	}
}
