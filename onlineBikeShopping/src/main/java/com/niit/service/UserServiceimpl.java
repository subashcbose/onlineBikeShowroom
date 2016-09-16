 package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.Userdao;
import com.niit.model.User;

@Service
@Transactional
public class UserServiceimpl implements UserService {

	
	@Autowired
	private Userdao userdao;
	
	

	@Override
	public void add(User user) {
 		try{
			userdao.add(user);
		} catch (Exception e){
			throw e;
		}
		
	}

	
}
