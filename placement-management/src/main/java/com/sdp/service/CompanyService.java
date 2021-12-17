package com.sdp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.entity.Company;
import com.sdp.repository.CompanyRepository;

@Service
public class CompanyService {

	@Autowired
	private CompanyRepository companyRepository;
	
	public List<Company> getAllCompanies(){
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
 	

}
