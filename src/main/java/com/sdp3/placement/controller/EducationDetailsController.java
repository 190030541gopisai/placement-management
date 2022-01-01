package com.sdp3.placement.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sdp3.placement.entity.EducationDetails;
import com.sdp3.placement.entity.User;
import com.sdp3.placement.services.EducationDetailsService;
import com.sdp3.placement.services.UserService;

@Controller
@RequestMapping("/educationdetails")
public class EducationDetailsController {

	@Autowired
	private EducationDetailsService edservice;
	private String url = "EducationDetails/";
	
	@Autowired
    private UserService userService;
    
	
	@PostMapping("/save")
	public ModelAndView saveEducationDetails(HttpServletRequest request,@ModelAttribute("education_details") EducationDetails ed) {
		String username = (String) request.getSession().getAttribute("username");
		System.out.println(username);
		List<User> users = userService.getUserbyName(username);
		User user = users.get(0);				
		ed.setUser(user);
		edservice.saveEducationDetails(ed);
		return new ModelAndView(url+"educationdetails", "education_details", new EducationDetails());		
	}

//		@PostMapping("/save")
//		 public ModelAndView saveEducationDetails(@ModelAttribute("education_details") EducationDetails ed) {
//		HttpServletRequest request;
//		HttpSession session = request.getSession();
//		User user =userService.getByUsername(session.getAttribute("username"));
//		ed.setEid(user.getIdno());
		
//		 edservice.saveEducationDetails(ed);
//		  return new ModelAndView(url+"educationdetails", "education_details", new EducationDetails());  
//		 }
//	
	@GetMapping("")
	public ModelAndView getFormOfEducationalDetails(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
    	if(session.getAttribute("username")==null) 
    	{
			ModelAndView mav = new ModelAndView("loginpage");
			return mav;
		}
    	else {
		return new ModelAndView(url+"educationdetails", "education_details", new EducationDetails());		
    	}
	}
}
