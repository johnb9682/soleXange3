package com.soleXange.controller.sys;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
 
import com.soleXange.core.Constant;
import com.soleXange.core.JavaEEFrameworkBaseController;
import com.soleXange.model.sys.Category; 
import com.soleXange.service.sys.CategoryService;

import core.support.ExtJSBaseParameter;
import core.support.JqGridPageView;
import core.support.QueryResult;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Category的控制层
 * @Author: Bi Ran
 */
@Controller
@RequestMapping("/category")
public class CategoryController extends JavaEEFrameworkBaseController<Category> implements Constant {

	@Resource
	private CategoryService categoryService;

	// 查询Category的表格，包括分页、搜索和排序
	@RequestMapping("/category")
	public String category(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return "back/category/category";
	}
	
	// get Category in json format
	@RequestMapping(value = "/getCategory", method = { RequestMethod.POST, RequestMethod.GET })
	public void getcategory(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Integer firstResult = 1;
		Integer maxResults = 10;
		String sortedObject = "id";
		String sortedValue = "asc";
		String filters = ""; 
		Category category = new Category();
		if (StringUtils.isNotBlank(filters)) {
			JSONObject jsonObject = JSONObject.fromObject(filters);
			JSONArray jsonArray = (JSONArray) jsonObject.get("rules");
			for (int i = 0; i < jsonArray.size(); i++) {
				JSONObject result = (JSONObject) jsonArray.get(i);
				if (result.getString("field").equals("categoryKey") && result.getString("op").equals("eq")) {
					category.set$eq_categoryKey(result.getString("data"));
				}
				if (result.getString("field").equals("categoryValue") && result.getString("op").equals("cn")) {
					category.set$like_categoryValue(result.getString("data"));
				}
			}
			if (((String) jsonObject.get("groupOp")).equalsIgnoreCase("OR")) {
				category.setFlag("OR");
			} else {
				category.setFlag("AND");
			}
		}
		category.setFirstResult((firstResult - 1) * maxResults);
		category.setMaxResults(maxResults);
		Map<String, String> sortedCondition = new HashMap<String, String>();
		sortedCondition.put(sortedObject, sortedValue);
		category.setSortedConditions(sortedCondition);
		QueryResult<Category> queryResult = categoryService.doPaginationQuery(category);
		JqGridPageView<Category> categoryListView = new JqGridPageView<Category>();
		categoryListView.setMaxResults(maxResults);
		List<Category> categoryWithSubList = categoryService.queryCategoryWithSubList(queryResult.getResultList());
		categoryListView.setRows(categoryWithSubList);
		categoryListView.setRecords(queryResult.getTotalCount());
		writeJSON(response, categoryListView);
	}
	
	// 保存字典的实体Bean
	@RequestMapping(value = "/saveCategory", method = { RequestMethod.POST, RequestMethod.GET })
	public void doSave(Category entity, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ExtJSBaseParameter parameter = ((ExtJSBaseParameter) entity);
		if (CMD_EDIT.equals(parameter.getCmd())) {
			categoryService.merge(entity);
		} else if (CMD_NEW.equals(parameter.getCmd())) {
			categoryService.persist(entity);
		}
		parameter.setSuccess(true);
		writeJSON(response, parameter);
	} 

	// Operate category 的delete、export Excel、edit and add
	@RequestMapping(value = "/operateCategory", method = { RequestMethod.POST, RequestMethod.GET })
	public void operatecategory(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String oper = request.getParameter("oper");
		String id = request.getParameter("id");
		if (oper.equals("del")) {
			//String[] ids = id.split(",");
			//deleteCategory(request, response, (Long[]) ConvertUtils.convert(ids, Long.class));
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
			Map<String, Object> result = new HashMap<String, Object>();
			String description = request.getParameter("description");
			String name = request.getParameter("name");
			String parentid_string = request.getParameter("parentid"); 
			Category category = null;
			if (oper.equals("edit")) {
				//category = categoryService.get(Long.valueOf(id));
			} else {
				Category entity = new Category();
				entity.setDescription(description);
				entity.setName(name);
				entity.setParentid(parentid_string == "" ? null : Integer.valueOf(parentid_string)); 
				if (oper.equals("edit")) {
					//entity.setId(Long.valueOf(id));
					entity.setCmd("edit");
					doSave(entity, request, response);
				} else if (oper.equals("add")) {
					entity.setCmd("new");
					doSave(entity, request, response);
				}
			}
		}
	}
}
