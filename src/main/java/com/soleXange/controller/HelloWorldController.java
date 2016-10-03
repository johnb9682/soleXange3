package com.soleXange.controller; 

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
import com.soleXange.core.Constant; 
import com.soleXange.model.sys.Category;
import com.soleXange.model.sys.User;
import com.soleXange.service.sys.CategoryService;
 
@Controller
public class HelloWorldController {
	String message = "Welcome to Spring MVC!"; 

	@Resource
	private CategoryService categoryService;
 
	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	} 
	
	// 跳转到主页，获取菜单并授权
	@RequestMapping("/home")
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession(); 
		System.out.println("Render index page");
		if (session.getAttribute(com.soleXange.core.Constant.SESSION_SYS_USER) == null) { 
			return new ModelAndView();
		} else {
			User user = (User) session.getAttribute(com.soleXange.core.Constant.SESSION_SYS_USER);  
			List<Category> allMenuList = categoryService.queryAllCategoryList();  
			return new ModelAndView("back/index", "menuList", allMenuList); 
		}
	}

//	@RequestMapping("/home")
//	public ModelAndView showHomeMessage(@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
//		System.out.println("home in controller");
// 
//		ModelAndView mv = new ModelAndView("back/index");
//		mv.addObject("message", message);
//		mv.addObject("name", name);
//		return mv;
//	} 
}
