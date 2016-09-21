package com.soleXange.dao.sys;

import java.util.List;

import com.soleXange.model.sys.Product;

import core.dao.Dao;

/**
 * 字典的数据持久层的接口
 * @Author: Bi Ran
 */
public interface ProductDao extends Dao<Product> {
	List<Object[]> queryProductWithProductID(Integer productid);
	Object[] querySingleProductInfo(Integer productid);
}
