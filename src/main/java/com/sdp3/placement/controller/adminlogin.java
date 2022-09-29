package com.sdp3.placement.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sdp3.placement.entity.admin;
import com.sdp3.placement.services.adminService;
@Controller
public class adminlogin {
	@Autowired
    private adminService adminService;
	
	@RequestMapping(value = "/adminhome", method = RequestMethod.GET)
	   public String welcome(HttpServletRequest request) {
		String username = (String) request.getSession().getAttribute("username");
		  if(username!=null && username.equals("admin")==true) {
			  System.out.println("\nadminlogin.java  ---> Admin Already Logged in");
			  return "adminhome";
		  	}
		  System.out.println("\nadminlogin.java ---> Invalid Login Try to admin");
		  return "redirect:/";
	      
	   }
//	@GetMapping("/adminlogin")
//    public ModelAndView admin(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
//    	HttpSession session = request.getSession();
//    	if(session.getAttribute("username")!=null) {
//    		//session.getAttribute("username")=="admin"
//    		return new ModelAndView("redirect:/adminhome");
//    	}
//    	else {
//    		ModelAndView mView = new ModelAndView();
//    		mView.setViewName("admin");
//    		return mView;
//    	}
//        
//    }
	
	 @GetMapping("/adminlogin")
	    public ModelAndView admin(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		 	System.out.println("\nadminlogin.java ----> Admin Login Page using Http : GET");
	    	HttpSession session = request.getSession();
	    	if(session.getAttribute("username")!=null) {
	    		//session.getAttribute("username")=="admin"
	    		return new ModelAndView("redirect:/adminhome");
	    	}
	    	else {
	    		System.out.println("\nadminlogin.java ----> Re Display Admin IRP Login Page Because admin is logged out");
	    		ModelAndView mView = new ModelAndView();
	    		mView.setViewName("admin"); //admin login page
	    		return mView;
	    	}
	        
	    }
    @PostMapping("/adminlogin")
    public ModelAndView admin(@RequestParam String username, @RequestParam String password,HttpServletRequest request, HttpServletResponse response){
    	System.out.println("\nadminlogin.java ---> Admin Login Page using Http : POST");
    	String uname = request.getParameter("username");
//    	boolean check = adminService.findUsernameAndPassword1(username,password);
//        if(check) {
    	if(username.equalsIgnoreCase("admin") && password.equals("password")) {
    		System.out.println("\nadminlogin.java -----> Admin Login Success");
        	HttpSession session=request.getSession();
            session.setAttribute("username", uname);
        	return new ModelAndView("redirect:/adminhome");
        }
       
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorMsg","Username or password is Incorrect");
        mv.setViewName("admin");
		return mv;
    }

    
    @PostMapping("/adminlogout")
    public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		System.out.println("adminlogin.java --> Admin Successfully log out");
		return new ModelAndView("redirect:/");
    }






























}
