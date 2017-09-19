package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategoryDAO;
import com.niit.Dao.ProductDAO;
import com.niit.Dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("/admin/product/newProduct")
	public String newCategory(@ModelAttribute Product product, @RequestParam("image") MultipartFile filedet,
			Model model) {
		System.out.println("product Desc" + product.getProductDescription());
		String path = "C:\\project\\eclipse-workspace\\Efrontend\\src\\main\\webapp\\WEB-INF\\resources\\images\\";
		System.out.println(path);
		productDAO.saveOrUpdate(product);

		System.out.println("-------Image Insert Start--------");

		String fileinfo = path + product.getProductId() + ".jpg";

		File f = new File(fileinfo);

		if (!filedet.isEmpty()) {
			try {
				byte buff[] = filedet.getBytes();
				FileOutputStream fos = new FileOutputStream(f);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(buff);
				bs.close();
				fos.close();
			} catch (Exception e) {
				System.out.println("Exception Arised");
			}
		} else {
			System.out.println("---File Uploding Problem---");
		}

		System.out.println("-------Image insert Success------");

		return "redirect:/admin/product/view";

	}

	@RequestMapping("/admin/product/add")
	public ModelAndView Product() {

		ModelAndView mv = new ModelAndView("home");
		List<Product> productList = productDAO.list();
		List<Category> categoryList = categoryDAO.list();

		List<Supplier> supplierList = supplierDAO.list();

		mv.addObject("product", new Product());
		
		mv.addObject("supplierList", supplierList);

		mv.addObject("categoryList", categoryList);

		mv.addObject("isUserClickedProduct", "true");

		return mv;

	}

	@RequestMapping("/admin/product/deleteproduct")

	public String deleteproduct(@RequestParam("productId") int productId, Model model) {

		productDAO.delete(productId);

		return "redirect:/admin/product/view";

	}

	@RequestMapping("/admin/product/editproduct")
	public ModelAndView editProduct(@RequestParam("productId") int productId) {
		Product product = productDAO.getByProductId(productId);
		List<Category> categoryList = categoryDAO.list();

		List<Supplier> supplierList = supplierDAO.list();
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("supplierList", supplierList);

		mv.addObject("categoryList", categoryList);
		mv.addObject("isUserClickedProduct", "true");
		mv.addObject("product", product);
		return mv;
	}

	@RequestMapping("/admin/product/view")

	public String viewproduct(Model model) {

		List<Product> productList = productDAO.list();

		model.addAttribute("productList", productList);

		model.addAttribute("isUserClickedViewPsroduct", true);

		return "home";

	}

	@RequestMapping("/productdescription/{productid}")

	public ModelAndView Productdescription(@PathVariable int productid) {
		ModelAndView mv = new ModelAndView("home");
		Product product = productDAO.getByProductId(productid);
		mv.addObject("pro", product);
		System.out.println(product.getProductId());
		mv.addObject("isUserClickedViewMore", "true");
		return mv;

	}
}