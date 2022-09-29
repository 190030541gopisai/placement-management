package com.sdp3.placement.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp3.placement.entity.EducationDetails;
import com.sdp3.placement.entity.User;
import com.sdp3.placement.repository.EducationDetailsRepository;

@Service
public class EducationDetailsService {
	@Autowired
	private EducationDetailsRepository edrepo;
	
	public void saveEducationDetails(EducationDetails ed) {
		edrepo.save(ed);
		
	}
	
	public Long getEducationDetailsByStudentId(Long userid) {
//		return edrepo.findById(sid).get();
		return edrepo.getIdBySid(userid);
	}
	public EducationDetails getRemainingDetails(Long userid) {
		EducationDetails ed = new EducationDetails();
		ed.setSchoolname(edrepo.getSchoolNameBySid(userid));
		ed.setSchoolcgpa(edrepo.getSchoolCGPABySid(userid));
		ed.setIntercollagename(edrepo.getInterCollegeNameBySid(userid));
		ed.setIntercgpa(edrepo.getInterCGPABySid(userid));
		ed.setBtechcollagename(edrepo.getBtechCollegeNameBySid(userid));
		ed.setBtechcgpa(edrepo.getBtechCGPABySid(userid));
		ed.setNoofbacklogs(edrepo.getNoOfBacklogsBySid(userid));
		return ed;
		
	}
//	public EducationDetails getEducationDetailsByStudentId(Long userid) {
////		return edrepo.findById(sid).get();
//		return edrepo.getEduDetailsBySid(userid);
//	}
	public EducationDetails findById(Long id) {
		String user = edrepo.findById(id).toString();
		System.out.println(user);
		return new EducationDetails();
	}
}
