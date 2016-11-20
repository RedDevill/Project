package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping("/submit")
	public ModelAndView saveSignup(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("#");
		
		String SupplierID=request.getParameter("SupplierID");
		String SupplierName=request.getParameter("SupplierName");
		String SupplierDescription=request.getParameter("SupplierDescription");
		Supplier s=supplierDAO.addSupplier(SupplierID, SupplierName, SupplierDescription);
		mv.addObject("supplier", s);
		return mv;

		
	}

}
