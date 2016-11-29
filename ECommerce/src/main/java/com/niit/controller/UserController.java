package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.model.User;



@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/login")
	public ModelAndView validateUser(HttpServletRequest request){
		HttpSession session = request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean x=userDAO.validate(username, password);
		
		System.out.print("Welcome "+ username);
		session.setAttribute("sessname",username); 
		 
		if(x){
			return new ModelAndView("welcome");
		}
		else{
			return new ModelAndView("Error");
		}
		
	}
	
	@RequestMapping("/SignUP")
		public ModelAndView saveSignup(HttpServletRequest request){
			ModelAndView mv = new ModelAndView("wregistration");
			User u=new User();
			String username=request.getParameter("username");
			String firstname=request.getParameter("firstname");
			String lastname=request.getParameter("lastname");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String dateofbirth=request.getParameter("dateofbirth");
			String gender=request.getParameter("gender");
			u.setUsername(username);
			u.setFirstname(firstname);
			u.setLastname(lastname);
			u.setEmail(email);
			u.setPassword(password);
			u.setDateofbirth(dateofbirth);
			u.setGender(gender);
			userDAO.addUser(u);
			mv.addObject("user", u);
			return mv;

			
		}
}
