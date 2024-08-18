package com.example.employee.Dao;

import java.util.List;

import com.example.employee.entity.employee;

public interface employeeDao {
	public employee saveEmployee(employee emp);

	public List<employee> getAllEmployee();

	public employee getEmployeeById(String employeeId);

	public boolean deleteEmployee(String Id);

	public employee updateEmployee(employee emp);

	public employee loginprocess(employee emp);

	public void logout(String eid);
}
