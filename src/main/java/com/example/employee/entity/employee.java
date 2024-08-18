package com.example.employee.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class employee {
	@Id
	private String employeeId;
	private String userName;
	private String password;
	private long salary;
	private String department;
	private String status = "inactive";
	private String role;
	Date createDate;
	private String gender;
	private String phone;
	private String email;
	private String question;
	private String answer;

	public employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public employee(String employeeId, String userName, String password, long salary, String department, String status,
			String role, Date createDate, String gender, String phone, String email, String question, String answer) {
		super();
		this.employeeId = employeeId;
		this.userName = userName;
		this.password = password;
		this.salary = salary;
		this.department = department;
		this.status = status;
		this.role = role;
		this.createDate = createDate;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.question = question;
		this.answer = answer;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getSalary() {
		return salary;
	}

	public void setSalary(long salary) {
		this.salary = salary;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "employee [employeeId=" + employeeId + ", userName=" + userName + ", password=" + password + ", salary="
				+ salary + ", department=" + department + ", status=" + status + ", role=" + role + ", createDate="
				+ createDate + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", question=" + question
				+ ", answer=" + answer + "]";
	}

}
