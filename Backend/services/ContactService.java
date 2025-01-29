package com.example.demo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Contact;
import com.example.demo.repositories.ContactRepository;

@Service
public class ContactService {
	
	@Autowired
	ContactRepository crepo;
	
	public List<Contact> getAll() {
		return crepo.findAll();
	}
	
	public Contact save(Contact ct) {
		return crepo.save(ct);
	}
	
	public Contact getOne(int cid) {
		Optional<Contact> op_con = crepo.findById(cid);
		Contact ct = null;
		try {
			ct = op_con.get();
		}
		catch(Exception e) {
			e.printStackTrace();
		}		
		return ct;
	}
	
	public List<Contact> getContacts(String fname){
		return crepo.getByFname(fname);
	}
	
	public List<Contact> getByFname(char ch){
		String str = ch+"%";
		System.out.println(str);
		return crepo.getByFname(str);
	}

	public List<Contact> getContacts(int id){
		return crepo.getById(id);
	}
	
	public int updateEmail(String email,int cid) {
		System.out.println(email+" : "+cid);
		return crepo.updateEmail(email, cid);
	}
	
}







