package com.get.WorkWise.model.repo;

import com.get.WorkWise.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepo extends JpaRepository<Employee, Long> {
}
