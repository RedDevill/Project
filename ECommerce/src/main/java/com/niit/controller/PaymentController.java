package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.PaymentDAO;
import com.niit.model.Cart;
import com.niit.model.Orders;
import com.niit.model.PaymentMethod;
import com.niit.model.ShippingAddress;
import com.niit.dao.CartDAO;
import com.niit.dao.OrdersDAO;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentDAO paymentDAO;
	
	@Autowired
	OrdersDAO ordersDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping("/paymentmethod1")
	public ModelAndView paymentmethod(HttpServletRequest request, HttpSession session){
		ModelAndView mv = new ModelAndView("OrderSummery");
		PaymentMethod p =new PaymentMethod();
		 String username=(String)session.getAttribute("sessname");
		
		String paymentmethod =request.getParameter("paymentmethod");
		
		p.setPaymentmethod(paymentmethod);
		paymentDAO.addPayment(p);
		mv.addObject("Payment",p);
		ShippingAddress sa=ordersDAO.getShippingByUsername(username);
		mv.addObject("sa",sa);
		List<Cart>  ca=cartDAO.cartList(username);
		mv.addObject("ca",ca);
		Long total=(Long)cartDAO.getTotalAmount(username);
		mv.addObject("g",total);
		return mv;
	}	

}
