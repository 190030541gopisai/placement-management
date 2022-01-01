package com.sdp3.placement.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp3.placement.entity.admin;
import com.sdp3.placement.repository.adminRepository;

@Service
public class adminService {

    @Autowired
    private adminRepository adminRepository;

//    public List<admin> getallusers(){
//        List<admin> users = new ArrayList<admin>();
//        adminRepository.findAll().forEach(usr -> admin.add(usr));
//        return users;
//    }

    public List<admin> getUserbyId(String username){
        List<admin> users = adminRepository.findByUsername(username);
        return users;
    }

    public boolean findUsername1(String username){
        List<admin> user = adminRepository.findByUsername(username);
        if(user.isEmpty()){
            return false;
        }
        return true;
    }
  
    public boolean findUsernameAndPassword1(String username,String password){
        List<admin> user = adminRepository.findByUsernameAndPassword(username,password);
        if(user.isEmpty()){
            return false;
        }
        return true;
    }
    
//    public void saveUsers(admin user) {
//    	adminRepository.save(user);
//    }
//
//    public void update(admin admin,String username){
//    	adminRepository.save(admin);
//    }
}
