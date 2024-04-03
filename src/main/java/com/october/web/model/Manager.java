package com.october.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Manager {
 @Id
 @GeneratedValue(strategy = GenerationType.AUTO)
 private int id;
 private String name;
 @Column(unique = true)
 private String email;
 private String password;
 private String birthdate;
 private String decription;
 private String phone;
public Manager() {

}
public Manager(int id, String name, String email, String password, String birthdate, String decription, String phone) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.password = password;
	this.birthdate = birthdate;
	this.decription = decription;
	this.phone = phone;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getBirthdate() {
	return birthdate;
}
public void setBirthdate(String birthdate) {
	this.birthdate = birthdate;
}
public String getDecription() {
	return decription;
}
public void setDecription(String decription) {
	this.decription = decription;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
@Override
public String toString() {
	return "Manager [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", birthdate="
			+ birthdate + ", decription=" + decription + ", phone=" + phone + "]";
}



}
