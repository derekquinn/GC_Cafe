package com.cafecalledencapsulation.cafe;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="items") // name of SQL table

public class Item {
	
	// Mark the ID, and designate that it is auto-generated
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	//@Column(name="food_id") // name of SQL column if they are different than actual db column names

	private Long id;
	private String name;
	private String description;
	private int quantity;
	private double price;

	// no args constructor
	public Item() {

	}

	// overloaded constructor
	public Item(Long id, String name, String description, int quantity, double price) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.quantity = quantity;
		this.price = price;
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
}
