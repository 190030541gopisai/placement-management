package com.sdp3.placement.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp3.placement.entity.AppliedJob;
import com.sdp3.placement.entity.Company;
import com.sdp3.placement.entity.EducationDetails;
import com.sdp3.placement.repository.AppliedJobRepository;

@Service
public class AppliedJobService {
//	public AppliedJob
	@Autowired
	AppliedJobRepository appliedJobRepo;
	
	
	public void saveEducationDetails(AppliedJob aj) {
		appliedJobRepo.save(aj);
	}
	
	public List<AppliedJob> getAllJobsAppliedByUserId(Long userid) {
		List<AppliedJob> lst = new ArrayList<AppliedJob>();
		List<AppliedJob> temp = appliedJobRepo.findAll();
		for(AppliedJob aj : temp) {
			Long uid = aj.getUserid();
			if(uid.longValue()==userid.longValue()) {
				lst.add(aj);
			}
		}
		return lst;
	}
	public void appliedjobdelete(Long id) {
    	appliedJobRepo.deleteById(id);
	}
}

