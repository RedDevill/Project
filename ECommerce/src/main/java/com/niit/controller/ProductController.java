package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;

	/*@RequestMapping("/submit1")
	public String saveAddProduct(HttpServletRequest request){
		//ModelAndView mv = new ModelAndView("ViewProduct");
		Product p =new Product();
		String productID=request.getParameter("productID");
		String productName=request.getParameter("productName");
		String productDescription=request.getParameter("productDescription");
		String quantity =request.getParameter("quantity");
		String brand= request.getParameter("brand");
		String price= request.getParameter("price");
		String supplier=request.getParameter("supplier");
		String category= request.getParameter("category");
		p.setProductID(productID);
		p.setProductName(productName);
		p.setProductDescription(productDescription);
		p.setQuantity(quantity);
		p.setBrand(brand);
		p.setPrice(price);
		p.setSupplier(supplier);
		p.setCategory(category);
		productDAO.addProduct(p);
		//mv.addObject("product", p);
		return "redirect:/ViewProduct";
		

		
	}*/
	
	@RequestMapping("/submit1")
	public ModelAndView add(@ModelAttribute("p") Product product)
	{
		productDAO.addProduct(product);
		return new ModelAndView("redirect:/ViewProduct");
	}
	
	@RequestMapping("/product")
	public String product(Model model)
	{
		List<Product> list=productDAO.getProducts();
		Gson g=new Gson();
		String jsonlist=g.toJson(list);
		System.out.println("JSON DATA"+jsonlist);
		model.addAttribute("list",jsonlist);
		
		return "product";
	}
	
	@RequestMapping("/AddProduct")
	public ModelAndView AddProduct()
	{
		ModelAndView mv=new ModelAndView("AddProduct","command", new Product());
		return mv;
	}
	
	@RequestMapping("/ViewProduct")
	public ModelAndView viewProduct()
	{
		ModelAndView mv=new ModelAndView("ViewProduct");
		List<Product> list=productDAO.getProducts();
		System.out.println("Product list"+list);
		/*mv.addObject("listProduct",list);
		return mv;*/
		return new ModelAndView("ViewProduct","listProduct", list);
	}

	@RequestMapping("/EditProduct/{productID}")
	public ModelAndView editproduct(@PathVariable String productID)
	{
		Product ep =productDAO.getProductByID(productID);
		return new ModelAndView("EditProduct","command",ep);
		
	}
	
/*	@RequestMapping(value="/editsave",method = RequestMethod.POST)
	    public ModelAndView editsave(@ModelAttribute("ep") Product ep)
	     {  
	    productDAO.update(ep); 	
	    return new ModelAndView("redirect:/ViewProduct");
	}  */
	
	@RequestMapping(value="/editsave",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("product") Product product)
	{
		productDAO.updateProduct1(product);
		//System.out.println("AFTER UPDATING "+product);
		return new ModelAndView("redirect:/ViewProduct");
	}
	
	@RequestMapping("/deleteproduct/{productID}")
	public ModelAndView delete(@PathVariable String productID)
	{
		productDAO.deleteProduct1(productID);
		return new ModelAndView("redirect:/ViewProduct");
		
	}
}
