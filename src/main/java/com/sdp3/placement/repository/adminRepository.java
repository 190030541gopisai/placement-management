package com.sdp3.placement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sdp3.placement.entity.admin;

public interface adminRepository extends CrudRepository<admin,Long> {
    List<admin> findByUsernameAndPassword(String username,String password);
    
    List<admin> findByUsername(String username);
    
}
