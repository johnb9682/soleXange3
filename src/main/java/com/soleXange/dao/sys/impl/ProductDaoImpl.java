package com.soleXange.dao.sys.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.soleXange.dao.sys.ProductDao;
import com.soleXange.model.sys.Product;

import core.dao.BaseDao;

/**
 * 字典的数据持久层的实现类
 * @Author: Bi Ran
 */
@Repository
public class ProductDaoImpl extends BaseDao<Product> implements ProductDao {

	public ProductDaoImpl() {
		super(Product.class);
	}

	@Override
	public List<Object[]> queryProductWithProductID(Integer productid) {
		/*
		 * SELECT * FROM 
		 * solexange.product LEFT JOIN solexange.attachment 
		 * ON solexange.product.productid = solexange.attachment.type_id
		 * WHERE solexange.product.productid = 2;
		 */
		Query query = this.getSession().createSQLQuery("SELECT solexange.product.productid, solexange.attachment.file_path FROM solexange.product LEFT JOIN solexange.attachment ON solexange.product.productid = solexange.attachment.type_id WHERE solexange.product.productid = " + productid + " AND solexange.attachment.type = 1");
		List<Object[]> list = query.list();
		return query.list();  
	}

	@Override
	public Object[] querySingleProductInfo(Integer productid) {
		Query query = this.getSession().createSQLQuery("SELECT * FROM solexange.product where solexange.product.productid = " + productid);
		List<Object[]> list = query.list();
		return list.get(0);  
	}

}
