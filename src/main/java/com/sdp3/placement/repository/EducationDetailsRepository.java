package com.sdp3.placement.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.sdp3.placement.entity.EducationDetails;

/*
 * 
 * 	private String schoolname;
		private String schoolcgpa;
		private String intercollagename;
		private String intercgpa;
		private String btechcollagename;
		private String btechcgpa;
		private String noofbacklogs;
 */
@Repository
public interface EducationDetailsRepository extends JpaRepository<EducationDetails, Long > {
		@Query(value="SELECT  ed.eid from edetails ed where ed.sid=?1",nativeQuery = true)
		public Long getIdBySid(Long sid);
	
//	@Query(value="SELECT   from edetails ed where ed.sid=?1",nativeQuery = true)
//	public EducationDetails getEduDetailsBySid(Long sid);
		@Query(value="SELECT  ed.schoolname from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getSchoolNameBySid(Long sid);
		
		@Query(value="SELECT  ed.schoolcgpa from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getSchoolCGPABySid(Long sid);
		
		@Query(value="SELECT  ed.intercollagename from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getInterCollegeNameBySid(Long sid);
		
		@Query(value="SELECT  ed.intercgpa from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getInterCGPABySid(Long sid);
		
		
		@Query(value="SELECT  ed.btechcollagename from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getBtechCollegeNameBySid(Long sid);
		
		@Query(value="SELECT  ed.btechcgpa from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getBtechCGPABySid(Long sid);
		
		
		@Query(value="SELECT  ed.noofbacklogs from edetails ed where ed.sid=?1",nativeQuery = true)
		public String getNoOfBacklogsBySid(Long sid);
}

