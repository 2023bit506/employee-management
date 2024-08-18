package com.example.employee.Service;

import java.text.ParseException;
import java.util.List;

import com.example.employee.entity.employee;

import jakarta.servlet.http.HttpSession;

public interface employeeService {
	public employee saveEmployee(employee emp) throws ParseException;

	public List<employee> getAllEmployee();

	public employee getEmployeeById(String employeeId);

	public boolean deleteEmployee(String Id);

	public employee updateEmployee(employee emp);

	public employee loginProcess(employee emp);

	public void logout(String eid, HttpSession session);
}
