package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;

@Controller
public class HomeController {

	@Autowired
	private SupplierDao supplierDao;
	@RequestMapping("/home")
	public String homePage(Model model) {
		List<Supplier> supplierList = supplierDao.list();
		model.addAttribute("supplierList", supplierList);
		return "home";
	}
	
	@RequestMapping("/login")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("login");

		if (error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
		}

		mv.addObject("loginButtonClicked", true);
		return mv;
	}
	
	@RequestMapping("/signup")
	public String signupPage(Model model) {

		return "signup";
	}
	
	@RequestMapping("/about")
	public String aboutPage(Model model) {

		return "about";
	}
}