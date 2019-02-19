package com.cafecalledencapsulation.cafe;

// user class allows us to create user objects 
public class User {

	private String firstName;
	private String lastName;
	private String socialSecurity;
	private int shoeSize;
	private String roast;
	private String extraction;
	private String email;
	private String birthDate;

// no args constructor 
	public User() {

	}

// overloaded constructor 
	public User(String firstname, String lastname, String socialSecurity, int shoeSize, String roast) {
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

}
