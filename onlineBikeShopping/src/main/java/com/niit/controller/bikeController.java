  package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping
;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.model.User;
import com.niit.service.Productservice;
import com.niit.service.Userservice;



@SuppressWarnings("unused")
@Controller
 
public class bikeController { 
	
	ModelAndView m=new ModelAndView();
	@Autowired
	Userservice cobj;
	@Autowired
	Productservice pobj;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView gohome()
	{
		System.out.println("-----home Controller------");
		
		
		m.setViewName("index");
		return m;
	}
	
	
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public ModelAndView about()
	{
		System.out.println("-----about Controller------");
		m.setViewName("about");
		return m;
	}
	@RequestMapping(value="/addproducts",method=RequestMethod.GET)
	public ModelAndView addproducts()
	{
		System.out.println("-----about Controller------");
		m.setViewName("addproducts");
		return m;
	}
	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public ModelAndView cart()
	{
		System.out.println("-----Cart Controller------");
		m.setViewName("cart");
		return m;
	}
	
	
	
	@RequestMapping(value="/allproducts",method=RequestMethod.GET)
	public ModelAndView allproducts()
	{
		System.out.println("-----allproducts Controller------");
		m.setViewName("allproducts");
		return m;
	}
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public ModelAndView contact()
	{
		System.out.println("-----contact Controller------");
		m.setViewName("contact");
		return m;
	}
	@RequestMapping(value="/loginpage",method=RequestMethod.GET)
	public ModelAndView loginpage()
	{
		System.out.println("-----loginpage Controller------");
		m.setViewName("loginpage");
		return m;
	}
	 @ModelAttribute("cust")
		public User getCust(){
			return new User();
		}
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView signup()
	{
		System.out.println("-----signup Controller------");
		 ModelAndView m = new ModelAndView("signup");	
		m.setViewName("signup");
		return m;
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String addCustomerdetails(@ModelAttribute("cust")@Valid User cust,BindingResult result){
		
		try{
		cobj.saveOrUpdate(cust);
		} catch (Exception e) {

		}
		 //ModelAndView m = new ModelAndView("result");
		if (result.hasErrors()) {
		//	m.addObject("command", new Customer());
			return "signUp";
		}

		else

			return "loginpage";
	}
	/*
	 Product based controller 	
	 */

		@RequestMapping(value="/viewproducts",method=RequestMethod.GET)
		public ModelAndView showProd(){
			m.setViewName("viewproducts");
			m.addObject("ls", pobj.viewAllProducts());
			return m;
		}
		 
		@RequestMapping(value="/categories",method=RequestMethod.GET)
		public ModelAndView showCategories(){
			System.out.println("-----Categories Controller-----");
			m.addObject("ls", pobj.viewAllProducts());
			m.setViewName("categories");
			return m;
		}

		@ModelAttribute("prod")
		public Product getProduct(){
			return new Product();
		}

		
		@RequestMapping(value = "/showAddProd", method = RequestMethod.GET)
		public ModelAndView showAddProd1() {
			m.setViewName("addproducts");
			m.addObject("command", new Product());
			return m;
		}
		
		@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
		public ModelAndView addProd(@ModelAttribute("prod") @Valid Product prod, BindingResult result) {
			m.setViewName("fileupload");
			try {
				
				
			pobj.addProduct(prod);	
				//pd.addCategory(prod);
			} catch (Exception e) {
			}
			if (result.hasErrors())
				m.setViewName("addProduct");
			return m;
		}
		
	
		
		
		int a;
		@RequestMapping(value="/updPd/{id}",method = RequestMethod.GET)
		public ModelAndView updProd(@PathVariable("id")int id){
			m.setViewName("updateproduct");
			//m.addObject("command", pobj.viewProductById(id));
			m.addObject("command", pobj.viewProductById(id));
			System.out.println(pobj.viewProductById(id));a=id;
			return m;
		}
		
		@RequestMapping(value="/upd",method=RequestMethod.POST)
		public ModelAndView uPrd(@ModelAttribute("onlineBikeShopping")Product p){
			p.setPid(a);
			pobj.updateProduct(p);
			m.setViewName("redirect:/viewproducts");
			return m;
		}
		
		@RequestMapping(value="/delPd/{id}",method=RequestMethod.GET)
		public ModelAndView delProd(@PathVariable("id")int id){
			pobj.delProduct(id);
			m.setViewName("redirect:/viewproducts");
			return m;
		}
	
		@RequestMapping(value="/aindex",method=RequestMethod.GET)
		public ModelAndView aindex()
		{
			System.out.println("-----aindex Controller------");
			m.setViewName("aindex");
			return m;
		}
	
}	
	
	
	
