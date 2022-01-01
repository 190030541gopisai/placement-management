package com.sdp3.placement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sdp3.placement.entity.Company;
import com.sdp3.placement.services.CompanyService;

@RestController
@RequestMapping("/dashboard")
public class VisualizationController {

	@Autowired
	private CompanyService companyService;
	
	@GetMapping("")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("vis/demo");
		List<Company> companies = companyService.getAllCompanies();
		mv.addObject("companies", companies);
		return mv;
	}
	
}
