package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("/admin/supplier/newSupplier")
	public String newCategory(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:/admin/supplier/view";
	}

	@RequestMapping("/admin/supplier/add")
	public ModelAndView supplier() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title", "Supplier");
		mv.addObject("isUserClickedSupplier", "true");
		mv.addObject("supplier", new Supplier());
		return mv;
	}

	@RequestMapping("/admin/supplier/view")
	public String viewsupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedViewSupplier", true);
		return "home";
	}

	@RequestMapping("/admin/supplier/deletesupplier")

	public String deletesupplier(@RequestParam("supplierId") int supplierId, Model model) {
		supplierDAO.delete(supplierId);
		return "redirect:/admin/supplier/view";
	}

	@RequestMapping("/admin/supplier/editsupplier")
	public ModelAndView editsupplier(@RequestParam("supplierId") int supplierId) {
		Supplier supplier = supplierDAO.getBySupplierId(supplierId);
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedSupplier", "true");
		mv.addObject("supplier", supplier);
		return mv;
	}

}
