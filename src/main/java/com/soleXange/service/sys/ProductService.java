package com.soleXange.service.sys;

import java.util.List;

import com.soleXange.model.sys.Product;

import core.service.Service;

/**
 * product的业务逻辑层的接口
 * @Author: Bi Ran
 */
public interface ProductService extends Service<Product> {

	List<Product> queryProductWithSubList(List<Product> resultList);
	
	List<Object[]> queryProductWithProductID(Integer productid);
	
	Object[] querySingleProductInfo(Integer productid);

}
