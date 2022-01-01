package com.sdp3.placement.repository;

import com.sdp3.placement.entity.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User,Long> {
    List<User> findByUsernameAndPassword(String username,String password);
    
    User getByUsername(String username);
    List<User> findByUsername(String username);
    List<User> findByEmail(String email);
    List<User> findByPhone(String phone);
}
