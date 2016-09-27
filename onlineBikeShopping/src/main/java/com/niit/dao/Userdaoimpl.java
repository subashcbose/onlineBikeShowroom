package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.niit.model.Product;
import com.niit.model.User;


@Repository("UserDao")
public class Userdaoimpl implements Userdao {
	
	@Autowired
	private SessionFactory sf;
	
	@SuppressWarnings("unchecked")

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<User> getItems() {		
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		return (List<User>) sf.getCurrentSession().createCriteria(User.class).list();
	}


	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public User findById(Integer id) {
		Session s =sf.openSession();
		Transaction t = s.beginTransaction();
		User persistentInstance = (User)s.load(User.class, id);
		t.commit();
		if (persistentInstance != null) {
		    return persistentInstance;
		}
		return null;
	}

	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void save(User c) {
		
		   Session session=sf.getCurrentSession();
		   Transaction trans=(Transaction) session.beginTransaction();
		   c.setEnabled(true);
		   session.saveOrUpdate(c);
		   	trans.commit();
				
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void update(User c) {
		Session s =sf.openSession();
		Transaction t = s.beginTransaction();
		Object persistentInstance = s.load(User.class, c.getid());
		if (persistentInstance != null) {
		    s.update(c);
		}
		t.commit();
	}
	public void delete(int id) {
		System.out.println(id);
		
		// TODO Auto-generated method stub
		Session s =sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		Object persistentInstance = s.get(User.class, id);
		if (persistentInstance != null) {
		    s.delete(persistentInstance);
		}
		t.commit();
	
	}
     

	
	
	
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public void addUser(User c) {
		// TODO Auto-generated method stub
		Session s = sf.getCurrentSession();
		
		org.hibernate.Transaction t = s.beginTransaction();
		
		//Transaction t = (javax.transaction.Transaction) s.beginTransaction();
		s.saveOrUpdate(c);
		
		t.commit();
		
		
	}

	public List<User> viewAllUsers() {
		// TODO Auto-generated method stub
		
		
		
		return ( List<User>)sf.getCurrentSession().createCriteria(User.class).list();
	}

}
