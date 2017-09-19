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

import com.niit.Dao.CartDAO;
import com.niit.Dao.ShippingaddressDAO;
import com.niit.Dao.UserDAO;
import com.niit.model.Cart;
import com.niit.model.Shippingaddress;
import com.niit.model.User;

@Controller
public class shippingaddressController {
	@Autowired

	private ShippingaddressDAO shippingaddressDAO;

	@Autowired

	private UserDAO userDAO;

	@Autowired

	private CartDAO cartDAO;

	@Autowired

	private Cart cart;

	@RequestMapping("/shippingaddressPage")

	public ModelAndView newShippingaddress() {

		ModelAndView mv = new ModelAndView("home");

		mv.addObject("newShippingaddressClicked", "true");

		return mv;

	}

	@RequestMapping("/addShippingaddress")

	public String addShippingaddress(Principal p, @ModelAttribute Shippingaddress shippingaddress) {

		String UserName = p.getName();

		User user = userDAO.getByUserName(UserName);
		System.out.println(user.getAddress());
		shippingaddress.setUser(user);

		shippingaddress.setEmailId(user.getEmailId());
		
		shippingaddress.setContactNumber(user.getContactNumber());
		shippingaddress.setUserName(UserName);

		shippingaddressDAO.saveOrUpdate(shippingaddress);

		return "redirect:/cart/proceed";

	}

	@RequestMapping("/cart/proceed")

	public String Proceed(Principal p, Model model) {

		String us = p.getName();

		List<Shippingaddress> shippingList = shippingaddressDAO.list(us);

		model.addAttribute("shippingList", shippingList);

		System.out.println(shippingList.size());

		model.addAttribute("viewShippingAddressClicked", true);

		return "home";

	}

	@RequestMapping("/cart/deleteshippingAddress")

	public String deleteshippingAddress(@RequestParam("shippingId") int shippingId, Model model) {

		shippingaddressDAO.delete(shippingId);

		return "redirect:/cart/proceed/";

	}

	@RequestMapping("/cart/editshippingAddress")

	public String editshippingAddress(@RequestParam("shippingId") int shippingId, Model model) {

		Shippingaddress shippingaddress = shippingaddressDAO.getByShippingId(shippingId);

		model.addAttribute("shippingaddress", shippingaddress);

		model.addAttribute("editShippingAddressClicked", true);

		return "user";

	}
	@RequestMapping("/cart/editshippingaddress")

	public String editShippingAddress(@RequestParam("shippingId")int shippingId,Model model){

	Shippingaddress shippingaddress=	shippingaddressDAO.getByShippingId(shippingId);
       System.out.println(shippingaddress.getAddress());
		model.addAttribute("shippingaddress", shippingaddress);

		model.addAttribute("newShippingaddressClicked", true);

		return "home";

		

	}
		
	
	}


