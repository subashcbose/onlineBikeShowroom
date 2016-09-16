package com.niit.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class Userdaoimpl implements Userdao {

	

	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public void add(User user) {
		try{
			sessionFactory.getCurrentSession().save(user);
		} catch (Exception e){
			throw e;
		}
	}
}

	
