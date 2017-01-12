package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.model.Product;
import com.niit.model.User;



@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/login1")
	public ModelAndView validateUser(HttpServletRequest request){
		System.out.println("CALLING VALIDATE METHOD");
		HttpSession session = request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username+" "+password);
		boolean x=userDAO.validate(username, password);
		
		System.out.println("Welcome "+ username);
		session.setAttribute("sessname",username); 
		 System.out.println(session.getAttribute("sessname"));
		if(x){
			System.out.println("welcome page");
			return new ModelAndView("welcome");
		}
		else{
			System.out.println("error page");
			return new ModelAndView("Error");
		}
	}
	
	@RequestMapping("/logout")
    public String logout(HttpSession session ) {
	   session.setAttribute("sessname", null);
       session.invalidate();
       return "redirect:/";
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
			u.setEnabled(true);
			u.setRole("role_user");
			userDAO.addUser(u);
			mv.addObject("user", u);
			return mv;

			
		}
	
	@RequestMapping("/ViewUsers")
	public ModelAndView viewProduct()
	{
		ModelAndView mv=new ModelAndView("ViewUsers");
		List<User> list=userDAO.getUser();
		System.out.println("Product list"+list);
		mv.addObject("listUsers",list);
		return mv;
	}
	
	@RequestMapping("/deleteuser/{username}")
	public ModelAndView delete(@PathVariable String username)
	{
		userDAO.deleteUser1(username);
		//System.out.println("AFTER UPDATING "+product);
		return new ModelAndView("redirect:/ViewUsers");
		
	}
}
