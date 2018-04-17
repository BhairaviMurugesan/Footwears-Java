package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillingaddressDao;
import com.niit.model.Billingaddress;

@Controller
public class BillingaddressController {


	@Autowired
	private BillingaddressDao billingaddressDao;
	
	@RequestMapping("billingaddressPage")
	public ModelAndView newBillingaddress(){
		
		ModelAndView mv = new ModelAndView("NewBillingaddress");
		return mv;
	}
	
	@RequestMapping("addBillingaddress")
	public String addBillingaddress(@ModelAttribute Billingaddress billingaddress){
		billingaddressDao.saveOrUpdate(billingaddress);
		return "ViewBillingaddress";
		
	}
}