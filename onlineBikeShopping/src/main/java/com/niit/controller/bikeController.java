  package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping
;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@SuppressWarnings("unused")
@Controller
 
public class bikeController { 
	
	ModelAndView m=new ModelAndView();
	
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
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView signup()
	{
		System.out.println("-----Signup Controller------");
		m.setViewName("signup");
		return m;
	}
	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public ModelAndView cart()
	{
		System.out.println("-----Cart Controller------");
		m.setViewName("cart");
		return m;
	}
	@RequestMapping(value="/adduser",method=RequestMethod.GET)
	public ModelAndView add()
	{
		System.out.println("-----add Controller------");
		m.setViewName("adduser");
		return m;
	}
	
	
	
	
	
}