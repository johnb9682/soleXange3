package com.soleXange.model.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.google.common.base.Objects;
import com.soleXange.model.sys.param.CategoryParameter;

/**
 * 字典的实体类
 * @框架唯一的升级和技术支持地址：http://shop111863449.taobao.com
 */
@Entity
@Table(name = "category")
@Cache(region = "all", usage = CacheConcurrencyStrategy.READ_WRITE)
@JsonIgnoreProperties(value = { "maxResults", "firstResult", "topCount", "sortColumns", "cmd", "queryDynamicConditions", "sortedConditions", "dynamicProperties", "success", "message", "sortColumnsString", "flag" })
public class Category extends CategoryParameter {

	// 各个字段的含义请查阅文档的数据库结构部分
	private static final long serialVersionUID = -2847988368314678488L;
	@Id
	@GeneratedValue
	@Column(name = "categoryid", nullable = false, unique = true)
	private Integer categoryid;
	@Column(name = "parentid")
	private Integer parentid;
	@Column(name = "description", length = 255, nullable = false)
	private String description;
	@Column(name = "name")
	private String name; 
	@Column(name = "dataurl")
	private String dataurl; 

	public Category() {

	}

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	} 
	
	public String getDataurl() {
		return dataurl;
	}

	public void setDataurl(String dataurl) {
		this.dataurl = dataurl;
	} 
	
	/*
	public boolean equals(Object obj) {
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final Category other = (Category) obj;
		return Objects.equal(this.id, other.id) && Objects.equal(this.categoryKey, other.categoryKey) && Objects.equal(this.categoryValue, other.categoryValue) && Objects.equal(this.sequence, other.sequence)
				&& Objects.equal(this.parentcategorykey, other.parentcategorykey);
	}

	public int hashCode() {
		return Objects.hashCode(this.id, this.categoryKey, this.categoryValue, this.sequence, this.parentcategorykey);
	}
	 */
}
