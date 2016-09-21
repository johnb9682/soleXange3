package com.soleXange.service.sys;

import java.util.List;

import com.soleXange.model.sys.Category;

import core.service.Service;

/**
 * Category的业务逻辑层的接口 
 */
public interface CategoryService extends Service<Category> {

	List<Category> queryCategoryWithSubList(List<Category> resultList);

}
