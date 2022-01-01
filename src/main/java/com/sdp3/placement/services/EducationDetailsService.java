package com.sdp3.placement.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp3.placement.entity.EducationDetails;
import com.sdp3.placement.repository.EducationDetailsRepository;

@Service
public class EducationDetailsService {
	@Autowired
	private EducationDetailsRepository edrepo;
	
	public void saveEducationDetails(EducationDetails ed) {
		edrepo.save(ed);
	}
	
	public EducationDetails getEducationDetailsByStudentId(long sid) {
		return edrepo.findById(sid).get();
}
	
	

}
