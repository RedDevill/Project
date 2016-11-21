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

	@RequestMapping("/submit2")
	public ModelAndView saveAddSupplier(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("#");
		
		String supplierID=request.getParameter("supplierID");
		String supplierName=request.getParameter("supplierName");
		String supplierDescription=request.getParameter("supplierDescription");
		Supplier s=supplierDAO.addSupplier(supplierID, supplierName, supplierDescription);
		mv.addObject("supplier", s);
		return mv;

		
	}

}
