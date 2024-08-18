package com.example.employee.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class pageController {
	@RequestMapping(value = "/")
	public String login() {
		System.out.println("In page Controller");
		return "login";
	}

	@RequestMapping(value = "/homePage")
	public String homePage(HttpSession session, Model model) {
		String status = (String) session.getAttribute("status");
		if (status != null) {
			return "home";
		} else {
			model.addAttribute("msg", "Please Login First");
			return "login";
		}

	}

	@RequestMapping(value = "/addEmployees")
	public String addEmployee(HttpSession session, Model model) {
		String status = (String) session.getAttribute("status");
		if (status != null) {
			System.out.println("In the hompage Controller");
			return "addEmployees";
		} else {
			model.addAttribute("msg", "Please Login First");
			return "login";
		}

	}

}
