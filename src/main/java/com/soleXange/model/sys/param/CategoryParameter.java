package com.soleXange.model.sys.param;

import java.util.List;

import com.soleXange.model.sys.Category;

import core.support.ExtJSBaseParameter;

/**
 * Category的参数类
 * @Author: Bi Ran
 */
public class CategoryParameter extends ExtJSBaseParameter {

	private String $eq_categoryKey;
	private String $like_categoryValue;
	private List<Category> subCategoryList;

	public String get$eq_categoryKey() {
		return $eq_categoryKey;
	}

	public void set$eq_categoryKey(String $eq_categoryKey) {
		this.$eq_categoryKey = $eq_categoryKey;
	}

	public String get$like_categoryValue() {
		return $like_categoryValue;
	}

	public void set$like_categoryValue(String $like_categoryValue) {
		this.$like_categoryValue = $like_categoryValue;
	}
	
	public List<Category> getSubCategoryList() {
		return subCategoryList;
	}

	public void setSubCategoryList(List<Category> subCategoryList) {
		this.subCategoryList = subCategoryList;
	}
}
