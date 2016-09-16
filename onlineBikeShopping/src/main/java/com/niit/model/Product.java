package com.niit.model;


import javax.persistence.*;

@Entity
@Table(name="Product")
public class Product {
@Id
@Column
@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
@Column
	private String description;
@Column
	private int price;
@Column
	private String category_id;
@Column
	private String supplier_id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	
		}
