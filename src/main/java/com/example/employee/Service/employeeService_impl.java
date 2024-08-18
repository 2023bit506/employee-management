package com.example.employee.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.employee.Dao.employeeDao;
import com.example.employee.entity.employee;

import jakarta.servlet.http.HttpSession;

@Service
public class employeeService_impl implements employeeService {
	@Autowired
	employeeDao dao;

	@Override
	public employee saveEmployee(employee emp) throws ParseException {
		String employeeId = new SimpleDateFormat("ddMMyyyyHHmmss").format(new Date()); // Generate employee ID
		emp.setEmployeeId(employeeId);

		String createdDate1 = new SimpleDateFormat("ddMMyyyyHHmmss").format(new Date()); // Generate created date string
		Date createdDate = new SimpleDateFormat("ddMMyyyyHHmmss").parse(createdDate1); // Parse the created date string
		emp.setCreateDate(createdDate);

		employee emp1 = dao.saveEmployee(emp);
		return emp1;
	}

	@Override
	public List<employee> getAllEmployee() {
		List<employee> list = dao.getAllEmployee();
		return list;
	}

	@Override
	public employee getEmployeeById(String employeeId) {
		return dao.getEmployeeById(employeeId);
	}

	@Override
	public boolean deleteEmployee(String eid) {
		boolean b = dao.deleteEmployee(eid);
		return b;
	}

	@Override
	public employee updateEmployee(employee emp) {
		// Retrieve the existing employee details using the employeeId
		employee existingEmployee = dao.getEmployeeById(emp.getEmployeeId());
		if (existingEmployee != null) {
			// Retain the existing employeeId and update only createDate
			emp.setEmployeeId(existingEmployee.getEmployeeId());

			// Set the current date as the updated createDate
			emp.setCreateDate(new Date());

			// Update the employee details
			employee updatedEmployee = dao.updateEmployee(emp);
			return updatedEmployee;
		} else {
			// Handle the case where the employee does not exist
			return null;
		}
	}

	@Override
	public employee loginProcess(employee emp) {
		return dao.loginprocess(emp);
	}

	@Override
	public void logout(String eid, HttpSession session) {
		dao.logout(eid);
		session.invalidate();

	}
}
