package com.sdp3.placement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.placement.entity.EducationDetails;
import com.sdp3.placement.entity.User;


@Repository
public interface EducationDetailsRepository extends JpaRepository<EducationDetails, Long > {

}
