package com.example.employee.Controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.employee.Service.employeeService;
import com.example.employee.entity.employee;

import jakarta.servlet.http.HttpSession;

@Controller
public class employeeController {
	@Autowired
	employeeService service;

	@PostMapping(value = "/loginprocess")
	public ModelAndView loginProcess(@ModelAttribute employee emp, HttpSession session) {
		employee emp1 = service.loginProcess(emp);
		if (emp1 != null) {
			session.setAttribute("username", emp1.getUserName());
			session.setAttribute("id", emp1.getEmployeeId());
			session.setAttribute("role", emp1.getRole());
			session.setAttribute("status", emp1.getStatus());

			return new ModelAndView("home");
		} else {
			return new ModelAndView("login", "msg", "Invalid Details");
		}
	}

	@PostMapping(value = "/saveEmployee")
	public ModelAndView saveEmployee(@ModelAttribute employee emp) throws ParseException {
		employee emp2 = service.saveEmployee(emp);
		System.out.println(emp2);

		if (emp2 != null) {
			return new ModelAndView("addEmployees", "msg", "Employee Inserted Successfully");
		} else {
			return new ModelAndView("addEmployees", "msg", "Something Went Wrong");
		}

	}

	@GetMapping(value = "/getAllEmployees")
	public ModelAndView getAllEmployees(@RequestParam(required = false) String msg, Model model) {
		List<employee> list = service.getAllEmployee();
		ModelAndView mav = new ModelAndView("ListOfAllEmployees");
		mav.addObject("employees", list);
		if (msg != null) {
			mav.addObject("msg", msg);
		}
		return mav;
	}

	@GetMapping(value = "getEmployeeById")
	public ModelAndView getEmployeeById(@RequestParam String eid, @RequestParam String msg, Model model) {
		employee emp1 = service.getEmployeeById(eid);
		if (!msg.equalsIgnoreCase("null")) {
			model.addAttribute("msg", msg);
		}
		model.addAttribute("employee", emp1);
		return new ModelAndView("profile");
	}

	@GetMapping(value = "deleteEmployee")
	public String deleteEmployee(@RequestParam String eid) {
		boolean b = service.deleteEmployee(eid);

		if (b == true) {
			return "redirect:/getAllEmployees";

		} else {
			return "redirect:/getAllEmployees";
		}
	}

	@RequestMapping(value = "/updateEmployee")
	public ModelAndView updateEmployee(@ModelAttribute employee emp) {
		employee emp4 = service.updateEmployee(emp);
		if (emp4 != null) {
			return new ModelAndView("redirect:/getAllEmployees?msg=Employee Updated Successfully");
		} else {
			return new ModelAndView("redirect:/getAllEmployees?msg=Failed To Update");
		}
	}

	@RequestMapping(value = "/logout")
	public String logout(@RequestParam String eid, HttpSession session) {
		service.logout(eid, session);
		return "login";
	}
}
