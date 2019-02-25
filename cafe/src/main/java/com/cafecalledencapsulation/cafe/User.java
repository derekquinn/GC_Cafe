package com.cafecalledencapsulation.cafe;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users") // name of SQL table
// user class allows us to create user objects 
public class User {

	// Mark the ID, and designate that it is auto-generated
		
	private String password;
	//private String password2;
	@Column(name="firstname") // name of SQL column if they are different than actual db column names
	private String firstName;
	@Column(name="lastname")
	private String lastName;
	@Column(name="ssn")
	private String socialSecurity;
	@Column(name="shoesize")
	private int shoeSize;
	@Column(name="roast")
	private String roast;
	@Column(name="extraction")
	private String extraction;
	private String email;
	@Column(name="birthdate")
	private String birthDate;
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long iD;

// no args constructor 
	public User() {

	}

// overloaded constructor 
	public User(String password,String firstName, String lastName, String socialSecurity, int shoeSize, String roast,
			String extraction, String email, String birthDate) {
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.socialSecurity = socialSecurity;
		this.shoeSize = shoeSize;
		this.roast = roast;
		this.extraction = extraction;
		this.email = email;
		this.birthDate = birthDate;

	}

// getters for users object 
//	public String getPassword2() {
//		return password2;
	//}
	public String getPassword() {
		return password;
	}
	public Long getId() {
		return iD;
	}
	public String getEmail() {
		return email;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public String getExtraction() {
		return extraction;
	}
	public String getRoast() {
		return roast;
	}
	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getSocialSecurity() {
		return socialSecurity;
	}

	public int getShoeSize() {
		return shoeSize;
	}

// setters for users object 

	public void setPassword (String password) {
		this.password = password;
	}
	public void setId(Long iD) {
		this.iD=iD;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setExtraction(String extraction) {
		this.extraction = extraction; 
	}
	public void setRoast(String roast) {
		this.roast = roast;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setShoeSize(int shoeSize) {
		this.shoeSize = shoeSize;
	}

	public void setSocialSecurity(String socialSecurity) {
		this.socialSecurity = socialSecurity;
	}
	
	@Override
	public String toString() {
		return "User:" + lastName + ", " + firstName;
	}

}


