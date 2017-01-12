package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Item {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@OneToOne
	private Product product;
	
	private int quantity;
	private int itemTotal;
	
	public Item()
	{
		
	}
	
	
	public Item(int id, Product product, int quantity, int itemTotal, Cart cart) {
		super();
		this.id = id;
		this.product = product;
		this.quantity = quantity;
		this.itemTotal = itemTotal;
		
	}
	
	@Override
	public String toString() {
		return "Item [id=" + id + ", product=" + product + ", quantity=" + quantity + ", itemTotal=" + itemTotal + "]";
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public int getItemTotal() {
		return itemTotal;
	}
	public void setItemTotal(int itemTotal) {
		this.itemTotal = itemTotal;
	}

}
