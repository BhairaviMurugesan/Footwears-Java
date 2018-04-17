package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.ShippingaddressDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.Shippingaddress;
import com.niit.model.User;



@Controller
public class ShippingaddressController {
	@Autowired
	private ShippingaddressDao shippingaddressDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private Cart cart;

	@RequestMapping("shippingaddressPage")
	public ModelAndView newShippingaddress(){
		
		ModelAndView mv = new ModelAndView("UserLogin");
		mv.addObject("newShippingaddressClicked", "true");
		return mv;
	}
	@RequestMapping("addShippingaddress")
	public String addShippingaddress(Principal p, @ModelAttribute Shippingaddress shippingaddress){
		String email = p.getName();
		User user = userDao.getByEmail(email);
		shippingaddress.setUserId(user.getUserId());
		shippingaddress.setEmailId(email);
		shippingaddressDao.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
		
	}
	
	@RequestMapping("proceed")
	public String Proceed(Principal p, Model model){
		String email = 	p.getName();
		List<Shippingaddress> shippingList = shippingaddressDao.list(email);
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("viewShippingAddressClicked", true);
	 return "UserLogin";
	}
	@RequestMapping("shippingAddress")
	public String shippingAddress(@RequestParam("shippingId") int shippingId, Principal p, Model model){
		
		String email = p.getName();
		
		/*cartDao.updateshipping(email, shippingId);*/
		model.addAttribute("thankyouPage", true);
		
		List<Cart> cartList = cartDao.getByEmailId(email);
		
		for(Cart c : cartList){
			c.setShippingId(shippingId);
			cartDao.saveOrUpdate(c);
		}
		
		return "UserLogin";
		
	}
	@RequestMapping("deleteshippingAddress")
	public String deleteshippingAddress(@RequestParam("shippingId") int shippingId, Model model){
		shippingaddressDao.delete(shippingId);
		return "redirect:proceed";
		
	}
	@RequestMapping("editshippingAddress")
	public String editshippingAddress(@RequestParam("shippingId")int shippingId,Model model){
	Shippingaddress shippingaddress=	shippingaddressDao.getByShippingId(shippingId);
		model.addAttribute("shippingaddress", shippingaddress);
		model.addAttribute("editShippingAddressClicked", true);
		return "UserLogin";
		
	}
	@RequestMapping("editShippingaddress")
	public String editShippingAddress(Principal p, @ModelAttribute Shippingaddress shippingaddress, Model model){
		
		String email = p.getName();
		User user = userDao.getByEmail(email);
		
		shippingaddress.setEmailId(email);
		shippingaddress.setUserId(user.getUserId());
		
		shippingaddressDao.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
	}
	
	@ModelAttribute
	public void commonToUser(Model model){
		model.addAttribute("userLoggedIn", "true");
	}
}