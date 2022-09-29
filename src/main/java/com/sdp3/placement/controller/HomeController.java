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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sdp3.placement.entity.AppliedJob;
import com.sdp3.placement.entity.Company;
import com.sdp3.placement.entity.EducationDetails;
import com.sdp3.placement.entity.User;
import com.sdp3.placement.services.AppliedJobService;
import com.sdp3.placement.services.CompanyService;
import com.sdp3.placement.services.EducationDetailsService;
import com.sdp3.placement.services.UserService;
@Controller
public class HomeController {

	@Autowired
	UserService userServices;
	
	@Autowired 
	CompanyService companyService;
	
	@Autowired
	EducationDetailsService edService;
	
	@Autowired
	private AppliedJobService ajservice;

    @GetMapping("/")
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	   public String contactus() {
	      return "contactus";
	   }
//	@RequestMapping(value = "/quizhome", method = RequestMethod.GET)
//	public ModelAndView quizhome(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
//		HttpSession session = request.getSession();
//    	if(session.getAttribute("username")==null) 
//    	{
//			ModelAndView mav = new ModelAndView("loginpage");
//			return mav;
//		}
//    	else {
//    		return new ModelAndView("quizhome");
//    	}
//	}
//	@RequestMapping(value = "/quiz", method = RequestMethod.GET)
//	public ModelAndView quiz(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
//		HttpSession session = request.getSession();
//    	if(session.getAttribute("username")==null) 
//    	{
//			ModelAndView mav = new ModelAndView("loginpage");
//			return mav;
//		}
//    	else {
//    		return new ModelAndView("quiz");
//    	}
//	}
//	@RequestMapping(value = "/quiz1", method = RequestMethod.GET)
//	public ModelAndView quiz1(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
//		HttpSession session = request.getSession();
//    	if(session.getAttribute("username")==null) 
//    	{
//			ModelAndView mav = new ModelAndView("loginpage");
//			return mav;
//		}
//    	else {
//    		return new ModelAndView("quiz1");
//    	}
//	}
//	   
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	   public String aboutus() {
	      return "aboutus";
	   }
    @GetMapping("/loginpage")
    public ModelAndView login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
    	HttpSession session = request.getSession();
    	if(session.getAttribute("username")!=null) {
    		return new ModelAndView("redirect:/");
    	}
    	else {
    		
    		ModelAndView mView = new ModelAndView();
    		mView.setViewName("loginpage");
    		return mView;
    	}
        
    }
    
    @GetMapping("/signuppage")
    public ModelAndView signup(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
    	System.out.println("\nHomeController.java ---> signuppage for student");
    	HttpSession session = request.getSession();
    	String username = (String) session.getAttribute("username");
    	if(username!=null && username.equals("admin")==true) 
    	{
    		System.out.println("\nHomeController.java ---> You are admin You can create accounts for student");
			ModelAndView mav = new ModelAndView("signup");
			return mav;
		}
		System.out.println("\\nHomeController.java ---> Return to Admin Login Page Because You are not Admin!");
		return new ModelAndView("redirect:/loginpage");
	
    }

	@GetMapping("/profile")
	public ModelAndView profile(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("HomeController.java ---> profile");
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("username");
		List<User> users = userServices.getUserbyId(user);
		
		
		
		
		if(users==null) {
    		return new ModelAndView("redirect:/loginpage");
    	}
    	else {
    		ModelAndView mv = new ModelAndView();
    		for (User u : users) {
    			mv.addObject("idno",u.getIdno());
        		mv.addObject("username",u.getUsername());
        		mv.addObject("name",u.getName());
        		mv.addObject("email",u.getEmail());
        		mv.addObject("password",u.getPassword());
        		mv.addObject("phone",u.getPhone());
			}
//    		User u = users.get(0);
//    		long sid = u.getIdno();
//    		System.out.println(sid+"--------------");
//    		EducationDetails ed = edService.getEducationDetailsByStudentId(sid);
//    		mv.addObject("education_details", ed);
    		
    		mv.setViewName("profile");
    		return mv;
    	}
	}

	

	@GetMapping("/update")
	public ModelAndView update(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("username");
		if(user==null) {
    		return new ModelAndView("redirect:/loginpage");
    	}
    	else {
    		ModelAndView mv = new ModelAndView();
			List<User> users = userServices.getUserbyId(user);
			for (User u : users) {
				mv.addObject("username",u.getUsername());
				mv.addObject("name",u.getName());
				mv.addObject("email",u.getEmail());
				mv.addObject("password",u.getPassword());
				mv.addObject("phone",u.getPhone());
			}
    		mv.setViewName("updateprofile");
    		return mv;
    	}
	}
	
	
//	@RequestMapping("/delete1/{id}")
//    public String deletecompany(@PathVariable(name = "id") int id)
	@GetMapping("/applynow")
	public ModelAndView applynow(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("\nHomeController.java --> applying job HTTP : GET ");
			
		
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		List<User> users = userServices.getUserbyId(username);
		
		long company_id = Long.valueOf(request.getParameter("id"));
		System.out.println(company_id);
		Company company = companyService.getCompanyById(company_id);
		if(username==null) {
    		return new ModelAndView("redirect:/loginpage");
    	}
    	else {
    		
    		AppliedJob job = new AppliedJob();
    		
    		if(users.size()!=0) {
    			job.setUserid(users.get(0).getIdno());
    		}
    		if(company!=null) {
    			job.setCompany_id(company.getId());
    			job.setCompany_name(company.getCompany_name());
    			job.setIndustry(company.getIndustry());
    			ajservice.saveEducationDetails(job);
    			
    			System.out.println("\nHomeController.java ---> Applied To Job");
    		}
    		return new ModelAndView("redirect:/appliedjobs");
//    		ModelAndView mv = new ModelAndView();
//    		mv.addObject("user", users.get(0));
//    		mv.addObject("company", company);
//    		mv.setViewName("applynow");
//    		return mv;
    	}
	}
	
	
	
	
	
	
	
	
}
