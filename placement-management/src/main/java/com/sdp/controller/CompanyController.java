package com.sdp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.entity.Company;
import com.sdp.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;
	
	@GetMapping("/createcompany")
	public ModelAndView addCompany() {
		//org.springframework.web.servlet.ModelAndView.ModelAndView(String viewName, String modelName, Object modelObject)
		return new ModelAndView("company/createcompany","company",new Company());
	}

	@GetMapping("")
	public ModelAndView createCompany() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/companyhome");
		return mv;
	}
	
	@PostMapping("/submitCompany")
	public ModelAndView saveCompany(@ModelAttribute("company") Company company) {
		companyService.saveOrUpdate(company);
		ModelAndView mv = new ModelAndView("SuccessSubmitCompany");
		mv.addObject("company/company_name", company.getCompany_name());
		return mv;
	}
	
	@GetMapping("allcompanies/")
	public ModelAndView listAllCompanies(HttpServletRequest request) {
		List<Company> lst = companyService.getAllCompanies();
		request.setAttribute("companies",lst);
		ModelAndView mv = new ModelAndView("company/ListAllCompanies");
		return mv;
	}

}
