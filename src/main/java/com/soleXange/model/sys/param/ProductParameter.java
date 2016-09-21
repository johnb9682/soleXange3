package com.soleXange.model.sys.param;

import core.support.ExtJSBaseParameter;

/**
 * 字典的参数类
 * @框架唯一的升级和技术支持地址：http://shop111863449.taobao.com
 */
public class ProductParameter extends ExtJSBaseParameter {

	private static final long serialVersionUID = -275625972539930068L;
	private String $eq_productKey;
	private String $like_productValue;

	public String get$eq_productKey() {
		return $eq_productKey;
	}

	public void set$eq_productKey(String $eq_productKey) {
		this.$eq_productKey = $eq_productKey;
	}

	public String get$like_productValue() {
		return $like_productValue;
	}

	public void set$like_productValue(String $like_productValue) {
		this.$like_productValue = $like_productValue;
	}

}
