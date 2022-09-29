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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sdp3.placement.entity.AppliedJob;
import com.sdp3.placement.entity.Company;
import com.sdp3.placement.entity.User;
import com.sdp3.placement.services.AppliedJobService;
import com.sdp3.placement.services.CompanyService;
import com.sdp3.placement.services.UserService;

@Controller
@RequestMapping("")
public class AppliedJobController {
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private UserService userService;
		
	@Autowired
	private AppliedJobService ajservice;
	
//	@PostMapping("/save")
//	public ModelAndView saveAppliedJob(HttpServletRequest request,HttpServletResponse response) {
////		Long company_id = Long.valueOf(request.getParameter("company_id"));
////		String student_username = request.getParameter("username");
////		
////		Company company = companyService.getCompanyById(company_id);
////		Set user = new Set();
////		
////		
////		AppliedJob aj = new AppliedJob();
////		aj.setUser(user);
////		
////		if(company!=null && user!=null) {
////			ajservice.saveEducationDetails()
////		}
//		
//		
//		
//		
//		
//		return new ModelAndView();
//	}
	
	
	
	@PostMapping("/submitapplynow")
	public ModelAndView applynow(@ModelAttribute AppliedJob job,HttpServletRequest req,HttpServletResponse res) {
		System.out.println(req.getParameter("sid"));
		return new ModelAndView("redirect:/");
	}
	
//	listing applied jobs
	@GetMapping("/appliedjobs")
	public ModelAndView listAllJobsApplied(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("\nAppliedJobController.java ----> All Company Job Profiles");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
    	if(username==null) 
    	{
    		System.out.println("\nAppliedJobController.java ----> User Not Logged in to List applied Job Profiles");
			ModelAndView mav = new ModelAndView("redirect:/loginpage");
			return mav;
		}
    	else {
    		List<User> users = userService.getUserbyId(username);
    		User user = users.get(0);
    		
		List<AppliedJob> lst = ajservice.getAllJobsAppliedByUserId(user.getIdno());
		System.out.println(lst);
		request.setAttribute("appliedjobs",lst);
		ModelAndView mv = new ModelAndView("ListAllAppliedJobs");
		return mv;
    	}
	}
//	application delete
	@RequestMapping("/appliedjobdelete")
    public String delete(@RequestParam Long id) {
		System.out.println("\nUserController.java ----> Student is successfully removed from website");
		ajservice.appliedjobdelete(id);
        return "redirect:/appliedjobs";
    }
	
}
