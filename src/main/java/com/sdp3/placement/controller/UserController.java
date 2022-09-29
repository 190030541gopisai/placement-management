package com.sdp3.placement.controller;
import java.io.IOException;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sdp3.placement.entity.User;
import com.sdp3.placement.services.UserService;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    

    @PostMapping("/loginpage")
    public ModelAndView login(@RequestParam String username, @RequestParam String password,HttpServletRequest request, HttpServletResponse response){
    	System.out.println("\nUserController.java ---> user loginpage");
    	String uname = request.getParameter("username");
    	User user = userService.findUsernameAndPassword(username,password);
        if(user!=null) {
        	HttpSession session=request.getSession();
            session.setAttribute("username", uname);
        	return new ModelAndView("redirect:/");
        }
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorMsg","Username or password is Incorrect");
        mv.setViewName("loginpage");
		return mv;
    }

    @PostMapping("/signuppage")
    private ModelAndView signup(@Valid @ModelAttribute("usersSignup") User users,BindingResult result,RedirectAttributes attr){
    	System.out.println("\nUserController.java ---> Creating Account(Sign up) for Student");
    	if(result.hasErrors()){
			attr.addFlashAttribute("errorMsg",result.getFieldError().getDefaultMessage());
			return new ModelAndView("redirect:/signuppage");
		}
		else if(userService.findUsername(users.getUsername())!=null){
			
			attr.addFlashAttribute("errorMsg","username was already exist");
			return new ModelAndView("redirect:/signuppage");
		}
		else if(userService.findEmail(users.getEmail())){
			attr.addFlashAttribute("errorMsg","email was already exist");
			return new ModelAndView("redirect:/signuppage");
		}
		else if(userService.findphone(users.getPhone())){
			attr.addFlashAttribute("errorMsg","phone number was already in use");
			return new ModelAndView("redirect:/signuppage");
		}
		userService.saveUsers(users);
		attr.addFlashAttribute("successMsg","User Registration successful");
//    	System.out.println("working");
		return new ModelAndView("redirect:/signuppage");
    }
    
    @PostMapping("/logout")
    public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		return new ModelAndView("redirect:/");
    }

	@PostMapping("/update")
	public ModelAndView update(@RequestParam String username,@RequestParam String name,@RequestParam String email,
	@RequestParam String password,@RequestParam String phone,
	HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("username");
		User user1 = new User();
		user1.setName(name);
		user1.setEmail(email);
		user1.setPassword(password);
		user1.setPhone(phone);
		userService.update(user1, user);
		return new ModelAndView("redirect:/update");
	}
	
	
	
	
	@GetMapping("/studentlist")
	public ModelAndView listAllCompanies(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("\nUserController.java ---> List all companies");
		
		HttpSession session = request.getSession();
    	if(session.getAttribute("username")==null) 
    	{
    		System.out.println("\nUserController.java ---> Return to loginpage You are not admin!");
			ModelAndView mav = new ModelAndView("loginpage");
			return mav;
		}
    	else{
    		System.out.println("\nUserController.java ----> Listing all students");
		List<User> users = userService.getallusers();
		request.setAttribute("users",users);
		ModelAndView mv = new ModelAndView("studentlist");
		return mv;
	}
	
	}
	@RequestMapping("/sdelete")
    public String delete(@RequestParam long id) {
		System.out.println("\nUserController.java ----> Student is successfully removed from website");
		userService.sdelete(id);
        return "redirect:/studentlist";
    }
}
