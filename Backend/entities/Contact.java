package com.example.demo.entities;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

@Entity
@Table(name="contacts")
public class Contact {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int cid;
	String uid;
	String password;
	@Column(name="fnanme")
	String fname;
	String lname;
	String email;
	String contactno;
	@JsonFormat(pattern = "yyyy-MM-dd")
	Date bdate;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Contact(int cid, String uid, String password, String fname, String lname, String email, String contactno,
			Date bdate) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contactno = contactno;
		this.bdate = bdate;
	}

	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
		
}
