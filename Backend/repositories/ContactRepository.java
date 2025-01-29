package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entities.Contact;

import jakarta.persistence.NamedQuery;

@Transactional
@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer> {

	@Query(value = "select c from Contact c where c.fname = :criteria")
	public List<Contact> getContacts(String criteria);
		
	@Query("select c from Contact c where fname = :fname")
	public List<Contact> getByFname(String fname);
	
	@Query(value="select * from contacts where cid > ?1",nativeQuery = true)
	public List<Contact> getById(int id);
	
	//executeUpdate()
	@Modifying
	@Query("update Contact set email = :email where cid = :cid")
	public int updateEmail(String email,int cid);
	
	//fname and lname are properties - Contact class
	//no @Query annotation
	public List<Contact> findByLnameAndFname(String lname,String fname);
	
	@Procedure(procedureName = "",outputParameterName = "" )
	public void callPro();
	
}
