package com.grow.agriculture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grow.agriculture.model.OTPMessage;

@Repository
public interface OTPRepository extends JpaRepository<OTPMessage, Integer> {
	
}
