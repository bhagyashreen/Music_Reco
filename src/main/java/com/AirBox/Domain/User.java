package com.AirBox.Domain;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class User {

	private Integer id;
	private String password;
	private String userName;
	private String firstName;
	private String lastName;
	//private String linkedInId;
	//private String linkedInUrl;
	private String last_loggedin;
	
	 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
/*	
	public String getLinkedInUrl() {
		return linkedInUrl;
	}
	public void setLinkedInUrl(String linkedInUrl) {
		this.linkedInUrl = linkedInUrl;
	}
	*/
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/*
	public String getLinkedInId() {
		return linkedInId;
	}
	public void setLinkedInId(String linkedInId) {
		this.linkedInId = linkedInId;
	}
	*/
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public void setUser(User user){
		this.id = user.id;
		this.password = user.password;
		this.firstName= user.firstName;
		this.lastName = user.lastName;
		this.userName = user.userName;
	}
	public String getLastloggedin() {
		return last_loggedin;
	}
	/**
	 * @param date the dateCreated to set
	 */
	public void setLastloggedin(String last_loggedin) {
		this.last_loggedin = last_loggedin;
	}
}

