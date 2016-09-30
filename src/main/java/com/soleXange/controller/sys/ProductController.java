package com.soleXange.controller.sys;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soleXange.core.Constant;
import com.soleXange.core.JavaEEFrameworkBaseController;
import com.soleXange.model.sys.Product;
import com.soleXange.service.sys.ProductService;

import core.support.ExtJSBaseParameter;
import core.support.JqGridPageView;
import core.support.QueryResult;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * product的控制层
 * @Author: Bi Ran
 */
@Controller
@RequestMapping("/product")
public class ProductController extends JavaEEFrameworkBaseController<Product> implements Constant {

	@Resource
	private ProductService productService;
	
	/*
	 *  display all products in a gallary wall
	 */
	@RequestMapping(value = "/productgallary", method = { RequestMethod.POST, RequestMethod.GET })
	public String allProductGallary(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException {  
		String sortedObject = "sidx";
		String sortedValue = "sord";
		String filters = "filters";
		Product Product = new Product(); 
		
		Product.setFirstResult((1 - 1) * 10); 
		Map<String, String> sortedCondition = new HashMap<String, String>();
		sortedCondition.put(sortedObject, sortedValue);
		Product.setSortedConditions(sortedCondition);
		QueryResult<Product> queryResult = productService.doPaginationQuery(Product); 
		List<Product> ProductWithSubList = productService.queryProductWithSubList(queryResult.getResultList()); 
		map.addAttribute("products", ProductWithSubList);
		return "back/product/productgallary";
	}
	
	/* 
	 *  展示单个product 的信息
	 *  对应productdetail
	 */ 
	@RequestMapping(value = "/productdetail_expired", method = { RequestMethod.POST, RequestMethod.GET })
	public String productDetail(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException { 
		Integer productid = Integer.valueOf(request.getParameter("productid"));
		JSONArray jsonArray = new JSONArray(); 
		List<Object[]> list = productService.queryProductWithProductID(productid);
		for(ListIterator<Object[]> iter = list.listIterator(); iter.hasNext();){ 
			Object[] element = iter.next();    
			JSONObject obj = new JSONObject();  
			obj.put("productid", element[0]);  
			obj.put("imagepath", element[1]);  
		    jsonArray.add(obj);    
		    System.out.println(obj);
		} 
		Map<String, Object> result = new HashMap<String, Object>(); 
		result.put("data", jsonArray);
		map.addAttribute("products", result);
		return "back/product/productdetail";
	} 
	
	/* 
	 *  展示单个product 的信息
	 *  对应productdetail_conbineddata
	 *  有model
	 */ 
	@RequestMapping(value = "/productdetail", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView productDetailConbinedData(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException { 
		Integer productid = Integer.valueOf(request.getParameter("productid"));
		JSONArray jsonArray = new JSONArray(); 
		List<Object[]> list = productService.queryProductWithProductID(productid);
		for(ListIterator<Object[]> iter = list.listIterator(); iter.hasNext();){ 
			Object[] element = iter.next();    
			JSONObject obj = new JSONObject();  
			obj.put("productid", element[0]);  
			obj.put("imagepath", element[1]);  
		    jsonArray.add(obj);    
		    System.out.println(obj);
		} 
		//Map<String, Object> result = new HashMap<String, Object>(); 
		//result.put("image", jsonArray);
		//map.addAttribute("products", result);
		return new ModelAndView("back/product/productdetail_combineddata", "productimage", jsonArray);
	} 

	// 查询字典的表格，包括分页、搜索和排序
	@RequestMapping(value = "/getproduct", method = { RequestMethod.POST, RequestMethod.GET })
	public void getProduct(HttpServletRequest request, HttpServletResponse response) throws Exception { 
		String sortedObject = request.getParameter("sidx");
		String sortedValue = request.getParameter("sord");
		String filters = request.getParameter("filters");
		Product Product = new Product(); 
		
		Product.setFirstResult((1 - 1) * 10); 
		Map<String, String> sortedCondition = new HashMap<String, String>();
		sortedCondition.put(sortedObject, sortedValue);
		Product.setSortedConditions(sortedCondition);
		QueryResult<Product> queryResult = productService.doPaginationQuery(Product); 
		List<Product> ProductWithSubList = productService.queryProductWithSubList(queryResult.getResultList()); 
		request.setAttribute("allproducts", ProductWithSubList);
		writeJSON(response, ProductWithSubList);
	}
	
	@RequestMapping("/newproduct")
	public String newProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("New Product");
		return "back/product/newproduct_text";
	} 
	
	@RequestMapping("/uploadimage")
	public String imageUpload(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("Upload Images");
		return "back/product/imageupload";
	}

//	@RequestMapping(value = "/allproducts", method = { RequestMethod.POST, RequestMethod.GET })
//	public String allProduct(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException { 
//		
//		String sortedObject = request.getParameter("sidx");
//		String sortedValue = request.getParameter("sord");
//		String filters = request.getParameter("filters");
//		Product Product = new Product(); 
//		
//		Product.setFirstResult((1 - 1) * 10); 
//		Map<String, String> sortedCondition = new HashMap<String, String>();
//		sortedCondition.put(sortedObject, sortedValue);
//		Product.setSortedConditions(sortedCondition);
//		QueryResult<Product> queryResult = productService.doPaginationQuery(Product); 
//		List<Product> ProductWithSubList = productService.queryProductWithSubList(queryResult.getResultList()); 
//		map.addAttribute("products", ProductWithSubList);
//		return "back/product/result";
//	}
	
	@RequestMapping(value = "/getproductinfo", method = { RequestMethod.POST, RequestMethod.GET })
	public void getProductProfileImage(HttpServletRequest request, HttpServletResponse response) throws Exception {   
		JSONArray jsonArray = new JSONArray();  
		Integer firstResult = 1; 
		String sortedObject = "id";
		String sortedValue = "asc";
		String filters = ""; 
		Product Product = new Product();  
		Product.setFirstResult(firstResult - 1); 
		Map<String, String> sortedCondition = new HashMap<String, String>();
		sortedCondition.put(sortedObject, sortedValue);
		Product.setSortedConditions(sortedCondition);
		QueryResult<Product> queryResult = productService.doPaginationQuery(Product); 
		List<Product> productWithSubList = productService.queryProductWithSubList(queryResult.getResultList());
		
		for(ListIterator<Product> iter = productWithSubList.listIterator(); iter.hasNext();){ 
			Product element = (Product) iter.next();    
			JSONObject obj = new JSONObject();  
			obj.put("src", element.getProfileimage()); 
			obj.put("srct", element.getProfileimage());    
			obj.put("title", element.getName());  
			obj.put("destURL", "/soleXange/home#page/product/productdetail?productid="+element.getProductid());  //http://localhost:8080/soleXange
			obj.put("description", "Price: " + element.getPrice());  
			obj.put("size", element.getSize());  
			obj.put("price", element.getPrice());  
		    jsonArray.add(obj);    
		} 
		Map<String, Object> result = new HashMap<String, Object>(); 
		result.put("data", jsonArray);
		writeJSON(response, result);   
	}
	
	/*
	 *  get product basic information
	 */
	@RequestMapping(value = "/getsingleproductinfo", method = { RequestMethod.POST, RequestMethod.GET })
	public void getSingleProductInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Integer productid = Integer.valueOf(request.getParameter("productid"));
		JSONArray jsonArray = new JSONArray(); 
		Object[] element = productService.querySingleProductInfo(productid);      
		JSONObject obj = new JSONObject();  
		obj.put("productid", element[0]);  
		obj.put("name", element[1]);  
		obj.put("categoryid", element[2]);  
		obj.put("description", element[3]);  
		obj.put("price", element[4]);  
		obj.put("contactinfo", element[5]);  
		obj.put("prifileimage", element[6]);  
		obj.put("size", element[7]);  
	    jsonArray.add(obj);    
	    System.out.println(jsonArray); 
		Map<String, Object> result = new HashMap<String, Object>(); 
		result.put("data", jsonArray);
		writeJSON(response, result); 
	} 
	
	/*
	 *  get product images
	 */
	@RequestMapping(value = "/getsingleproductimages", method = { RequestMethod.POST, RequestMethod.GET })
	public void getSingleProductImages(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getParameter("productid")!=null){
			Integer productid = Integer.valueOf(request.getParameter("productid"));
			JSONArray jsonArray = new JSONArray();  
			List<Object[]> list = productService.queryProductWithProductID(productid);
			for(ListIterator<Object[]> iter = list.listIterator(); iter.hasNext();){ 
				Object[] element = iter.next();    
				JSONObject obj = new JSONObject();  
				obj.put("productid", element[0]);  
				obj.put("imagepath", element[1]);  
			    jsonArray.add(obj);    
			    System.out.println(obj);
			} 
			Map<String, Object> result = new HashMap<String, Object>(); 
			result.put("data", jsonArray);
			writeJSON(response, result); 
		}
		else{
			System.out.println("No product ID");
		}
	} 
	
	// 保存product的实体Bean
	@RequestMapping(value = "/saveproduct", method = { RequestMethod.POST, RequestMethod.GET })
	public void doSave(Product entity, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ExtJSBaseParameter parameter = ((ExtJSBaseParameter) entity);
		if (CMD_EDIT.equals(parameter.getCmd())) {
			productService.merge(entity);
		} else if (CMD_NEW.equals(parameter.getCmd())) {
			productService.persist(entity);
		}  
		//newProductImages(entity, request, response);
		//writeJSON(response, parameter);
	}
	
	/*  用户新建，保存product信息，
	 *  包括name, price, description, contactinfo, size, categoryid
	 */
	@RequestMapping(value = "/saveproducttext", method = { RequestMethod.POST, RequestMethod.GET })
	public void saveProductText(HttpServletRequest request, HttpServletResponse response) throws Exception {  
		System.out.println("Save Product Text");
		Map<String, Object> result = new HashMap<String, Object>();
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String contactinfo = request.getParameter("contactinfo");
		String size = request.getParameter("size");
		String categoryid = request.getParameter("categoryid");
		System.out.println(description); 
		if (StringUtils.isBlank(name) || StringUtils.isBlank(price)) { 
			//response.setStatus(HttpServletResponse.SC_LENGTH_REQUIRED); 
			result.put("message", "fail");
			result.put("result", -1);
			result.put("productid", -1);
			writeJSON(response, result);
			
//			return new ModelAndView("back/product/newproduct_text");
		} else {
			Product entity = new Product();
			
			entity.setName(name);
			entity.setPrice(Integer.valueOf(price));
			entity.setDescription(description);
			entity.setSize(Integer.valueOf(size));
			entity.setCategoryid(Integer.valueOf(categoryid));
			entity.setContactinfo(contactinfo); 
			entity.setCmd("new");
			doSave(entity, request, response);   
			result.put("message", "success");
			result.put("result", 1);
			String[] propName = new String[3];
			propName[0] = "name";
			propName[1] = "description";
			propName[2] = "contactinfo";
			Object[] propValue = new String[3];
			propValue[0] = name;
			propValue[1] = description;
			propValue[2] = contactinfo;
			//propValue[1] = Integer.valueOf(price); 
			//price get problem
			//should use String
			Product product = productService.getByProerties(propName, propValue);
			result.put("productid", product.getProductid());
			writeJSON(response, result);
//			return new ModelAndView("back/product/newproduct_images", "product", entity);
		} 
		
	}

	/*  用户新建，保存product images，
	 *  包括product 中的单独image
	 *  和attachment中的任意数量images
	 */
	@RequestMapping("/newproduct_images")
	public ModelAndView newProductImages(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("New Product Images"); 
		String productid_string = "";
		productid_string = request.getParameter("productid");
		Product product = null;
		if(productid_string!=null){
			int productid = Integer.valueOf(productid_string); 
			System.out.println(productid);
			product = productService.get(productid);
			System.out.println(product.getName());
			System.out.println(product.getProductid());
		}  
		return new ModelAndView("back/product/newproduct_images", "product", product);
	}
	
	// 操作字典的删除、导出Excel、字段判断和保存
	@RequestMapping(value = "/operateproduct", method = { RequestMethod.POST, RequestMethod.GET })
	public void operateProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String oper = request.getParameter("oper");
		String id = "0";//request.getParameter("id");
		if (oper.equals("del")) {
			String[] ids = id.split(",");
			deleteProduct(request, response, (Long[]) ConvertUtils.convert(ids, Long.class));
		} else if (oper.equals("excel")) {
			response.setContentType("application/msexcel;charset=UTF-8");
			try {
				response.addHeader("Content-Disposition", "attachment;filename=file.xls");
				OutputStream out = response.getOutputStream();
				out.write(URLDecoder.decode(request.getParameter("csvBuffer"), "UTF-8").getBytes());
				out.flush();
				out.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			// ADD
			Map<String, Object> result = new HashMap<String, Object>();
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String description = request.getParameter("description");
			String contactinfo = request.getParameter("contactinfo");
			String size = request.getParameter("size");
			String categoryid = request.getParameter("categoryid");
			System.out.println(description);
			Product product = null;
			if (oper.equals("edit")) {
				product = productService.get(Long.valueOf(id));
			} 
			if (StringUtils.isBlank(name) || StringUtils.isBlank(price)) {
				response.setStatus(HttpServletResponse.SC_LENGTH_REQUIRED);
				result.put("message", "请填写产品名称和价格");
				writeJSON(response, result);
			} else {
				Product entity = new Product();
				
				entity.setName(name);
				entity.setPrice(Integer.valueOf(price));
				entity.setDescription(description);
				entity.setSize(Integer.valueOf(size));
				entity.setCategoryid(Integer.valueOf(categoryid));
				entity.setContactinfo(contactinfo);
				if (oper.equals("edit")) {
//					entity.setId(Long.valueOf(id));
					entity.setCmd("edit");
					doSave(entity, request, response);
				} else if (oper.equals("add")) {
					entity.setCmd("new");
					doSave(entity, request, response);
				}
			}
		}
	}

	// 删除字典
	@RequestMapping("/deleteproduct")
	public void deleteProduct(HttpServletRequest request, HttpServletResponse response, @RequestParam("ids") Long[] ids) throws IOException {
		boolean flag = productService.deleteByPK(ids);
		if (flag) {
			writeJSON(response, "{success:true}");
		} else {
			writeJSON(response, "{success:false}");
		}
	}

}