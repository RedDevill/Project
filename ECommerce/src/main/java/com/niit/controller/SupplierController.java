package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;

	/*@RequestMapping("/submit2")
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

		
	}*/
	
	@RequestMapping("/submit2")
	public ModelAndView add(@ModelAttribute("s") Supplier supplier)
	{
		supplierDAO.addSupplier(supplier);
		return new ModelAndView("redirect:/ViewSupplier");
	}
	
	
	@RequestMapping("AddSupplier")
	public ModelAndView AddSupplier()
	{
		ModelAndView mv=new ModelAndView("AddSupplier","command", new Supplier());
		return mv;
	}

	@RequestMapping("/ViewSupplier")
	public ModelAndView viewSupplier()
	{
		ModelAndView mv=new ModelAndView("ViewSupplier");
		List<Supplier> list=supplierDAO.getSupplier();
		System.out.println("Supplier list"+list);
		/*mv.addObject("listSupplier",list);
		return mv;*/
		return new ModelAndView("ViewSupplier","listSupplier", list);
	}
	
	@RequestMapping("/EditSupplier/{supplierID}")
	public ModelAndView editSupplier(@PathVariable String supplierID)
	{
		Supplier ep =supplierDAO.getSupplierByID(supplierID);
		return new ModelAndView("EditSupplier","command",ep);
		
	}
	
	@RequestMapping(value="/editsave2",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("supplier") Supplier supplier)
	{
		supplierDAO.updateSupplier1(supplier);
		//System.out.println("AFTER UPDATING "+Supplier);
		return new ModelAndView("redirect:/ViewSupplier");
	}
	
	@RequestMapping("/deletesupplier/{supplierID}")
	public ModelAndView delete(@PathVariable String supplierID)
	{
		supplierDAO.deletesupplier1(supplierID);
		//System.out.println("AFTER UPDATING "+Supplier);
		return new ModelAndView("redirect:/ViewSupplier");
		
	}
}
