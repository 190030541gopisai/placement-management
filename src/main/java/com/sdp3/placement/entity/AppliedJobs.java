package com.sdp3.placement.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AppliedJobs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long applied_id;
	
	/*
	
	
	 private User user;
	 
	 
	 private Company company;
	 */
	

}
