package com.niit.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class CartController {
	
	@Autowired
	ProductDAO productDAO;
	UserDAO userDAO;
	/* */

	@RequestMapping("/Cart/{productID}")
	public ModelAndView Cart(@PathVariable String productID)
	{
		
		Product ep =productDAO.getProductByID(productID);
		return new ModelAndView("Cart","productdetail",ep);
		
	}
	
	@RequestMapping("/AddToCart/{productID}")
	public ModelAndView Cart(@PathVariable("productID") String productID, Principal principal ){
		
		ModelAndView model=new ModelAndView("Cart");
		System.out.println(principal.getName());
		
		//User user= userDAO.getUserByUsername(principal.getName());
		//model.addObject("user", user);
		//Cart cart= user.getCart();
		Product product=productDAO.getProductByID(productID);
		//List<Item> items=cart.getItems();
		
		/*for (int i=0;i<items.size; i++){
			if(product.getProductID()==items.get(i).getProduct().getProductID()){
				Items item=item.get(i);
				item.setQuantity(item.getQuantity()+1);
				item.setItemTotal(product.getPrice()*item.getQuantity());
				itemDAO.addItem(item);
				
				return model;
			}
		}
		
		Item item=new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(product.getPrice()*item.getQuantity());
		item.setCart(cart);
		
		itemDAO.addItem(item);*/
		
		return model;
	}
	
}
