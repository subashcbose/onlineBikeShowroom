package com.niit.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;
import com.niit.model.Product;



@SuppressWarnings("unused")
@Repository("productdao")
public class Productdaoimpl implements Productdao {

	@Autowired
	private SessionFactory sf;
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
		Session s =sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(p);
		t.commit();
	}

	/* (non-Javadoc)
	 * @see com.shoes.DAO.ProductDAO#viewAllProducts()
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Product> viewAllProducts() {
		// TODO Auto-generated method stub
		Session s =sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		List<Product> l1 = (List<Product>)sf.getCurrentSession().createCriteria(Product.class).list();
		t.commit();
		return l1;
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void delProduct(int id) {
		// TODO Auto-generated method stub
		Session s =sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		Object persistentInstance = s.load(Product.class, id);
		if (persistentInstance != null) {
		    s.delete(persistentInstance);
		}
		t.commit();
	}

/*
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void updateProduct(Product p) {		
		sf.getCurrentSession().update(p);
	}
*/

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session s =sf.openSession();
		Transaction t = s.beginTransaction();
		Object persistentInstance = s.load(Product.class, p.getId());
		if (persistentInstance != null) {
		    s.update(p);
		}
		t.commit();
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Product viewProductById(int id) {
		// TODO Auto-generated method stub
		Session s =sf.openSession();
		Transaction t = s.beginTransaction();
		Product persistentInstance = (Product)s.load(Product.class, id);
		t.commit();
		if (persistentInstance != null) {
		    return persistentInstance;
		}
		return null;
	}

}

