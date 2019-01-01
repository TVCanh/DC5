package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	@Column (name = "name", nullable=false)
	private String name;
	
	@Column (name = "quantity",nullable=false)
	private int quantity;
	
	@Column (name = "price")
	private double price;
	
	@Column (name = "unit")
	private String unit;
	
	@Column (name = "type")
	private String type;
	
	@Column (name = "createdBy")
	private String createdBy;

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

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCreatedby() {
		return createdBy;
	}

	public void setCreatedby(String createdby) {
		this.createdBy = createdby;
	}
	public Product() {
		
	}
	public Product(String name, int quantity, double price, String unit, String type, String createdBy) {
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.unit = unit;
		this.type = type;
		this.createdBy = createdBy;
	}
	
}
