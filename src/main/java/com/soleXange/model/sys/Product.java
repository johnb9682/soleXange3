package com.soleXange.model.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
 
import com.soleXange.model.sys.param.ProductParameter;

/**
 * product entity
 * @Author: Bi Ran
 */
@Entity
@Table(name = "product")
@Cache(region = "all", usage = CacheConcurrencyStrategy.READ_WRITE)
@JsonIgnoreProperties(value = { "maxResults", "firstResult", "topCount", "sortColumns", "cmd", "queryDynamicConditions", "sortedConditions", "dynamicProperties", "success", "message", "sortColumnsString", "flag" })
public class Product extends ProductParameter {

	private static final long serialVersionUID = 174395209731346542L;
	// 各个字段的含义请查阅文档的数据库结构部分 
	@Id
	@GeneratedValue
	@Column(name = "productid", nullable = false, unique = true)
	private Integer productid;
	@Column(name = "name", length = 255)
	private String name;
	@Column(name = "categoryid")
	private Integer categoryid;
	@Column(name = "description")
	private String description;
	@Column(name = "price")
	private Integer price;
	@Column(name = "contactinfo")
	private String contactinfo;
	@Column(name = "profileimage")
	private String profileimage;
	@Column(name = "size")
	private Integer size;

	public Product() {

	}

	public Integer getProductid() {
		return productid;
	} 

	public void setProductid(Integer id) {
		this.productid = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public String getContactinfo() {
		return contactinfo;
	}

	public void setContactinfo(String contactinfo) {
		this.contactinfo = contactinfo;
	}
	
	public String getProfileimage() {
		return profileimage;
	}

	public void setProfileimage(String profileimage) {
		this.profileimage = profileimage;
	}
	
	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

//	public boolean equals(Object obj) {
//		if (obj == null)
//			return false;
//		if (getClass() != obj.getClass())
//			return false;
//		final Product other = (Product) obj;
//		return Objects.equal(this.id, other.id) && Objects.equal(this.dictKey, other.dictKey) && Objects.equal(this.dictValue, other.dictValue) && Objects.equal(this.sequence, other.sequence)
//				&& Objects.equal(this.parentDictkey, other.parentDictkey);
//	}
//
//	public int hashCode() {
//		return Objects.hashCode(this.id, this.dictKey, this.dictValue, this.sequence, this.parentDictkey);
//	}

}
