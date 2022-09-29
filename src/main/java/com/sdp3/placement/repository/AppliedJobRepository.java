package com.sdp3.placement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.placement.entity.AppliedJob;

@Repository
public interface AppliedJobRepository extends JpaRepository<AppliedJob, Long> {
	
}
