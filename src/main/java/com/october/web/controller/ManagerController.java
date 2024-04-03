package com.october.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.october.web.model.Employee;
import com.october.web.model.Manager;
import com.october.web.repository.Managerinfo;

import net.bytebuddy.asm.Advice.This;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class ManagerController {
   @Autowired
   private Managerinfo ob;
      
   private int id;
   private String email;
   private String email1;
   @PostMapping("/managerdata")
	public String register(@ModelAttribute Manager ee,Model m)
	{
	   ob.save(ee);
		return "Managerregister.jsp";
	}
   @RequestMapping("managerlogin")
   public String postMethodmanager(@RequestParam String email,@RequestParam String password,Model k) {
       Manager Manobj=ob.findByEmail(email);
   if ( Manobj!=null && Manobj.getEmail().equals(email)&& Manobj.getPassword().equals(password)) {
	   List<Manager> li=new ArrayList<>();
	   li.add(Manobj);
		k.addAttribute("Data_m",li);
		return "Managerdatafetch.jsp";
	} else {
		return "Managerlogin.jsp";
	}
  }
   @GetMapping("editempm/{email}")
   public String edit(@PathVariable String email, @ModelAttribute Manager l,Model ml) {
       Manager object = ob.findByEmail(email);
       if (object != null) {
           
    	   object.setId(l.getId());
           object.setName(l.getName());
           object.setEmail(l.getEmail());
           object.setPassword(l.getPassword());
           object.setBirthdate(l.getBirthdate());
           object.setDecription(l.getDecription());
           object.setPhone(l.getPhone());
          ob.save(object);
          Manager object1 = ob.findByEmail(email);
          this.email1=object1.getEmail();
           return "redirect:/mstep1"; 
           
       }
       return "redirect:/mstep1";
   }
   @GetMapping("/mstep1")
	public String getMethodName12() {
		return "redirect:/managerdatafet"; 
	}
	
   @GetMapping("/managerdatafet")
	public String getMethodName1(Model K) {
		   Manager object1 = ob.findByEmail(email1);
		   List<Manager>li=new ArrayList<>();
		   li.add(object1);
           K.addAttribute("Data_ml",li);
           System.out.println(object1);
           return "Managerdatafetch2.jsp"; 
	}
 
	@GetMapping("/ed/{id}") 
	public String update(@PathVariable int id) {
		
		this.id=id;
		return "redirect:/edl";
	}
	@GetMapping("/edl")
	public String getMethodName(Model k) {
		Manager ml=ob.findById(id);
		k.addAttribute("data_kl", ml);
		
		return "Managerdataedit.jsp" ;
	}
	
	@RequestMapping("/delete1123/{id}")
	public String requestMethodName(@PathVariable int id) {
		ob.deleteById(id);
		return "redirect:/Mstep23";
	}
	@GetMapping("/Mstep23")
	public String getMethodName1234() {
		return "Managerhome.jsp";
	}
	
	
	
	
	
	
   
}
