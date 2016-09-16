package com.niit.model;

import javax.persistence.*;
@Entity
@Table(name="User")
public class User {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int Name;
	@Column
	private String Email;
	@Column
	private String Password;
	@Column
	private String ConformPassword;
	@Column
	private String MobileNumber;
	
	public int getName() {
		return Name;
	}
	public void setName(int name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getConformPassword() {
		return ConformPassword;
	}
	public void setConformPassword(String conformPassword) {
		ConformPassword = conformPassword;
	}
	public String getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		MobileNumber = mobileNumber;
	}
	
	
}
