package com.schoolsoftware.repository;

import com.schoolsoftware.entity.UserRoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRoleRepository extends JpaRepository<UserRoleEntity, Long> {

    Optional<UserRoleEntity> findByUserRoleName(String userRoleName);

    boolean existsByUserRoleName(String userRoleName);
}