package com.sdp3.placement.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.placement.entity.Company;
import com.sdp3.placement.entity.User;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Long> {
//	List<Company> findByid(Long id);
}
