package com.sdp.controller;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.entity.Login;
import com.sdp.service.Loginservice;
 
 
 
 
@Controller

public class Logincontroller {

	@Autowired
    private Loginservice userService;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String home() {
	      return "AfterLoginWelcomePage";
	   }
	@RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
	   public String profile() {
	      return "profile";
	   }
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	   public String about(HttpServletRequest request) {
	      return "about";
	   }
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus(HttpServletRequest request){
		return "contactus";
	}
	                         
    @GetMapping("/login")
    public ModelAndView login() {
     ModelAndView mav = new ModelAndView("login");
        mav.addObject("user", new Login());
        return mav;
    }
    
    @GetMapping("/signup")
    public String add(Model model) {
        model.addAttribute("login", new Login());
        return "signup";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveStudent(@ModelAttribute("login") Login login) {
    	userService.save(login);
        return "redirect:/";
    }
    
    @PostMapping("/login")
    public String login(@ModelAttribute("user") Login user ) {
    
     Login oauthUser = userService.login(user.getUsername(), user.getPassword());
    
 
     System.out.print(oauthUser);
     if(Objects.nonNull(oauthUser))
     {
  
     return "redirect:/home";
    
    
     } else {
     return "redirect:/login";
    
     }
 
}
    
    @RequestMapping(value = {"/logout"}, method = RequestMethod.POST)
    public String logoutDo(HttpServletRequest request,HttpServletResponse response)
    {
    
  
        return "redirect:/login";
    }
 
}