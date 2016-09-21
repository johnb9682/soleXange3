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
		 * johnb9682.product LEFT JOIN johnb9682.attachment 
		 * ON johnb9682.product.productid = johnb9682.attachment.type_id
		 * WHERE johnb9682.product.productid = 2;
		 */
		Query query = this.getSession().createSQLQuery("SELECT johnb9682.product.productid, johnb9682.attachment.file_path FROM johnb9682.product LEFT JOIN johnb9682.attachment ON johnb9682.product.productid = johnb9682.attachment.type_id WHERE johnb9682.product.productid = " + productid + " AND johnb9682.attachment.type = 3");
		List<Object[]> list = query.list();
		return query.list();  
	}

	@Override
	public Object[] querySingleProductInfo(Integer productid) {
		Query query = this.getSession().createSQLQuery("SELECT * FROM johnb9682.product where johnb9682.product.productid = " + productid);
		List<Object[]> list = query.list();
		return list.get(0);  
	}

}
