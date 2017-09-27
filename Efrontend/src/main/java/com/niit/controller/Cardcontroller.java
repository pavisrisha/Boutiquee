package com.niit.controller;

import java.security.Principal;

import java.util.List;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Cart;
import com.niit.model.Shippingaddress;
import com.niit.model.User;
import com.niit.Dao.CartDAO;
import com.niit.Dao.ProductDAO;
import com.niit.Dao.ShippingaddressDAO;
import com.niit.Dao.UserDAO;

@Controller
public class Cardcontroller {

	@Autowired
	private CartDAO cartDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private UserDAO userDAO;

	@Autowired

	private Cart cart;

	@Autowired
	private ShippingaddressDAO shippingDAO;

	@ModelAttribute
	public void commonToUser(Model model) {

		model.addAttribute("userLoggedIn", "true");

	}

	@RequestMapping("/order/{shippingid}")

	public String order(@PathVariable("shippingid") int id, Principal p, Model model) {
		
		User user = userDAO.getByUserName(p.getName());
		String userName = user.getUserName();
		List<Cart> listcart = cartDAO.getByEmailId(userName);
		Long GrandTotal = cartDAO.getTotalAmount(user.getUserId());
		Shippingaddress shipping=shippingDAO.getByShippingId(id);
		model.addAttribute("shipping", shipping);
		model.addAttribute("GrandTotal", GrandTotal);
		model.addAttribute("user", user);
		model.addAttribute("i", listcart);
		model.addAttribute("isuserclickedCashOnDelivery", true);
		System.out.println(listcart.size());
		return "home";
	}
	

	@RequestMapping("/payment/{shippingid}")

	public String payment(@PathVariable("shippingid") int id, Model model) {

		model.addAttribute("isuserclickeddeliverhere", true);

		model.addAttribute("shippingid", id);

		return "home";

	}

	@RequestMapping("card")

	public String card(Model model) {

		model.addAttribute("isuserclickedcard", true);

		return "home";

	}
	@RequestMapping("/Thanku")

	public String cash(Principal p,Model model) {	
		String username = p.getName();
		List<Cart> cartList = cartDAO.getByEmailId(username);
		cartDAO.deleteall(cartList);
		model.addAttribute("isUserClickedThanku", true);
		return "home";

	}
}
