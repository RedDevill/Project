package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping("/submit2")
	public String saveAddSupplier(HttpServletRequest request){
		//ModelAndView mv = new ModelAndView("ViewSupplier");
		Supplier s= new Supplier();
		String supplierID=request.getParameter("supplierID");
		String supplierName=request.getParameter("supplierName");
		String supplierDescription=request.getParameter("supplierDescription");
		s.setSupplierID(supplierID);
		s.setSupplierName(supplierName);
		s.setSupplierDescription(supplierDescription);
		supplierDAO.addSupplier(s);
		//mv.addObject("supplier", s);
		return "redirect:/ViewSupplier";

		
	}
	
	@RequestMapping("/ViewSupplier")
	public ModelAndView viewSupplier()
	{
		ModelAndView mv=new ModelAndView("ViewSupplier");
		List<Supplier> list=supplierDAO.getSupplier();
		System.out.println("Supplier list"+list);
		mv.addObject("listSupplier",list);
		return mv;
	}
}
