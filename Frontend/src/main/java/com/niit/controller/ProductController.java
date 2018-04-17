package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;


@Controller
public class ProductController {

	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private SupplierDao supplierDao;
	
	@RequestMapping("ViewProduct")
	public String ViewProduct(){
		
		return "ViewProduct";
	}
	@RequestMapping("Product")
	public ModelAndView newProduct(){
		
		ModelAndView mv = new ModelAndView("Product");
		List<Category> categoryList = categoryDao.list();
		List<Supplier> supplierList = supplierDao.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		mv.addObject("AddProductButtonClicked", true);
		return mv;
	}
	@RequestMapping("addProduct")
	public String addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file ,Model model){
		productDao.saveOrUpdate(product);
		
		String path = "D:/shoes/Frontend/src/main/webapp/WEB-INF/resources/heels/";
		FileUtil.upload(path, file, product.getProductId()+".jpg");
		
		model.addAttribute("ViewProductButtonClicked", true);
		
		return "redirect:viewProduct";
		
	}
	@RequestMapping("viewProduct")
	public String viewProducts(Model model){
		
		List<Product> productList = productDao.list();
		model.addAttribute("productList", productList);
		model.addAttribute("ViewProductButtonClicked", true);
		return "Product";
		
		
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProducts(@RequestParam("productId") int productid, Model model){
		
		productDao.delete(productid);
		return "redirect:viewProduct";
	}
	
	@RequestMapping("editProduct")
	public ModelAndView editProduct(@RequestParam ("productId") int productId, Model model){
		ModelAndView mv = new ModelAndView("Product");
		List<Category> categoryList = categoryDao.list();
		List<Supplier> supplierList = supplierDao.list();
		Product product = productDao.getByProductId(productId);
		model.addAttribute("product", product);
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		model.addAttribute("editProductClicked", true);
		return mv;
	}
	@RequestMapping("productEdited")
	public String productEdited(@ModelAttribute Product product){
		
		productDao.saveOrUpdate(product);
		return "redirect:viewProduct";
	}
	
	@RequestMapping("productdescription")
	public String ProductDescription(@RequestParam ("productId") int productId, Model model){
		Product product = productDao.getByProductId(productId);
		model.addAttribute("product", product);
		return "ProductDescription";
	}
	@RequestMapping("displayproduct")
	public String ProductDisplay(@RequestParam ("suppliername") String suppliername, Model model){
		List<Product> product = productDao.getBySupplierName(suppliername);
		model.addAttribute("product", product);
		return "displayproduct";
	}


}