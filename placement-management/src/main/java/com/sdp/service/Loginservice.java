package com.sdp.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.entity.Login;
import com.sdp.repository.LoginRepository;

@Service
public class Loginservice {
	@Autowired
	private LoginRepository repo;
	  
	  public Login login(String username, String password) {
	  Login user = repo.findByUsernameAndPassword(username, password);
	   return user;
	  }
	  public void save(Login login) {
	        repo.save(login);
	    }
	 
	}

