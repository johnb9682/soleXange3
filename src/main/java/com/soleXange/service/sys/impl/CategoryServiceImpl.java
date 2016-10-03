package com.soleXange.service.sys.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
			category.setDataurl(entity.getDataurl()); 
			categoryList.add(category);
		}
		return categoryList;
	}

	// 获取多级Category
	public List<Category> queryAllCategoryList() { 
		List<Category> categoryList = new ArrayList<Category>();
		List<Category> allCategoryList = queryByProerties("parentid", 0);
		for (Category entity : allCategoryList) {
			entity.setSubCategoryList(getSubList(entity));
			categoryList.add(entity); 
		} 
		return categoryList;
	}
	
	List<Category> getSubList(Category c){
		//System.out.println("TEST Node for " + c.getCategoryid() + ". " + c.getName() + "END"); 
		List<Category> subCategoryList = this.queryByProerties("parentid", c.getCategoryid()); 
		if(subCategoryList.size() > 0){
			for(Category subCategory : subCategoryList){ 
				subCategory.setSubCategoryList(getSubList(subCategory));
				//System.out.println("TEST Node for " + c.getCategoryid() + ". " + c.getName() + ":::" + subCategory.getName()); 
			}
			return subCategoryList;
		}
		else{
			return null;
		}
	}
	
}
