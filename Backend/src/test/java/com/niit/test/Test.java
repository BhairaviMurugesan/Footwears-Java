package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDao;
import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.RoleDao;
import com.niit.dao.ShipmentDao;
import com.niit.dao.SupplierDao;
import com.niit.dao.UserDao;

import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.User;
import com.niit.model.Product;
import com.niit.model.Role;
import com.niit.model.Shipment;
import com.niit.model.Supplier;

public class Test {

	private static Cart productid;

	public static void main (String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		CategoryDao categoryDao = (CategoryDao) context.getBean("CategoryDao");
		UserDao userDao = (UserDao) context.getBean("UserDao");
		ProductDao productDao = (ProductDao) context.getBean("ProductDao");
		CartDao cartDao = (CartDao) context.getBean("CartDao");
		SupplierDao supplierDao = (SupplierDao) context.getBean("SupplierDao");
		ShipmentDao shippingaddressDao = (ShipmentDao) context.getBean("ShipmentDao");
		RoleDao roleDao = (RoleDao) context.getBean("RoleDao");
		
		Category category = (Category) context.getBean("category");
		User user = (User) context.getBean("user");
		Product product = (Product) context.getBean("product");
		Cart cart = (Cart) context.getBean("cart");
		Supplier supplier = (Supplier) context.getBean("supplier");
		Shipment shippingaddress = (Shipment) context.getBean("shippingaddress");
		Role role = (Role) context.getBean("role");
		
		
		category.setCategoryName("Watches");
		
		categoryDao.saveOrUpdate(category);
		
		
		user.setUname("skfr");
		user.setEmail("jhvd@gmail.com");
		user.setPwd("jfkd");
		
		user.setMnum("98765");
		user.setAddress("s12,sejkajdh");

		role.setUname("kjgdffd");
		role.setEmail("hgfshdghj");
		role.setMnum("6567");
		
		user.setRole(role);
		role.setUser(user);
		
		userDao.saveOrUpdate(user);
		roleDao.saveOrUpdate(role);
		
		
		product.setProductName("fdknmfg");
		productDao.saveOrUpdate(product);
		
		
		cart.setProductName("dfhjj");
		cartDao.saveOrUpdate(cart);
		
		
		supplier.setSupplierName("hddsjk");
		supplier.setContactNumber(87968764);
		supplierDao.saveOrUpdate(supplier);
		
		shippingaddress.setAddress("fdgfs");
		shippingaddress.setUserName("jkfgjd");
		shippingaddressDao.saveOrUpdate(shippingaddress);
		
		
	}
}