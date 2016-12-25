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

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
import com.niit.model.Product;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;

	/*@RequestMapping("/submit")
	public String saveAddCategory(HttpServletRequest request){
		//ModelAndView mv = new ModelAndView("ViewCategory");
		Category c=new Category();
		String categoryID=request.getParameter("categoryID");
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		c.setCategoryID(categoryID);
		c.setCategoryName(categoryName);
		c.setCategoryDescription(categoryDescription);
		categoryDAO.addCategory(c);
		//mv.addObject("category", c);
		return "redirect:/ViewCategory";

		
	}*/
	
	
	@RequestMapping("/submit")
	public ModelAndView add(@ModelAttribute("c") Category category)
	{
		categoryDAO.addCategory(category);
		return new ModelAndView("redirect:/ViewCategory");
	}
	
	@RequestMapping("/AddCategory")
	public ModelAndView AddCategory()
	{
		ModelAndView mv=new ModelAndView("AddCategory","command", new Category());
		return mv;
	}
	
	@RequestMapping("/ViewCategory")
	public ModelAndView viewProduct()
	{
		ModelAndView mv=new ModelAndView("ViewCategory");
		List<Category> list=categoryDAO.getCategory();
		System.out.println("Category list"+list);
		/*mv.addObject("listCategory",list);
		return mv;*/
		return new ModelAndView("ViewCategory","listCategory", list);
	}
	
	@RequestMapping("/EditCategory/{categoryID}")
	public ModelAndView editcategory(@PathVariable String categoryID)
	{
		Category ep =categoryDAO.getCategoryByID(categoryID);
		return new ModelAndView("EditCategory","command",ep);
		
	}
	
	@RequestMapping(value="/editsave1",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("category") Category category)
	{
		categoryDAO.updateCategory1(category);
		//System.out.println("AFTER UPDATING "+Category);
		return new ModelAndView("redirect:/ViewCategory");
	}
	
	@RequestMapping("/deletecategory/{categoryID}")
	public ModelAndView delete(@PathVariable String categoryID)
	{
		categoryDAO.deleteCategory1(categoryID);
		//System.out.println("AFTER UPDATING "+Category);
		return new ModelAndView("redirect:/ViewCategory");
		
	}
}
