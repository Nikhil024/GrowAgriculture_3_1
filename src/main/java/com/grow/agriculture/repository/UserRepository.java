package com.grow.agriculture.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grow.agriculture.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{

	Optional<User> findByPhoneNumber(Long phoneNumber);
}
