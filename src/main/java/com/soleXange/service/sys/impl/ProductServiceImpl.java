package com.soleXange.service.sys.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.soleXange.dao.sys.ProductDao;
import com.soleXange.model.sys.Product;
import com.soleXange.service.sys.ProductService;

import core.service.BaseService;

/**
 * product的业务逻辑层的实现
 * @Author: Bi Ran
 */
@Service
public class ProductServiceImpl extends BaseService<Product> implements ProductService {

	private ProductDao ProductDao;

	@Resource
	public void setProductDao(ProductDao ProductDao) {
		this.ProductDao = ProductDao;
		this.dao = ProductDao;
	}

	public List<Product> queryProductWithSubList(List<Product> resultList) {
		List<Product> ProductList = new ArrayList<Product>();
		for (Product entity : resultList) {
			Product Product = new Product();
			Product.setProductid(entity.getProductid());
			Product.setName(entity.getName());
			Product.setCategoryid(entity.getCategoryid());
			Product.setDescription(entity.getDescription());
			Product.setPrice(entity.getPrice());
			Product.setContactinfo(entity.getContactinfo());
			Product.setProfileimage(entity.getProfileimage());
			Product.setSize(entity.getSize());
			ProductList.add(Product);
		}
		return ProductList;
	}

	@Override
	public List<Object[]> queryProductWithProductID(Integer productid) {
		
		return ProductDao.queryProductWithProductID(productid);
	}

	@Override
	public Object[] querySingleProductInfo(Integer productid) {
		return ProductDao.querySingleProductInfo(productid);
	}

}
