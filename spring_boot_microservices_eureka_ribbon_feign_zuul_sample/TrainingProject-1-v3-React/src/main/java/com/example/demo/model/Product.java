package com.example.demo.model;

import java.util.ArrayList;
import java.util.List;


import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;


@Entity
@Table(name="product")
public class Product {
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	@Column (name = "name", nullable = false)
	private String name;
	
	@Column (name = "quantity", nullable = false)
	private int quantity;
	
	@Column (name = "price", nullable = false)
	private double price;
	
	@Column (name = "unit", nullable = false)
	private String unit;
	
	@Column (name = "type")
	private String type;
	
	@Column (name = "createdBy")
	private String createdBy;
	
	@Column(name = "description")
	private String description;

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

	public String getCreatedBy() {
		return createdBy;
	}
 
	@JsonProperty("createBy")
	public void setCreatedby(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
		@ManyToOne(fetch = FetchType.EAGER)
		private ProductGroup group;
	    @JoinColumn(name = "group_id")
	    public ProductGroup getGroup() {
	        return group;
	    }

	    public void setGroup(ProductGroup group) {
	        this.group = group;
	    }
	
//	@OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
//	private List<Image> image = new ArrayList<Image>() ;
//    @JsonManagedReference
////    @JsonIgnore
//    public List<Image> getImage() {
//        return image;
//    }
//
//    public void setImage(List<Image> image) {
//        this.image = image;
//    }
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
