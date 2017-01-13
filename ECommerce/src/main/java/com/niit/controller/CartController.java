package com.niit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.CartDAO;
import com.niit.dao.ItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Cart;
import com.niit.model.Item;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class CartController {
	@Autowired
	CartDAO cartDAO;
	
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
		Item i=new Item();
		return new ModelAndView("Cart","productdetail",ep);
		
	}*/
	@RequestMapping("/addtocart")
	public ModelAndView Cart1()
	{
		System.out.println("hello cart");
		return new ModelAndView("Cart");
		
	}
	@RequestMapping("/cart_checkout")
	public ModelAndView cart(HttpServletRequest request,HttpSession session)
	{
		
		//model.addAttribute("cart",new Cart());
		ModelAndView mv=new ModelAndView("ShippingAddress");
		//String gtotal=request.getParameter("g");
		//System.out.println("Grandtotal cart controller"+gtotal);
			return mv;
		
	}
	
/*	@RequestMapping("/AddToCart/{productID}")
	public ModelAndView Cart(@PathVariable("productID") String productID,HttpSession session,HttpServletRequest request){
		System.out.println("starting of addtocart");
		
		ModelAndView model=new ModelAndView("Cart");
		session=request.getSession(false);
		//String username=(String)session.getAttribute("sessname");
		String username="Harsh";
		//System.out.println(principal.getName());
		System.out.println("username is"+username);
		User user= userDAO.getUserByUsername(username);
		model.addObject("user", user);
		com.niit.model.Cart cart= user.getCart();
		Product product=productDAO.getProductByID(productID);
		Item item=new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(product.getPrice()* item.getQuantity());
		item.setCart(cart);
		
		itemDAO.addItem(item);
		List<Item> a=new ArrayList<Item>();
		a.add(new Item(101, product, item.getQuantity(), item.getItemTotal(),cart));
		cart.setItems(a);
		List<Item> items=cart.getItems();
		//List<Item> items=new ArrayList<Item>();
		
		
		for (int i=0;i<items.size(); i++){
			if(product.getProductID()==items.get(i).getProduct().getProductID()){
				Item item1=items.get(i);
				item.setQuantity(item1.getQuantity()+1);
				item.setItemTotal(product.getPrice()*item1.getQuantity());
				itemDAO.addItem(item);
				
				return model;
			}
		}
		
		
		return model;
	}
	*/



/*@RequestMapping("/AddToCart/{productID}")
public ModelAndView cart1(@PathVariable("productID") String productID)
{
	Product ep =productDAO.getProductByID(productID);	
	Item i=new Item();
	i.setProduct(ep);
	i.setQuantity(1);
	i.setItemTotal(ep.getPrice()*i.getQuantity());
	itemDAO.addItem(i);
	List<Item> listItems=itemDAO.getItem();
	System.out.println("items in list is"+listItems);
	return new ModelAndView("Cart2","listItems",ep);
}*/
	
	@RequestMapping("/Cart/{productid}")
	public ModelAndView addcart(@PathVariable String productid,@RequestParam("qty") String qty,HttpSession session,HttpServletRequest request,@ModelAttribute Cart cart)
	{
		
		session=request.getSession(false);
		String username=(String)session.getAttribute("sessname");
		System.out.println("INSIDE CART USERNAME"+username);
		if(username == null)
		{
			
			return new ModelAndView("Login");
		}
		else{
		ModelAndView mv=new ModelAndView("Cart3");
		System.out.println("product id is"+productid);
		Product product=productDAO.getProductByID(productid);
		cart.setProductid(product.getProductID());
		cart.setProductprice(product.getPrice());
		cart.setProductname(product.getProductName());
		cart.setUsername(username);
		int q=Integer.parseInt(qty);
		cart.setQty(q);
		cart.setAddedDate(new Date());
		System.out.println("INSERT CART CONTROLLER"+cart);
		cartDAO.addCart(cart);
		Gson gson=new Gson();
		List<Cart> cart1 =cartDAO.cartList(username);
		String p=gson.toJson(cart1);
		mv.addObject("p",p);
		System.out.println("GSON VALUE:"+p);
		Long total=(Long)cartDAO.getTotalAmount(username);
		//Long gtotal=Long.parseLong(gson.toJson(total));
		mv.addObject("g",total);
		String json=gson.toJson(total);
		System.out.println("total"+json);
		mv.addObject("g1",json);
		session.setAttribute("grandtotal", total);
		System.out.println("Gtotal cart controller gson"+total);
		
		return mv;
		}
		
	}
	@RequestMapping("/removeproduct/{productname}")
	public ModelAndView removecart(@PathVariable String productname)
	{
		
		cartDAO.deleteCart(productname);
		return new ModelAndView("redirect/Cart3");
		
		
	}
}