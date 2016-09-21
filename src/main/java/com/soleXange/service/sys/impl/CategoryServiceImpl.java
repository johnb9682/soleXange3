package com.soleXange.service.sys.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.soleXange.dao.sys.CategoryDao;
import com.soleXange.model.sys.Category;
import com.soleXange.service.sys.CategoryService;

import core.service.BaseService;

/**
 * Category的业务逻辑层的实现
 * @Author: Bi Ran
 */
@Service
public class CategoryServiceImpl extends BaseService<Category> implements CategoryService {

	private CategoryDao categoryDao;

	@Resource
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
		this.dao = categoryDao;
	}

	public List<Category> queryCategoryWithSubList(List<Category> resultList) {
		List<Category> categoryList = new ArrayList<Category>();
		for (Category entity : resultList) {
			Category category = new Category();
			category.setCategoryid(entity.getCategoryid());
			category.setParentid(entity.getParentid());
			category.setDescription(entity.getDescription());
			category.setName(entity.getName()); 
			categoryList.add(category);
		}
		return categoryList;
	}

}
