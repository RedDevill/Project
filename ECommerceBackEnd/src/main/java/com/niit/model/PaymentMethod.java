package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class PaymentMethod {
	@Override
	public String toString() {
		return "PaymentMethod [payment_id=" + payment_id + ", paymentmethod=" + paymentmethod + "]";
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int payment_id;
	private String paymentmethod;

	
	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	
	public String getPaymentmethod() {
		return paymentmethod;
	}

	public void setPaymentmethod(String paymentmethod) {
		this.paymentmethod = paymentmethod;
	}

}
