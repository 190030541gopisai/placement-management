package com.sdp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.entity.Company;
import com.sdp.entity.JobProfile;
import com.sdp.repository.JobProfileRepository;

@Service
public class JobProfileService {
	
	@Autowired
	private JobProfileRepository jobProfileRepository;
	
	public List<JobProfile> getAllJobProfiles(){
		List<JobProfile> lst = new ArrayList<JobProfile>();
		jobProfileRepository.findAll().forEach(jobprofile -> 
						lst.add(jobprofile)
				);
		return lst;
	}

	public void saveJobProfile(JobProfile job_profile) {
		// TODO Auto-generated method stub
		jobProfileRepository.save(job_profile);
	}
	
	
	/*
	 * public List<Company> getAllCompanies(){
		List<Company> lst = new ArrayList<Company>();
		companyRepository.findAll().forEach(Company -> lst.add(Company));
		return lst;
	}
	
	public Company getCompanyById(long id) {
			return companyRepository.findById(id).get();
	}
	
	public Company saveOrUpdate(Company Company) {
		return companyRepository.save(Company);
	}
	
	public void delete(long id) {
		companyRepository.deleteById(id);
	}
 	*/
}
