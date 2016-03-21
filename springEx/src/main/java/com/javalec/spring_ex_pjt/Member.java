package com.javalec.spring_ex_pjt;

public class Member {
	
	private String name;
	private String id;
	private String pw;
	private String email;
	
	public String getName() {
		return name;
	}
	public String setName(String name) {
		name="hosae";
		return name;
	}
	public String getId() {
		return id;
	}
	public String setId(String id) {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
