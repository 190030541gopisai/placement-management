package com.sdp3.placement.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class AppliedJob {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long applied_id;
	
	private Long userid;
	private Long company_id;
	
	private String company_name;
	private String industry;
	
	
	
	
	
	
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public Long getApplied_id() {
		return applied_id;
	}
	public void setApplied_id(Long applied_id) {
		this.applied_id = applied_id;
	}
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public Long getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Long company_id) {
		this.company_id = company_id;
	}
	
	
	
//	 @OneToMany
//	 @Column(name = "sid")
//	 private Set<User> user;
//	 
//	 @OneToOne
//	 @JoinColumn(name = "cid",referencedColumnName = "id",unique = true)
//	 private Company company;
//
//	public long getApplied_id() {
//		return applied_id;
//	}
//
//	public void setApplied_id(long applied_id) {
//		this.applied_id = applied_id;
//	}
//
//	public Set<User> getUser() {
//		return user;
//	}
//
//	public void setUser(Set<User> user) {
//		this.user = user;
//	}
//
//	public Company getCompany() {
//		return company;
//	}
//
//	public void setCompany(Company company) {
//		this.company = company;
//	}
//
//	
	 
	 
	 
	

}
