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

}
