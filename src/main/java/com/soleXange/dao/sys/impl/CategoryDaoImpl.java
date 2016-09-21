package com.soleXange.dao.sys.impl;

import org.springframework.stereotype.Repository;

import com.soleXange.dao.sys.CategoryDao;
import com.soleXange.model.sys.Category;

import core.dao.BaseDao;

/**
 * 字典的数据持久层的实现类
 * @Author: Bi Ran
 */
@Repository
public class CategoryDaoImpl extends BaseDao<Category> implements CategoryDao {

	public CategoryDaoImpl() {
		super(Category.class);
	}

}
