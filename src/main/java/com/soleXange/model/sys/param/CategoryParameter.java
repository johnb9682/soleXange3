package com.soleXange.model.sys.param;

import core.support.ExtJSBaseParameter;

/**
 * 字典的参数类
 * @框架唯一的升级和技术支持地址：http://shop111863449.taobao.com
 */
public class CategoryParameter extends ExtJSBaseParameter {

	private String $eq_categoryKey;
	private String $like_categoryValue;

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

}
