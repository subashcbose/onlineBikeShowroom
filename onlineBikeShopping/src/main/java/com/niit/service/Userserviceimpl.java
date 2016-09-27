
	package com.niit.service;

	
	
	import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Propagation;
	import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.Userdao;
import com.niit.model.User;
	@SuppressWarnings("unused")
	@Service("Userservice")
	public class Userserviceimpl implements Userservice {
		@Autowired
		Userdao cd;
		
		@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
		public User findById(Integer id) {
			
			return cd.findById(id);
		}
		
		@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
		public List<User> findAll() {
			List<User>all=cd.getItems();
			return all;
		}
		
		@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
		public void saveOrUpdate(User c) {
			cd.save(c);
			
		}

		@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
		public void delete(int id) {
		cd.delete(id);
		}	
	}


