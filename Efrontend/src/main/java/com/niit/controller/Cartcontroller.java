package com.niit.controller;

import java.security.Principal;
import java.util.Date;
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

import com.niit.Dao.CartDAO;
import com.niit.Dao.ProductDAO;
import com.niit.Dao.UserDAO;
import com.niit.model.Cart;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class Cartcontroller {
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private Cart cart;
	
	

	@RequestMapping("/cart/myCart")
	public String myCart(Model model, Principal p, HttpSession session) {
		String username = p.getName();
		User user = userDAO.getByUserName(username);

		List<Cart> cartList = cartDAO.getByEmailId(username);

		int length = cartList.size();

		session.setAttribute("cartlength", length);

		System.out.println(length);

		Long GrandTotal = cartDAO.getTotalAmount(user.getUserId());

		model.addAttribute("cartList", cartList);

		model.addAttribute("isUserClickedMyCart", true);

		model.addAttribute("GrandTotal", GrandTotal);
		System.out.println("hai");
		return "home";
	}

	@RequestMapping("/cart/addtocart")
	public String addCart(@RequestParam("productId") int productId, Principal p, Model model) {
		System.out.println("Hi");
		Product product = productDAO.getByProductId(productId);
		User user1 = userDAO.getByUserName(p.getName());
		Cart crt = cartDAO.getByUserandProduct(p.getName(), productId);
		System.out.println(product.getProductName());
		System.out.println(user1);
		if (product.getStock() > 0) {
			if (cartDAO.itemAlreadyExist(p.getName(), productId, true)) {
				int quantity = crt.getQty() + 1;
				crt.setQty(quantity);
				crt.setTotal(product.getPrice() * quantity);
				cartDAO.saveOrUpdate(crt);
			} else {
				Random t = new Random();
				int day = 2 + t.nextInt(7);
				cart.setEmailId(p.getName());
				cart.setPrice(product.getPrice());
				cart.setProductId(productId);
				cart.setProductName(product.getProductName());
				cart.setQty(1);
				cart.setStatus("N");
				cart.setUserId(user1.getUserId());
				cart.setUserName(user1.getUserName());
				cart.setDays(day);
				cart.setTotal(product.getPrice() * cart.getQty());
				cartDAO.saveOrUpdate(cart);
			}

			int stc = product.getStock() - 1;
			product.setStock(stc);
			productDAO.saveOrUpdate(product);
			return "redirect:/cart/myCart";

		} else {
			model.addAttribute("product", product);
			model.addAttribute("productDescClicked", true);
			model.addAttribute("message", "Out of stock");
			return "redirect:/cart/myCart";
		}
	}

	@RequestMapping("/cart/removeCart")

	public String removeCart(@RequestParam("cartId") int cartId, Model model) {
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductId(cart.getProductId());
		int qty = product.getStock() + cart.getQty();
		product.setStock(qty);
		productDAO.saveOrUpdate(product);
		cartDAO.delete(cartId);
		return "redirect:/cart/myCart";

	}

	@RequestMapping("/cart/decreaseQty")

	public String decreaseQty(@RequestParam("cartId") int cartId, HttpSession session, Model model) {

		Cart cart = cartDAO.getByCartId(cartId);

		Product product = productDAO.getByProductId(cart.getProductId());
		if (cart.getQty() > 1) {

			Date d1 = new java.sql.Date(new java.util.Date().getTime());

			cart.setAddDate(d1);

			cart.setQty(cart.getQty() - 1);

			cart.setTotal(product.getPrice() * cart.getQty());

			product.setStock(product.getStock() + 1);

		}

		else {

			cart.setQty(1);

		}

		productDAO.saveOrUpdate(product);

		cartDAO.saveOrUpdate(cart);

		return "redirect:/cart/myCart";

	}

	@RequestMapping("/cart/increaseQty")

	public String increaseQty(@RequestParam("cartId") int cartId, HttpSession session, Model model) {

		Cart cart = cartDAO.getByCartId(cartId);

		Product product = productDAO.getByProductId(cart.getProductId());

		cart.setQty(cart.getQty() + 1);

		Date d1 = new java.sql.Date(new java.util.Date().getTime());

		cart.setAddDate(d1);

		cart.setTotal(product.getPrice() * cart.getQty());

		product.setStock(product.getStock() - 1);

		productDAO.saveOrUpdate(product);

		cartDAO.saveOrUpdate(cart);

		return "redirect:/cart/myCart";

	}

	

	

}
