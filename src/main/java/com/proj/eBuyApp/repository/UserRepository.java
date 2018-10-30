package com.proj.eBuyApp.repository;

import com.proj.eBuyApp.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
  @Query("select  u from User u where  u.name=:userName")
  User findByUsername(@Param("userName") String userName);
}
