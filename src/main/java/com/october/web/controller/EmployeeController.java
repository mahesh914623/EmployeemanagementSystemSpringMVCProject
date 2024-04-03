package com.october.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
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
import com.october.web.repository.EmployeeInfo;
import com.october.web.repository.Employeeinfo1;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeInfo emprepo;
	@Autowired
	private Employeeinfo1 emprepo1;
	private String E_mail;

	@GetMapping("/")
	public String home() {
		return "Home.jsp";
	}

	@PostMapping("/register")
	public String register(@ModelAttribute Employee ee, Model m) {
		emprepo.save(ee);
		return "Employeeregister.jsp";
	}

	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, Model m) {
		Employee ob = emprepo.findByEmail(email);
		if (ob != null && ob.getEmail().equals(email) && ob.getPassword().equals(password)) {
			List<Employee> li = new ArrayList<>();
			this.E_mail = ob.getEmail();
			li.add(ob);
			m.addAttribute("data_e", li);
			return "Employeedatafetch.jsp";
		} else {
			return "Employeelogin.jsp";
		}
	}

	@RequestMapping("/delete1/{id}")
	public String deletedata(@PathVariable int id) {
		emprepo.deleteById(id);
		return "redirect:/step2";
	}

	@GetMapping("/step2")
	public String delete() {
		return "Employeehome.jsp";
	}

	@GetMapping("/step3")
	public String edit() {
		return "Employeedatafetchpro.jsp";
	}

	@GetMapping("/{id}")
	public String update(@PathVariable int id, Model l) {
		Employee ob = emprepo1.findById(id);
		l.addAttribute("update_e", ob);
		return "Employeedataedit.jsp";
	}

	@GetMapping("/profile")
	public String profiledata(Model m) {
		Employee ob = emprepo.findByEmail(E_mail);
		List<Employee> li = new ArrayList<>();
		li.add(ob);
		m.addAttribute("data_l", li);
		return "Employeedatafetchpro.jsp";
	}

	@PostMapping("/editemp/{id}")
	public String edit(@PathVariable int id, @ModelAttribute Employee l) {

		Employee object = emprepo1.findById(id);

		if (object != null) {
			object.setId(l.getId());
			object.setName(l.getName());
			object.setEmail(l.getEmail());
			object.setPassword(l.getPassword());
			object.setDepartment(l.getDepartment());
			object.setRole(l.getRole());
			object.setPhone(l.getPhone());
			emprepo1.save(object);
			return "redirect:/profile";

		}

		return "redirect:/profile";
	}

	@RequestMapping("/profileadd")
	public String profiledata1(Model m) {
		Employee ob = emprepo.findByEmail(E_mail);
		System.out.println(ob.getEmail());
		List<Employee> li = new ArrayList<>();
		li.add(ob);
		m.addAttribute("data_l", li);

		return "Employeedatafetchpro.jsp";

	}

	@GetMapping("Alldata")
	public String requestMethodName12(Model ml) {
		List<Employee> li = emprepo1.findAll();
		ml.addAttribute("data_l", li);
		return "Employeedatafetchpro2.jsp";
	}

	@PostMapping("/salary/{id}")
	public String postMethodName6565(@PathVariable int id, @ModelAttribute Employee l) {
		Employee ob = emprepo1.findById(id);
		ob.setSalary(l.getSalary());
		emprepo1.save(ob);
		return "redirect:/estep";
	}

	@RequestMapping("/estep")
	public String finaldata() {
		return "Managerdatafetch.jsp";
	}

}
