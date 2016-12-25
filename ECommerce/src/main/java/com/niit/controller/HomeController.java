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
	
	@RequestMapping("/Error")
	public ModelAndView error()
	{
		ModelAndView mv=new ModelAndView("Error");
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
	
	
}
