package com.grow.agriculture.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grow.agriculture.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{

}
