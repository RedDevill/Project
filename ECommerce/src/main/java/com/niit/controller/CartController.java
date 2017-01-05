package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Item;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class CartController {
	
	@Autowired
	ProductDAO productDAO;
	/* */
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ItemDAO itemDAO;
	
	/*@RequestMapping("/Cart/{productID}")
	public ModelAndView Cart(@PathVariable String productID)
	{
		
		Product ep =productDAO.getProductByID(productID);
		Ite i=new Item();
		return new ModelAndView("Cart","productdetail",ep);
		
	}*/
	@RequestMapping("/addtocart")
	public ModelAndView Cart1()
	{
		System.out.println("hello cart");
		return new ModelAndView("Cart");
		
	}
	
	@RequestMapping("/AddToCart/{productID}")
	public ModelAndView Cart(@PathVariable("productID") String productID,HttpSession session,HttpServletRequest request){
		System.out.println("starting of addtocart");
		
		ModelAndView model=new ModelAndView("Cart");
		session=request.getSession(false);
		String username=(String)session.getAttribute("sessname");
		//System.out.println(principal.getName());
		System.out.println("username is"+username);
		User user= userDAO.getUserByUsername(username);
		model.addObject("user", user);
		com.niit.model.Cart cart= user.getCart();
		Product product=productDAO.getProductByID(productID);
		List<Item> items=cart.getItems();
		
		for (int i=0;i<items.size(); i++){
			if(product.getProductID()==items.get(i).getProduct().getProductID()){
				Item item=items.get(i);
				item.setQuantity(item.getQuantity()+1);
				item.setItemTotal(product.getPrice()*item.getQuantity());
				itemDAO.addItem(item);
				
				return model;
			}
		}
		
		Item item=new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(product.getPrice()* item.getQuantity());
		item.setCart(cart);
		
		itemDAO.addItem(item);
		
		return model;
	}
	
}
