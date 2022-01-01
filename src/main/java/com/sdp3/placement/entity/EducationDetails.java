package com.sdp3.placement.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

@Entity
public class EducationDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long eid;
		
		
		@OneToOne
		@JoinColumn(name = "sid",referencedColumnName = "idno",unique = true)
		private User user;
		
		private String schoolname;
		private String schoolcgpa;
		private String intercollagename;
		private String intercgpa;
		private String btechcollagename;
		private String btechcgpa;
		private String noofbacklogs;

		public Long getEid() {
			return eid;
		}
		public void setEid(Long eid) {
			this.eid = eid;
		}
		//		public Long getId() {
//			return id;
//		}
//		public void setId(Long id) {
//			this.id = id;
//		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public String getSchoolname() {
			return schoolname;
		}
		public void setSchoolname(String schoolname) {
			this.schoolname = schoolname;
		}
		public String getSchoolcgpa() {
			return schoolcgpa;
		}
		public void setSchoolcgpa(String schoolcgpa) {
			this.schoolcgpa = schoolcgpa;
		}
		
		public String getIntercollagename() {
			return intercollagename;
		}
		public void setIntercollagename(String intercollagename) {
			this.intercollagename = intercollagename;
		}
		public String getIntercgpa() {
			return intercgpa;
		}
		public void setIntercgpa(String intercgpa) {
			this.intercgpa = intercgpa;
		}
		public String getBtechcollagename() {
			return btechcollagename;
		}
		public void setBtechcollagename(String btechcollagename) {
			this.btechcollagename = btechcollagename;
		}
		public String getBtechcgpa() {
			return btechcgpa;
		}
		public void setBtechcgpa(String btechcgpa) {
			this.btechcgpa = btechcgpa;
		}
		public String getNoofbacklogs() {
			return noofbacklogs;
		}
		public void setNoofbacklogs(String noofbacklogs) {
			this.noofbacklogs = noofbacklogs;
		}
		
		
}
