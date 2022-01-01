package com.sdp3.placement.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp3.placement.entity.User;
import com.sdp3.placement.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> getallusers(){
        List<User> users = new ArrayList<User>();
        userRepository.findAll().forEach(usr -> users.add(usr));
        return users;
    }

    public List<User> getUserbyId(String username){
        List<User> users = userRepository.findByUsername(username);
        return users;
    }
    
    public List<User> getUserbyName(String username){
        List<User> users = userRepository.findByUsername(username);
        return users;
    }
    

    public User findUsername(String username){
        List<User> user = userRepository.findByUsername(username);
        if(user.isEmpty()){
            return null;
        }
        return user.get(0);
    }
//    public User getByUsername(String username) {
//    	List<User> user = userRepository.findByUsername(username);
//    	return user.get(0);
//    }
    public boolean findEmail(String email){
        List<User> user = userRepository.findByEmail(email);
        if(user.isEmpty()){
            return false;
        }
        return true;
    }
    public boolean findphone(String phone){
        List<User> user = userRepository.findByPhone(phone);
        if(user.isEmpty()){
            return false;
        }
        return true;
    }
    public User findUsernameAndPassword(String username,String password){
        List<User> user = userRepository.findByUsernameAndPassword(username,password);
        if(user.isEmpty()){
            return null;
        }
        return user.get(0);
    }
    
    public void saveUsers(User user) {
    	userRepository.save(user);
    }

    public void sdelete(long id) {
    	userRepository.deleteById(id);
	}
    
    
    public void update(User user,String username){
        userRepository.save(user);
    }
}
