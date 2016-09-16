package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping
;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.Userdao;
import com.niit.model.User;
import com.niit.service.UserService;

@SuppressWarnings("unused")
@Controller

public class AdduserController {
	
	ModelAndView m = new ModelAndView();
	
	@Autowired
	private UserService userService;
	@Autowired
	private Userdao userdao;
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView adduser(@ModelAttribute("command")User user, BindingResult result){
	
		userService.add(user);
		m.setViewName("redirect:/index");
		return m;
	}
		
	}
	
	
	
	


