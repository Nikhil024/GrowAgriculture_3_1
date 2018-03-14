package com.grow.agriculture.repository;

import com.grow.agriculture.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User findByPhoneNumber(Long phoneNumber);
}
