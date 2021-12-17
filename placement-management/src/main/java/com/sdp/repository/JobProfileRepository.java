package com.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp.entity.JobProfile;

@Repository
public interface JobProfileRepository extends JpaRepository<JobProfile, Integer>  {
	
}
