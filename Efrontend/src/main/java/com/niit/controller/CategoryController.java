package com.niit.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping("/admin/Category/newCategory")
	public String newCategory(@ModelAttribute Category category) {

		categoryDAO.saveOrUpdate(category);
		
		return "redirect:/admin/Category/view";
	}

	@RequestMapping("/admin/Category/add")
	public ModelAndView Category() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title", "Category");
		mv.addObject("isUserClickedCategory", "true");
		mv.addObject("category", new Category());
		return mv;
	}

	@RequestMapping("/admin/Category/view")

	public String viewcategory(Model model) {

		List<Category> categoryList = categoryDAO.list();

		model.addAttribute("categoryList", categoryList);

		model.addAttribute("isUserClickedViewCategory", true);

		return "home";

	}

	@RequestMapping("/admin/Category/deleteCategory")

	public String deleteCategory(@RequestParam("categoryId") int categoryId, Model model) {

		categoryDAO.delete(categoryId);

		return "redirect:/admin/Category/view";

	}

	@RequestMapping("/admin/Category/editCategory")
	public ModelAndView editCategory(@RequestParam("categoryId") int categoryId) {
		Category category = categoryDAO.getByCategoryId(categoryId);
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedCategory", "true");
		mv.addObject("category", category);
		return mv;
	}

}
