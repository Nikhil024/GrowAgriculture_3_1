package com.grow.agriculture.repository;

import com.grow.agriculture.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {

    List<User> findByPhoneNumber(Long phoneNumber);
}
