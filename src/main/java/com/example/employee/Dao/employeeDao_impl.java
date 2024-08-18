package com.example.employee.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.employee.entity.employee;

@Repository
public class employeeDao_impl implements employeeDao {
	@Autowired
	SessionFactory sf;

	@Override
	public employee saveEmployee(employee emp) {
		System.out.println("In dao" + emp);
		Session ses = sf.openSession();
		Transaction tx = ses.beginTransaction();

		employee std = null;

		try {
			ses.save(emp);
			tx.commit();
			std = emp;

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			ses.close();
		}

		return std;
	}

	@Override
	public List<employee> getAllEmployee() {
		Session ses = sf.openSession();
		List<employee> list = null;

		try {
			Query<employee> qr = ses.createQuery("from employee", employee.class);
			list = qr.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return list;
	}

	@Override
	public employee getEmployeeById(String employeeId) {
		// TODO Auto-generated method stub
		Session ses = sf.openSession();
		employee emp = null;
		try {
			employee emp1 = ses.get(employee.class, employeeId);
			emp = emp1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			ses.close();
		}

		return emp;
	}

	@Override
	public boolean deleteEmployee(String eid) {
		Session ses = sf.openSession();
		Transaction tx = ses.beginTransaction();
		boolean b = false;

		try {
			employee emp = ses.get(employee.class, eid);
			if (emp != null) {
				ses.delete(emp);
				tx.commit();
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return b;
	}

	@Override
	public employee updateEmployee(employee emp) {
		Session ses = sf.openSession();
		Transaction tx = ses.beginTransaction();

		try {
			ses.update(emp);
			tx.commit();
			return emp;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			ses.close();
		}

		return null;
	}

	@Override
	public employee loginprocess(employee emp) {
		Session ses = sf.openSession();
		Transaction tx = ses.beginTransaction();
		employee emp1 = null;
		Query query = ses.createQuery("from employee WHERE userName=:username AND password=:password");
		query.setParameter("username", emp.getUserName());
		query.setParameter("password", emp.getPassword());
		List<employee> list = query.list();
		if (!list.isEmpty()) {
			emp1 = list.get(0);
			emp1.setStatus("active");
			ses.update(emp1);
			tx.commit();
		} else {
			return emp1 = null;
		}
		return emp1;

	}

	@Override
	public void logout(String eid) {
		employee emp = getEmployeeById(eid);
		emp.setStatus("inactive");
		updateEmployee(emp);
	}
}
