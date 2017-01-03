package com.niit.model;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

public class Cart {

	@OneToOne
	User user;
	
	@OneToMany
	Item item;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	
	
	
}
