package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.ShippingAddressDAO;
import com.niit.model.ShippingAddress;
import com.niit.model.PaymentMethod;

@Controller
public class ShippingController {
	
	@Autowired
	ShippingAddressDAO shippingaddressDAO;
	
	@RequestMapping("/save")
	public ModelAndView save(HttpServletRequest request,HttpSession session, Model m){
		ModelAndView mv = new ModelAndView("paymentmethod");
		ShippingAddress u=new ShippingAddress();
        String username=(String)session.getAttribute("sessname");
        System.out.println(username);
		String line1=request.getParameter("line1");
		System.out.println(line1);
		String line2=request.getParameter("line2");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String zipcode=request.getParameter("zipcode");
		String country=request.getParameter("country");
		
		u.setUsername(username);
		u.setLine1(line1);
		u.setLine2(line2);
		u.setCity(city);
		u.setState(state);
		u.setZipcode(zipcode);
		u.setCountry(country);
		System.out.println("values are"+u);
		shippingaddressDAO.addAddress(u);
		Gson g=new Gson();
		String addr=g.toJson(u);
		System.out.println("address json"+addr);
		mv.addObject("address", addr);
		
		return mv;	
	}

	
}
