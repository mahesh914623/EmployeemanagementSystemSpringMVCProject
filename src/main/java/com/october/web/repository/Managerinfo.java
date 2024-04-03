package com.october.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.october.web.model.Manager;
import java.util.List;

public interface Managerinfo extends JpaRepository<Manager, Integer>{
   public Manager  findByEmail(String email);
   public Manager  findById(int id); 
}
