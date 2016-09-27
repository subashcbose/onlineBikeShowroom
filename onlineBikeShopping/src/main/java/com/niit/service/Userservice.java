package com.niit.service;

import java.util.List;

import com.niit.model.User;

public interface Userservice {

User findById(Integer id);
	
	List<User> findAll();

	public void saveOrUpdate(User c);
	
	public void delete(int id);
	
}
