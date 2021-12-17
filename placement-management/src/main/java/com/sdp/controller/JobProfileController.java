package com.sdp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.entity.Company;
import com.sdp.entity.JobProfile;
import com.sdp.service.CompanyService;
import com.sdp.service.JobProfileService;

@Controller
@RequestMapping("/jobprofile")
public class JobProfileController {
	
	@Autowired
	private JobProfileService jobProfileService;
	@Autowired
	private CompanyService companyService;
	
	//list all job profiles
	@GetMapping("")
	public ModelAndView getAllJobProfiles() {
		List<JobProfile> jobprofiles = jobProfileService.getAllJobProfiles();
		System.out.println(jobprofiles.get(0).getName());
		return new ModelAndView("jobprofile/ListAllJobProfiles").addObject("jobprofiles",jobprofiles);
	}
	
	@GetMapping("/createjobprofile-view")
	public ModelAndView createJobProfileView() {
		System.out.println("qoekaing");
		ModelAndView mv = new ModelAndView("jobprofile/CreateJobProfile","jobprofile",new JobProfile());
		List<Company> companies = companyService.getAllCompanies();
		mv.addObject("companies", companies);
		return mv;
	}
	
	@PostMapping("/createjobprofile-submit")
	public ModelAndView saveJobProfile(@ModelAttribute("jobprofile") JobProfile job_profile) {
		job_profile.setStatus(true);
		System.out.println("working createjobprofile-submit");
		jobProfileService.saveJobProfile(job_profile);
		ModelAndView mv = new ModelAndView("jobprofile/SuccessSubmitCompany");
		return	mv;
	}
	
}
