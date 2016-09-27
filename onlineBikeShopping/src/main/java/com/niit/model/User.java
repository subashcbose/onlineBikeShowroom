package com.niit.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="User")
public class User {
	@Id
	@Column
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotEmpty(message="Enter the name")
	private String name;
	@Column
	@Email(message="Enter Emai_id")
	private String email;
	@Column
	@NotEmpty(message="enter the password")
	@Size(min = 6, max = 15)
	private String password;
	private Boolean enabled;
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public int getid() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
}