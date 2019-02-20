package com.my.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/demo")
@Controller
public class DemoTestController {

	@RequestMapping
	public String toDemo(HttpServletRequest request) {
		request.setAttribute("name", "my_name");
		request.setAttribute("sex", "man");
		request.setAttribute("personal_infomation", "hight,beautiful,nice");
		return "demo";
	}

	@RequestMapping("/save")
	public String  getDemoForm(HttpServletRequest request) {
		String Pcontent=(String) request.getParameter("content");
		System.out.println("Pcontent:"+Pcontent);
		return "save";
	}

}
