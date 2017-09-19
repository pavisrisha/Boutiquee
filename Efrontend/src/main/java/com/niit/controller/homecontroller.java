package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class homecontroller {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping({ "/", "/home" })
	public ModelAndView home(HttpSession session) {
		List<Product> productList = productDAO.list();
		System.out.println("jf");
		session.setAttribute("productList", productList);
		ModelAndView mv = new ModelAndView("home");

		mv.addObject("productList", productList);
		return mv;
	}

	@RequestMapping("register")
	public ModelAndView Register() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title", "Register");
		mv.addObject("isUserClickedRegister", "true");
		return mv;

	}

	@RequestMapping("/Aboutus")

	public ModelAndView Aboutus() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title", "Aboutus");
		mv.addObject("isUserClickedAboutus", "true");
		return mv;

	}

	@RequestMapping("/afterlogin")
	public ModelAndView HOME1() {

		ModelAndView mv = new ModelAndView("home");
		List<Product> productList = productDAO.list();
		mv.addObject("productList", productList);

		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("home");

		if (error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
		}

		mv.addObject("isUserClickedLogin", true);
		return mv;
	}



}
