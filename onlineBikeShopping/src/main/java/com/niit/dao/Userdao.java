package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface Userdao {
	
	public User findById(Integer id);
	public List<User> getItems();
	public void save(User c);
	public void update(User c);
	public void delete(int id);

}
