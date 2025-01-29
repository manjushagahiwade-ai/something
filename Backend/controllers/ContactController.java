package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Contact;
import com.example.demo.services.ContactService;

@RestController
public class ContactController {
	
	@Autowired
	ContactService cservice;
	
	@GetMapping("/getAllContacts")
	public List<Contact> getAllContacts() {
		return cservice.getAll();
	}
	
	@GetMapping("/getContact")
	public Contact getContact(@RequestParam("contactid") int cid) {
		return cservice.getOne(cid);		
	}
	
	@PostMapping("/saveContact")
	public Contact saveContact(@RequestBody Contact ct) {
		return cservice.save(ct);
	}
	
	@GetMapping("/getByName")
	public List<Contact> getContact(@RequestParam("firstname") String fname){
		return cservice.getContacts(fname);
	}
	
	//routing parameter - part of url	
	@GetMapping("/getByChar/{ch}")
	public List<Contact> getContact(@PathVariable char ch){
		return cservice.getByFname(ch);
	}
	
	@GetMapping("/getById/{id}")
	public List<Contact> getContacts(@PathVariable int id){
		return cservice.getContacts(id);
	}
	
	@PutMapping("/updateEmail")
	public int upodateEmail(@RequestParam String email, @RequestParam int cid) {
		System.out.println(email+" : "+cid);
		return cservice.updateEmail(email, cid);
	}
	
	
	
}
