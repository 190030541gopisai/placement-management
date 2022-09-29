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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sdp3.placement.entity.Company;
import com.sdp3.placement.services.CompanyService;

@Controller
public class CompanyController {

	@Autowired
	private CompanyService companyService;
	
	@GetMapping("/createcompany")
	public ModelAndView addCompany(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("\nCompanyController.java ----> Create Job Profile Form Page Http: GET");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
    	if(username==null || username.equals("admin")==false) 
    	{
    		System.out.println("\nCompanyController.java ----> You are not admin!");
			ModelAndView mav = new ModelAndView("redirect:/");
			return mav;
		}
    	System.out.println("\nCompanyController.java ---> Create Job(Company) Form ");
		return new ModelAndView("createcompany","company",new Company());
    	
	}
	
	

//	@GetMapping("")
//	public ModelAndView createCompany() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("companyhome");
//		return mv;
//	}
	
	@PostMapping("/submitCompany")
	public ModelAndView saveCompany(@ModelAttribute("company") Company company) {
		System.out.println("\nCompanyController.java ----> Saving Job Profile of a company");
		companyService.saveOrUpdate(company);
		ModelAndView mv = new ModelAndView("createcompany");
		mv.addObject("company_name", company.getCompany_name());
		return mv;
	}
	
	@GetMapping("/allcompanies")
	public ModelAndView listAllCompanies(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("\nCompanyController.java ----> All Company Job Profiles");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
    	if(username==null || username.equals("admin")==false) 
    	{
    		System.out.println("\nCompanyController.java ----> You are not admin!");
			ModelAndView mav = new ModelAndView("redirect:/");
			return mav;
		}
    	else {
		List<Company> lst = companyService.getAllCompanies();
		request.setAttribute("companies",lst);
		ModelAndView mv = new ModelAndView("ListAllCompanies");
		return mv;
    	}
	}
	@RequestMapping("/edit1/{id}")
    public ModelAndView showEditCompanyPage(@PathVariable(name = "id") int id) {
        ModelAndView mav = new ModelAndView("createcompany");
        Company Company = companyService.getCompanyById(id);
        mav.addObject("Company", Company);
        return mav;
        
    }
    @RequestMapping("/delete1/{id}")
    public String deletecompany(@PathVariable(name = "id") int id) {
    	companyService.delete(id);
        return "redirect:allcompanies/";
    }
	
	
	
	
	
//	
//    @RequestMapping(value = "/update-todo", method = RequestMethod.GET)
//    public String showUpdateTodoPage(@RequestParam long id, ModelMap model) {
//        Todo todo = todoService.getTodoById(id).get();
//        model.put("todo", todo);
//        return "todo";
//    }	
    @RequestMapping("/edit")
    public ModelAndView edit(@RequestParam long id) {
        ModelAndView mav = new ModelAndView("createcompany");
        Company Company = companyService.getCompanyById(id);
//        model.put("Company", Company);
//        return "createcompany";
        mav.addObject("Company", Company);
        return mav;
        
    }
    @RequestMapping("/delete")
    public String delete(@RequestParam long id) {
    	companyService.delete(id);
        return "redirect:allcompanies/";
    }
    
    
    
    
    
    
    
	
	
	
	
	
	@GetMapping("/job")
	public ModelAndView listAlljob(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
//		String user=(String) request.getAttribute("username");
		HttpSession session = request.getSession();
    	if(session.getAttribute("username")==null) 
    	{
			ModelAndView mav = new ModelAndView("loginpage");
			return mav;
		}
		else {
		List<Company> lst = companyService.getAllCompanies();
		request.setAttribute("companies",lst);
		ModelAndView mv = new ModelAndView("job");
		return mv;
		}
	}

}
