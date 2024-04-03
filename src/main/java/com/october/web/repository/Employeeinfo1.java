package com.october.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.october.web.model.Employee;
import java.util.List;


@Repository
public interface Employeeinfo1  extends JpaRepository<Employee, Integer>{
	public  Employee findById(int id);
	;
}
